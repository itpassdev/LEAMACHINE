#!/QOpenSys/pkgs/bin/python3                    
"""
================================
LEAMACHINE - showing Python env
================================


"""
print(__doc__)

# Author: Andrea Ribuoli <andrea dot ribuoli at yahoo dot com>
# License: BSD 3 clause

import os                                       
for param in os.environ.keys():                 
    print("%20s %s" % (param,os.environ[param])) 
