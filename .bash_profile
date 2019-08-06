###########################################################

# Colors

# Reset
off="\[\e[0m\]"       		# Text Reset

# Regular Colors
black="\[\e[0;30m\]"        # Black
red="\[\e[0;31m\]"          # Red
green="\[\e[0;32m\]"        # Green
yellow="\[\e[0;33m\]"       # Yellow
blue="\[\e[0;34m\]"         # Blue
purple="\[\e[0;35m\]"       # Purple
cyan="\[\e[0;36m\]"         # Cyan
white="\[\e[0;37m\]"        # White

# Bold
Black="\[\e[1;30m\]"       # Black
Red="\[\e[1;31m\]"         # Red
Green="\[\e[1;32m\]"       # Green
Yellow="\[\e[1;33m\]"      # Yellow
Blue="\[\e[1;34m\]"        # Blue
Purple="\[\e[1;35m\]"      # Purple
Cyan="\[\e[1;36m\]"        # Cyan
White="\[\e[1;37m\]"       # White

# Underline
_black_="\[\e[4;30m\]"       # Black
_red_="\[\e[4;31m\]"         # Red
_green_="\[\e[4;32m\]"       # Green
_yellow_="\[\e[4;33m\]"      # Yellow
_blue_="\[\e[4;34m\]"        # Blue
_purple_="\[\e[4;35m\]"      # Purple
_cyan_="\[\e[4;36m\]"        # Cyan
_white_="\[\e[4;37m\]"       # White

# Background
on_black="\[\e[0;40m\]"       # Black
on_red="\[\e[0;41m\]"         # Red
on_green="\[\e[0;42m\]"       # Green
on_yellow="\[\e[0;43m\]"      # Yellow
on_blue="\[\e[0;44m\]"        # Blue
on_purple="\[\e[0;45m\]"      # Purple
on_cyan="\[\e[0;46m\]"        # Cyan
on_white="\[\e[0;47m\]"       # White

# High Intensty
bLACK="\[\e[0;90m\]"       # Black
rED="\[\e[0;91m\]"         # Red
gREEN="\[\e[0;92m\]"       # Green
yELLOW="\[\e[0;93m\]"      # Yellow
bLUE="\[\e[0;94m\]"        # Blue
pURPLE="\[\e[0;95m\]"      # Purple
cYAN="\[\e[0;96m\]"        # Cyan
wHITE="\[\e[0;97m\]"       # White

# Bold High Intensty
BLACK="\[\e[1;90m\]"      # Black
RED="\[\e[1;91m\]"        # Red
GREEN="\[\e[1;92m\]"      # Green
YELLOW="\[\e[1;93m\]"     # Yellow
YELLOW="\[\e[1;93m\]"     # Yellow
BLUE="\[\e[1;94m\]"       # Blue
PURPLE="\[\e[1;95m\]"     # Purple
CYAN="\[\e[1;96m\]"       # Cyan
WHITE="\[\e[1;97m\]"      # White

# High Intensty backgrounds
on_BLACK="\[\e[0;100m\]"   # Black
on_RED="\[\e[0;101m\]"     # Red
on_GREEN="\[\e[0;102m\]"   # Green
on_YELLOW="\[\e[0;103m\]"  # Yellow
on_BLUE="\[\e[0;104m\]"    # Blue
on_PURPLE="\[\e[10;95m\]"  # Purple
on_CYAN="\[\e[0;106m\]"    # Cyan
on_WHITE="\[\e[0;107m\]"   # White

function color_terminal {
    local user_and_host="${cyan}\u${off}@${green}\h:"
    local current_location="${YELLOW}\w"
    export PS1="${user_and_host}${current_location}${off}$ "
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
}
color_terminal

###########################################################
