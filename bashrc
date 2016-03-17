#!/bin/bash

echo This is going to be a good day!

# Custom aliases
alias l='ls -a'
alias ll='ls -l'
alias la='ls -la'

# The BOUT-dev
export PYTHONPATH=$HOME/BOUT-dev/tools/pylib/:$PYTHONPATH
export PYTHONPATH=$HOME/Documents/Utdanning/Danmarks_Tekniske_Universitet/Ph.D./BOUT-projects/cyto/:$PYTHONPATH

# PETSc
export PETSC_DIR=$HOME/petsc-3.4.5

# For using vim as a editor in svn
export SVN_EDITOR=vim

# Problems with /lib/libgfortran.so.3: version `GFORTRAN_1.4' not found
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libgfortran.so.3

# added by Anaconda3 2.1.0 installer
export PATH="$HOME/anaconda3/bin:$PATH"
# Allow tab completion in conda
eval "$(register-python-argcomplete conda)"
