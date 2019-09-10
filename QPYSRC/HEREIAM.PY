#!/QOpenSys/pkgs/bin/python3                    
"""
================================
LEAMACHINE - showing Python env
================================


"""
print(__doc__)

# Author: Andrea Ribuoli <andrea dot ribuoli at yahoo dot com>

import os                                       
for param in os.environ.keys():                 
    print("%23s %s" % (param, os.environ[param])) 
