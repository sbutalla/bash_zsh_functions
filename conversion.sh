##########################################
##########################################
#     Functions for file conversions     #
##########################################
##########################################

##########################################
# Converts .pdf to .png                  #
# Global variables:                      #
#   None                                 #
# Local variables:                       #
#   pdf: Full file name of the .pdf file #
#   png: Full file name of the .png file #
# Arguments:                             #
#   $1:  The file name of the .pdf       #
# Output:                                #
#   <input_pdf_file>.png                 #
##########################################
function pdf_to_png () {
    local pdf="${1}"
    local png=${pdf%.*}".png"
   
    convert -density 800 "${pdf}" -quality 100 "${png}"
}


##########################################
# Converts .jpg to .png                  #
# Global variables:                      #
#   None                                 #
# Local variables:                       #
#   jpg: Full file name of the .jpg file #
#   png: Full file name of the .png file #
# Arguments:                             #
#   $1:  The file name of the .jpg       #
# Output:                                #
#   <input_jpg_file>.png                 #
##########################################
function jpg_to_png () {
    local jpg="${1}"
    local png=${jpeg%.*}".png"
   
    convert -density 800 "${jpg}" -quality 100 "${png}"
}


##########################################
# Converts .mov to .gif and optimizes    #
# .gif.									 #
# Global variables:                      #
#   None                                 #
# Local variables:                       #
#   jpg:    Full file name of the .jpg   #
#           file 				         #
#   gif:    Full file name of the .gif   #
#           file                         #
#   optgif: Full name of the optimized   #
#           gif                          #
# Arguments:                             #
#   $1:  The file name of the .mov       #
# Output:                                #
#   <input_mov_file>.gif                 #
#   <input_mov_file>_optimized.gif       #
##########################################
function mov_to_gif () {
    local mov="${1}"
    local gif=${mov%.*}".gif"
    local optgif=${mov%.*}"_optimized.gif"

    ffmpeg -i ${mov} -pix_fmt rgb8 -r 7 ${gif}
    gifsicle -O3 ${gif} -o ${optgif}
}


