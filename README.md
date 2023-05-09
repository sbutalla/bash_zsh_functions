# bash_zsh_functions
This is a collection of Bash/ZShell "libraries" which economize some of my day-to-day processes.

## Installation instructions
1. Clone the repository to your home directory:
```
$ git clone https://github.com/sbutalla/bash_zsh_functions/
$ mv bash_zsh_functions .functions # hide the directory
```
2. Edit your `.bashrc` or `.zshrc` file with the following lines:
```
for file in ~/.functions/*; do
    source ${file}
done
```
This loop sources all of the files in this repository so that fhe functions will be available for each shell session.

3. Source your `rc` file for the changes to take effect
```
$ source ~/.bashrc
# OR
$ source ~/.zshrc
```

# Usage

You can either use these functions directly from the command line or use them in a script. For the latter, you'll need to source the appropriate file at the beginning of the script; e.g., 

```
#!/bin/zsh

source ~/.functions/colors.sh
source ~/.functions/logging.sh

.
.
.
```

## Archiving and compression (`compression.sh`)
### `tarxz`
Archives and compresses using `xz`.
```
$ tarxz path/to/dir
# OR
$ tarxz path/to/file.file
```

### `tarzst`
Archives and compresses using `zstd`.
```
$ tarzst path/to/dir
# OR
$ tarzst path/to/file.file
```
**Note that there are two functions in this file that share the same name. One is for OpenBSD (and compatible with GNU distributions) and the other is for GNU distributions only.**

## File format conversions (`conversion.sh`)

### `pdf_to_png`
Converts .pdf to .png.
```
$ pdf_to_png name_of_pdf.pdf
```

### `jpg_to_png`
Converts .jpg to .png.
```
$ jpg_to_png name_of_jpg.jpg
```

### `mov_to_gif`
Converts .mov to .gif and optimizes the .gif.
```
$ mov_to_gif name_of_gif.mov
```

## Output logging (`logging.sh`)

### `setlogname`
Helper function for setting the `LOGFILE` environment variable (if not already defined in your shell `rc`/profile, or you can't remember the name of the environment variable).
```
$ setlogname mylog.log
```

### `cmd_log`
Log processes to a common log file.
```
$ cmd_log my_process -my --process 
```

### `cmd_log_d`
Log processes to a uniquely named log file.
```
$ cmd_log_d my_process -my --process 
```

## Sundry (`sundry.sh`)

### `startjl`
Change into a directory and launch JupyterLab.
```
$ startjl /path/to/dir
```

### `mkcd`
Make a directory and change into it.
```
$ mkcd /path/to/dir
```

## Colorize terminal text (`colors.sh`)

### `list_colors`
Lists the defined colors set in the `colors.sh` file.
```
$ list_colors
```

### `list_all_colors`
Lists all of the 256 colors and their respective color codes when using `tput setaf`.
```
$ list_all_colors
```

