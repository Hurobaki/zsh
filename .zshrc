# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/the3796/.oh-my-zsh"

# To show every code color value run this command
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Thibaud theme : spaceShip
ZSH_THEME="powerlevel9k/powerlevel9k"

# Custom Oh-my-zsh settings
# Override the Powerlevel9k theme

DEFAULT_FOREGROUND=016
DEFAULT_BACKGROUND=235
DEFAULT_COLOR=$DEFAULT_FOREGROUND

POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'

# For command execution time set treshold displaying
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

# Content displayed

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)


# Icons configuration
POWERLEVEL9K_OS_ICON_BACKGROUND='016'
POWERLEVEL9K_OS_ICON_FOREGROUND=$'\uF179'

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="002"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="001"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="003"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$DEFAULT_BACKGROUND"

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-stash git-remotebranch git-tagname)

POWERLEVEL9K_TIME_BACKGROUND='255'
#POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
#plugins=(zsh-autosuggestions zsh-syntax-highlighting  git z)
#
source $ZSH/oh-my-zsh.sh

source $HOME/.zplug/init.zsh
zplug 'zsh-users/zsh-autosuggestions', at:master
zplug "zsh-users/zsh-syntax-highlighting"
zplug "plugins/git", from:oh-my-zsh
zplug "buonomo/yarn-completion", defer:3
zplug "rupa/z", as:plugin, use:z.sh, defer:3

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f $HOME/.aliases ]; then
  source $HOME/.aliases
fi

alias vi="nvim"

# Android SDK
#
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

export PATH=~/Development/flutter/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Custom functions

function killPort() {
  lsof -ti:$1 | xargs kill
  if [ $? = 0 ]
  then
    echo "Port $1 cleared"
  fi
}

