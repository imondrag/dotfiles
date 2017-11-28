# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ivan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#source ~/.dotfiles/git-extras-completion.zsh

# Show git branch on right prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%F{green}\$vcs_info_msg_0_%f
zstyle ':vcs_info:git:*' formats '%b'

# Set default text editor to vim
export EDITOR=nvim
export VISUAL="$EDITOR"
#export PROMPT='[%B%F{red}%n%F{white}@%m%f%b %2~]%(#.#!.%(?.|>.||>)) '
export PROMPT='%F{white}[%f%F{red}%n%f%F{white}:%2~]%f%(#.%(?.%F{white}#!%f.%F{red}#!%f).%(?.%F{white}|>%f.%F{red}|>%f)) '

# Aliases
alias icanhazip="curl icanhazip.com"
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -alh"
alias l.='ls -d .* --color=auto'
# alias countLines="git ls-files | xargs wc -l"
alias countLines="echo *(.) | xargs wc -l"
alias lineCount='wc * -l'
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color"
alias pacupdate="sudo pacman -Syu"
alias aurupdate="pacaur -Syu"
alias open="xdg-open"
alias m='make -j 4'
alias module='echo'
alias vim='nvim'
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

function save {
    cp "$1" "$1.archive"
}

function def {
     curl dict://dict.org/d:$1
}

# To run installed cabal executables
export PATH=$PATH:~/.cabal/bin
export PATH=~/.local/bin:$PATH
export LFS=/mnt/lfs


# MOTD
showerthoughts=$(curl -s --connect-timeout 5 -A '/u/Archal8' \
'https://www.reddit.com/r/showerthoughts/top.json?sort=top&t=week&limit=100' | \
python -c 'import sys, random, json; randnum = random.randint(0,99); response = json.load(sys.stdin)["data"]["children"][randnum]["data"]; print ("\n\"" + response["title"] + "\""); print ("      -" + response["author"] + "\n");')
echo $showerthoughts | cowsay | lolcat
