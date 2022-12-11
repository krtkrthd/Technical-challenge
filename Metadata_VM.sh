## Challenge 2 ###
# We need to write code that will query the meta data of an instance within AWS or Azure or GCP and provide a json formatted output. 

# Approach 1 
# Retrieving the Azure VM resource metadata from outside the VM

Azure_VM_Metadata(){
az resource show -g $1 -n $2 --resource-type "Microsoft.Compute/virtualMachines" --query "$3" -o json
}
data $1 $2 $3

### ./Metadata_VM.sh Test-RG test-vm properties.storageProfile

# Approach 2 
# Retrieving the Azure VM instance metadata from inside the VM

VM_Instance_Metadata(){
    # command to fetch instance metadata
    curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance/$1?api-version=2021-02-01" | jq
}
### ./Metadata_VM.sh /network/interface/



# az vm run-command invoke \
#   --resource-group 'Test-RG' \
#   --name 'test-vm' \
#   --command-id 'RunShellScript' \
#   --scripts /home/azureuser/test/metadata.sh network/interface/