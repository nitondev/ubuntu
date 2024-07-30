alias update='sudo apt update'
alias upgrade='sudo apt upgrade -y'
alias full-upgrade='sudo apt full-upgrade -y'
alias install='sudo apt install -y'
alias remove='sudo apt remove -y'
alias autoremove='sudo apt autoremove -y'
alias search='sudo apt search'
alias show='sudo apt show'
alias list='sudo apt list --installed'

# Alias for ls
alias ls='ls -A --color=auto'

# Function to run ls after cd
cd() {
    builtin cd "$@" && ls
}

# Alias cat to batcat
alias cat='batcat'

# Alias to change directory to /var/www
alias www='cd /var/www'

# Function to extract various archive types
extract() {
    for archive in "$@"; do
        if [ -f "$archive" ]; then
            case "$archive" in
                *.tar.bz2)   tar xvjf "$archive"    ;;
                *.tar.gz)    tar xvzf "$archive"    ;;
                *.bz2)       bunzip2 "$archive"     ;;
                *.rar)       rar x "$archive"       ;;
                *.gz)        gunzip "$archive"      ;;
                *.tar)       tar xvf "$archive"     ;;
                *.tbz2)      tar xvjf "$archive"    ;;
                *.tgz)       tar xvzf "$archive"    ;;
                *.zip)       unzip "$archive"       ;;
                *.Z)         uncompress "$archive"  ;;
                *.7z)        7z x "$archive"        ;;
                *)           echo "don't know how to extract '$archive'..." ;;
            esac
        else
            echo "'$archive' is not a valid file!"
        fi
    done
}

# Aliases to create tar archives
alias mktar='tar -cf - . | xz -z >'
alias mkbz2='tar -cjf'
