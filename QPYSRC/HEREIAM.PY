#!/QOpenSys/pkgs/bin/python3                    
"""
=================================
  HereIAm - mostra informazioni
=================================

Può essere arricchito di altre informazioni raccolte interrogando il sistema via Python...
"""
print(__doc__)

# Author: Andrea Ribuoli <andrea dot ribuoli at yahoo dot com>

import os                                       
for param in os.environ.keys():                 
    print("%30s %s" % (param, os.environ[param])) 
