#!/bin/zsh

# # # # # # # # # # # # #
#    General Config     #
# # # # # # # # # # # # #

# With this the username at the start of the line in the console is removed
DEFAULT_USER=bernd

# Set theme
ZSH_THEME="powerlevel9k/powerlevel9k"


# Export ZSH path
export ZSH="$HOME/.oh-my-zsh"

# Load all plugins before we load `oh my zsh` to ensure that everything works correctly
plugins=(git zsh-autosuggestions zsh-syntax-highlighting last-working-dir pip python sublime ssh-agent gpg-agent python pyenv rbenv thefuck zsh-reloa adb common-aliases copyfile debian django extract gitignore)

# start "oh my zsh"
source "$ZSH/oh-my-zsh.sh"

# Load aliases (must be after "oh my zsh")
source "$HOME/.zsh/aliases"

# Load hooks
source "$HOME/.zsh/hooks"

# Set "oh my zsh" preferences
setopt BEEP
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions
setopt PROMPT_SUBST
setopt COMPLETE_IN_WORD
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# Set history file and its options
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000

# More readable color for zsh-autosuggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=6"

# Fish like path
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Information shown on the left and right side of the console input
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status background_jobs virtualenv custom_python_version root_indicator context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time ssh time)

# load all functions from the functions folder
export PATH="$HOME/.zsh/functions:$PATH"

# OpenSSL Missing Fix
CFLAGS=-I/usr/include/openssl
LDFLAGS=-L/usr/lib

# Use vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Add etcher-cli if available
if [ -d "/opt/etcher-cli" ]; then
    export PATH="$PATH:/opt/etcher-cli"
fi
