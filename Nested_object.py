## Challenge 3 ##

# We have a nested object, we would like a function that you pass in the object and a key and get back the value. How this is implemented is up to you.
##
# Example Inputs
# object = {“a”:{“b”:{“c”:”d”}}}
# key = a/b/c
##
# object = {“x”:{“y”:{“z”:”a”}}}
# key = x/y/z
# value = a



def get_key(object):
    keys = list(object)
    if len(keys) == 1:
        return keys[0]
    else:
        raise Exception('Empty dictionary or multiple key found')
        

def get_nested_value(object, key, flag=False):
    #print(object, key, flag)
    if type(object) is not dict and flag==True:
        return None
    if (flag or (key in object.keys())) :
        if type(object[key]) is dict:
            return get_nested_value(object[key], get_key(object[key]), True)
        else:
            return object[get_key(object)]
    else:
        nested_key = get_key(object)
        return get_nested_value(object[nested_key], key, False)

object = {'x': {'y': {'z': 'a'}}}
#object = {'x':'a','y':'b'}
#object = {}
#object = {'x': 'a'}
key_value = get_nested_value(object, 'x')
print(key_value)

    
 