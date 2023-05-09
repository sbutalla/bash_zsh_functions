##########################################
##########################################
# Functions for logging output.          #
##########################################
##########################################

##########################################
# Helper function to set the name of the #
# log file.                              #
# Global variables:                      #
#   LOGFILE                              #
# Local variables:                       #
#   None                                 #
# Arguments:                             #
#   ${1} Name of the log file.           #
# Output:                                #
#   Exports the name of the log file if  #
#   not previously exported.             #
##########################################
function setlogname () {
    if [[ $# == 1  ]]; then
     export LOGFILE="${1}"   
    else
     export LOGFILE="command.log"
    fi
}

##########################################
# Send output of a process to a common   #
# log file.                              #
# Global variables:                      #
#   LOGFILE                              #
# Local variables:                       #
#   LOGFILE (if env. var. not set)       #
#   header: the border of the process    #
#           "header."                    #
# Arguments:                             #
#   Process to be logged.                #
# Output:                                #
#   Sends output of a process to a       #
#   common log file, including the       #
#   timestamp of the start of the        #
#   process, as well as the process      #
#   information.                         #
##########################################
function cmd_log () {
    local header="####################################################\n"
    # check if log file has been named
    if [ -z "${LOGFILE}" ]; then
        local LOGFILE="command.log"
    fi

    {
        printf ${header}
        printf "Command executed: %s at $(date '+%Y_%m_%d_%H-%M-%S')\n\n" "$*"
        printf ${header}
        "$@"
        printf "\n"
    } 2>&1 | tee -a ./"${LOGFILE}"
}


##########################################
# Send output of a process to a unique   #
# log file.                              #
# Global variables:                      #
#   LOGFILE                              #
# Local variables:                       #
#   header: the border of the process    #
#           "header."                    #
# Arguments:                             #
#   Process to be logged.                #
# Output:                                #
#   Sends output of a process to a       #
#   common log file, including the       #
#   timestamp of the start of the        #
#   process, as well as the process      #
#   information.                         #
##########################################
function cmd_log_d () {
    local header="####################################################\n"
    
    { 
        printf ${header}
        printf "Command executed: %s\n\n" "$*"
        printf ${header}
        "$@"
        printf "\n"
     } 2>&1 | tee ./"$(date '+%Y_%m_%d_%H-%M-%S')".log
}


