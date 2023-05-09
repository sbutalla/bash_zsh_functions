##################################
##################################
# Functions for file conversions #
##################################
##################################

function pdf_to_png () {
    local pdf="${1}"
    local png=${pdf%.*}".png"
   
    convert -density 800 "${pdf}" -quality 100 "${png}"
}


function jpg_to_png () {
    local jpg="${1}"
    local png=${jpeg%.*}".png"
   
    convert -density 800 "${jpg}" -quality 100 "${png}"
}


function mov_to_gif () {
    local mov="${1}"
    local gif=${mov%.*}".gif"
    local optgif=${mov%.*}"_optimized.gif"

    ffmpeg -i ${mov} -pix_fmt rgb8 -r 7 ${gif}
    gifsicle -O3 ${gif} -o ${optgif}
}



#################################
######### Miscellaneous #########
#################################

function mkcd () {
    mkdir ${1}
    cd ${1} 
}
