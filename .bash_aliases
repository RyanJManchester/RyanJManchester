#####################
# SSH Key Setup
#####################

eval $(ssh-agent -s)
ssh-add ~/.ssh/ReadingPeople_key
ssh-add ~/.ssh/p_github

#####################
# Environment Setup
#####################
export PS1='$ '
export PATH="$PATH:/mnt/c/Users/AppData/Local/Microsoft/WindowsApps/python.exe"
# Created by `pipx` on 2025-03-10 21:42:23
export PATH="$PATH:/home/r/.local/bin"

#####################
# Source Scripts
source ~/.ls_colors.sh  #sets up the bash ls colors nicely.

#####################
# Aliases
#####################
alias cls="clear && ls"
# COMPX523, delete after not using MOA.

alias moa="java -jar ~/MOA/lib/moa.jar"
alias jc="javac *.java"
alias j="javac *.java"
# Paths, config on new setups.
alias 'home'="cd /mnt/c/Users/ryanj/myDocs/ && cls"
alias 'papers'="cd /mnt/c/Users/ryanj/myDocs/UNI/papers/ && cls"
alias 'tut'="cd /mnt/c/Users/ryanj/myDocs/UNI/tutoring/ && cls"

#####################
# Functions
#####################
# alias to open firefox and specify a search term
ff() {
    local search_term="$*"
    local query=$(echo "$search_term" | sed 's/ /+/g')  # Convert spaces to '+'
    "/mnt/c/Program Files/Mozilla Firefox/firefox.exe" --new-window "https://www.google.com/search?q=$query"
}

#####################
# Startup Commands
cls
