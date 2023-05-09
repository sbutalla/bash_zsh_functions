##########################################
##########################################
# Sundry functions                       #
##########################################
##########################################

##########################################
# Set alias for JupyterLab				 #
##########################################
alias jl='jupyter-lab'


##########################################
# Change into directory and start        #
# JupyterLab.						     #
# Global variables:                      #
#   None                                 #
# Local variables                        #
#   None								 #
# Arguments:                             #
#   $1: target directory name            #
# Output:                                #
#   JupyterLab session launched.         #
##########################################
function startjl () { cd ${1}; jl; }


##########################################
# Make a new directory and change into   #
# it.									 #
# Global variables:                      #
#   None                                 #
# Local variables                        #
#   None								 #
# Arguments:                             #
#   $1: target directory name            #
# Output:                                #
#   None						         #
##########################################
function mkcd () {
    mkdir ${1}
    cd ${1} 
}
