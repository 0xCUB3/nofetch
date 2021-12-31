#!/bin/sh
# v0.0.1 - Copywright 2020 OxCUBE - All Rights Reserved
# NOTICE: All redistributions of the following code must explicitly state what was modified by the end user
# and the name '0xCUBE' must be mentioned in the credits of the public repository

# Variables used in the script
should_run=true
type=regular
bold=$(tput bold)
normal=$(tput sgr0)


# Arbitrary colors to be used for text color. Default is used if not put as a command-line argument.
red='\033[38;5;1m'
green='\033[38;5;2m'
yellow='\033[38;5;3m'
blue='\033[38;5;4m'
magenta='\033[38;5;5m'
cyan='\033[38;5;6m'

# Sets the color to be used in the output via a command-line argument
set_color () {
    if [ "$1" = 'red' ]; then
        color=$red
    elif [ "$1" = 'green' ]; then
        color=$green
    elif [ "$1" = 'yellow' ]; then
        color=$yellow
    elif [ "$1" = 'blue' ]; then
        color=$blue
    elif [ "$1" = 'magenta' ]; then
        color=$magenta
    elif [ "$1" = 'cyan' ]; then
        color=$cyan
    else
        should_run=false
        echo "Invalid color. Please select a color from: (red, green, yellow, blue, magenta, cyan)."
        return 0
    fi
}

# Sets what text will be outputted via a command-line argument
set_type () {
    if [ "$i" = '--regular' ]; then
        type=regular
    elif [ "$i" = '--lttstore' ] ||  [ "$i" = '--lttstore.com' ]; then
        type=lttstore
    elif [ "$i" = '--flex' ]; then
        type=flex
    elif [ "$i" = '--help' ]; then
        type=help
    fi
}

# Iterate through all command line arguments and see if any of them are valid
x=0
for i
do
    if [ "$x" -gt 1 ]; then echo "Too many arguments passed (max is 2; 1 for color (i.e. green), 1 for type (i.e. regular))" && exit
    elif [ "$(echo "$i" | cut -c1-2)" = "--" ]; then  # POSIX sh doesn't have a '=~' operator so did this instead
        set_type "$i"
        x=$((x + 1))
    else
        set_color "$i"
        x=$((x + 1))
    fi
done

# Default nofetch output
if [ "$type" = "regular" ] && [ "$should_run" = "true" ]; then
    clear
    echo """ ${color}
 __      _    _______    _______   _______   _________    ________   _       _
| | \   | |  / _____ \  |  _____| |  _____| |___   ___|  / _______| | |     | |
| |\ \  | | | |     | | | |___    | |___        | |     | |         | |_____| |
| | \ \ | | | |     | | |  ___|   |  ___|       | |     | |         |  _____  |
| |  \ \| | | |     | | | |       | |           | |     | |         | |     | |
| |   \ | | | |_____| | | |       | |_____      | |     | |_______  | |     | |
|_|    \__|  \_______/  |_|       |_______|     |_|      \________| |_|     |_|
"""

# LTTstore.com nofetch output
elif [ "$type" = "lttstore" ] && [ "$should_run" = "true" ]; then
clear
    echo """ ${color}
 _         _________   _________    ________   _________    _______    _______    _______         ________    _______    _____________
| |       |___   ___| |___   ___|  /  ______| |___   ___|  / _____ \  |  ____  \ |  _____|       / _______|  / _____ \  |  ___   ___  |
| |           | |         | |     |  |____        | |     | |     | | | |____| | | |___         | |         | |     | | | |   | |   | |
| |           | |         | |      \______ \      | |     | |     | | | _______/ |  ___|        | |         | |     | | | |   | |   | |
| |           | |         | |             | |     | |     | |     | | | | \ \    | |            | |         | |     | | | |   | |   | |
| |______     | |         | |      _______| |     | |     | |_____| | | |  \ \   | |_____    _  | |_______  | |_____| | | |   | |   | |
|________|    |_|         |_|     |________/      |_|      \_______/  |_|   \_\  |_______|  |_|  \________|  \_______/  |_|   |_|   |_|
"""

# Flex output to flex the hardware you wish you had
elif [ "$type" = "flex" ] && [ "$should_run" = "true" ]; then
clear
    echo """ ${color}
${bold}${red}OS: ${normal}AmogOS
${bold}${red}Host: ${normal}Grandma's Computer
${bold}${red}Uptime: ${normal}69 years, 420 days
${bold}${red}CPU: ${normal}AMD Ryzen Threadripper 6990X (420) @ 6.90Ghz
${bold}${red}GPU: ${normal}NVIDIA RTX 6090 1024 GB
${bold}${red}Memory: ${normal}0.0000001MiB / 4300800MiB
"""

# Help...obviously
elif [ "$type" = "help" ] && [ "$should_run" = "true" ]; then
clear
    echo """ ${color}
nofetch is the best fetch script ever. Don't argue.
You downloaded it. It's yours now. Here's help if you need it ;)

Syntax: nofetch --OPTION COLOR
Options:
    Colors:
        red green blue yellow magenta cyan

    Options:
        --regular     Standard nofetch output
        --lttstore    Prints 'lttstore.com' in nofetch fashion
        --flex        Lets you flex on your friends because I know the skids want that
        --help        Prints this message (but I guess you already figured that out)
"""
fi