##########################################
##########################################
# Environment variable definitions and   #
# functions for colorized output         #
##########################################
##########################################

##########################################
# Color definitions (env. vars.)         #
##########################################
export RED=$(tput setaf 9)
export CRIMSON=$(tput setaf 1)
export GREEN=$(tput setaf 10)
export FOREST=$(tput setaf 2)
export YELLOW=$(tput setaf 11)
export GOLD=$(tput setaf 3)
export ORANGE=$(tput setaf 166)
export BLUE=$(tput setaf 27)
export PURPLE=$(tput setaf 57)
export PLUM=$(tput setaf 4)
export PINK=$(tput setaf 13)  
export FUCHSIA=$(tput setaf 5)
export CYAN=$(tput setaf 14)  
export AQUAMARINE=$(tput setaf 6)
export LTGREY=$(tput setaf 253)
export GREY=$(tput setaf 244)
export DRKGREY=$(tput setaf 236)
export WHITE=$(tput setaf 255)
export ENDC=$(tput sgr0)
export ENDCOLOR=ENDC 

##########################################
# Helper function to list all color      #
# definitions.                           #
# Global variables:                      #
#   RED, CRIMSON, GREEN, FOREST, YELLOW, #
#   GOLD, ORANGE, PURPLE, PLUM, PINK,    #
#   FUCHSIA, CYAN, AQUAMARINE, LTGREY    #
#   GREY, DRKGREY, WHITE                 #
# Local variables:                       #
#   None                                 #
# Arguments:                             #
#   None                                 #
# Output:                                #
#   Displays all defined colors to std.  #
#   out.                                 #
##########################################
function list_colors { 
	echo
    echo "Defined colors:"
    echo "${RED}RED${ENDC}"
    echo "${CRIMSON}CRIMSON${ENDC}"
    echo "${GREEN}GREEN${ENDC}"
    echo "${FOREST}FOREST${ENDC}"
    echo "${YELLOW}YELLOW${ENDC}"
    echo "${GOLD}GOLD${ENDC}"
    echo "${ORANGE}ORANGE${ENDC}"
    echo "${BLUE}BLUE${ENDC}"
    echo "${PURPLE}PURPLE${ENDC}"
    echo "${PLUM}PLUM${ENDC}"
    echo "${PINK}PINK${ENDC}"
    echo "${FUCHSIA}FUCHSIA${ENDC}"
    echo "${CYAN}CYAN${ENDC}"
    echo "${AQUAMARINE}AQUAMARINE${ENDC}"
    echo "${LTGREY}LTGREY${ENDC}"
    echo "${GREY}GREY${ENDC}"
    echo "${DRKGREY}DRKGREY${ENDC}"
    echo "${WHITE}WHITE${ENDC}"
    echo "ENDCOLOR or ENDC to return to default color"
 	echo 
 	echo "${GREEN}For more colors, run the function list_all_colors, e.g.,${ENDC}"
 	echo "${YELLOW}$ list_all_colors${ENDC}"
}

##########################################
# Helper function to list all available  #
# colors and usage.                      #
# Global variables:                      #
#   GREEN, YELLOW, ENDC                  #
# Local variables:                       #
#   None                                 #
# Arguments:                             #
#   None                                 #
# Output:                                #
#  Displays all 256 tput setaf colors to #
#  std. out.                             #
##########################################
function list_all_colors {
	for ii in {0..255}; do

	    color=$(tput setaf ${ii})
	    echo "${color}Color ${ii}"
        #sleep 0.2
	done      

    echo
    echo "${GREEN}Usage of the color codes listed above:${ENDC}"
    echo "${YELLOW} VARIABLE=\$(tput setaf [color code])"
}


