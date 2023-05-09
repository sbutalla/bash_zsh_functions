##########################################
##########################################
# Environment variable definitions and   #
# functions for colorized output         #
##########################################
##########################################

##########################################
# Color definitions                      #
##########################################
RED=$(tput setaf 9)
CRIMSON=$(tput setaf 1)
GREEN=$(tput setaf 10)
FOREST=$(tput setaf 2)
YELLOW=$(tput setaf 11)
GOLD=$(tput setaf 3)
ORANGE=$(tput setaf 166)
BLUE=$(tput setaf 27)
PURPLE=$(tput setaf 57)
PLUM=$(tput setaf 4)
PINK=$(tput setaf 13)  
FUCHSIA=$(tput setaf 5)
CYAN=$(tput setaf 14)  
AQUAMARINE=$(tput setaf 6)
LTGREY=$(tput setaf 253)
GREY=$(tput setaf 244)
DRKGREY=$(tput setaf 236)
WHITE=$(tput setaf 255)
ENDC=$(tput sgr0)
ENDCOLOR=ENDC 

##########################################
# Helper function to list all color      #
# definitions.                           #
# Global variables:                      #
#   RED, CRIMSON, GREEN, FOREST, YELLOW, #
#   GOLD, ORANGE, PURPLE, PLUM, PINK,    #
#   FUCHSIA, CYAN, AQUAMARINE, LTGREY    #
#   GREY, DRKGREY, WHITE                 #
# Arguments:                             #
#   None                                 #
# Output:                                #
# Displays all defined colors to std.    #
# out.                                   #
##########################################
function list_colors { 
	echo
    echo "\e[4mDefined colors:\e[0m"
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
    echo "ENDCOLOR or ENDC to return to default color\n"
    echo "${GREEN}To use in an echo or printf statement, use a parameter"
    echo "expansion of the color variables within the double quotes:${ENDC}"
    echo "echo \"\${RED}${RED}This is red${ENDC}\${ENDC}\"\n"
 	echo "${GREEN}For more colors, run the function list_all_colors, e.g.,${ENDC}"
 	echo "${YELLOW}$ list_all_colors${ENDC}"
}

##########################################
# Helper function to list all available  #
# colors and usage                       #
# Global variables:                      #
#   RED, CRIMSON, GREEN, FOREST, YELLOW, #
#   GOLD, ORANGE, PURPLE, PLUM, PINK,    #
#   FUCHSIA, CYAN, AQUAMARINE, LTGREY    #
#   GREY, DRKGREY, WHITE                 #
# Arguments:                             #
#   None                                 #
# Output:                                #
# Displays all 256 tput setaf colors to  #
# std. out.                              #
##########################################
function list_all_colors {
	for ii in {0..255}; do

	    color=$(tput setaf ${ii})
	    echo "${color}Color ${ii}"
        sleep 0.2
	done      

    echo
    echo "${GREEN}Usage of the color codes listed above:${ENDC}"
    echo "${YELLOW} VARIABLE=\$(tput setaf [color code])"
}


