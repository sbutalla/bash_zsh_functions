##########################################
##########################################
#         Compression functions          #
##########################################
##########################################

##########################################
# Archive and compress using xz          #
# Global variables:                      #
#   None                                 #
# Local variables:                       #
#   dir:   The source directory to be    #
#		   archived and compressed       #
#   fname: The name of the output        #
#          compressed archive            #     
# Arguments:                             #
#   $1: Input diretory or file name      #
# Output:                                #
#   Displays all defined colors to std.  #
#   out.                                 #
##########################################
function tarxz () {
    local dir="${1}"
    local fname=${PDF%.*}".tar.xz"
    tar -cJf ${fname} ${dir}  

}


##########################################
# Archive and compress using zstd. Works #
# for both OpenBSD and GNU               #
# distributions.                         #
# Global variables:                      #
#   None                                 #
# Local variables:                       #
#   dir:   The source directory to be    #
#		   archived and compressed       #
#   fname: The name of the output        #
#          compressed archive            #     
# Arguments:                             #
#   $1: Input directory or file name     #
# Output:                                #
#   Displays all defined colors to std.  #
#   out.                                 #
##########################################

function tarzst () {
    local dir="${1}"
    local fname=${dir%.*}".tar.zst"
    tar --zstd -cf ${fname} ${dir}

}


##########################################
# Archive and compress using zstd.       #
# ONLY WORKS FOR GNU DISTRIBUTIONS.      #
# Global variables:                      #
#   None                                 #
# Local variables:                       #
#   dir:   The source directory to be    #
#		   archived and compressed       #
#   fname: The name of the output        #
#          compressed archive            #     
# Arguments:                             #
#   $1: Input directory or file name     #
# Output:                                #
#   Displays all defined colors to std.  #
#   out.                                 #
##########################################
#function tarzst () {
#    local dir="${1}"
#    local fname=${dir%.*}".tar.zst"
#    tar -I 'zstd -19 T0' -cf ${fname} ${dir}  
#
#}