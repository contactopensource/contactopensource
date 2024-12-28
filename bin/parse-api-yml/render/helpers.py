
def sh():
    return "#!/bin/sh\nset -euf\n\n"

def replace_start(str, old, new):
    if str.startswith(old):
        return new + str[len(old):] 
    return str

def replace_end(str, old, new):
    if str.endswith(old):
        return str[:-len(old)] + new
    return str
