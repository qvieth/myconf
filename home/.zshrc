#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# PATHS==============================================
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin:$PATH
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export AUDIO_PLAYER="mpg123"
# RBENV-PATH=========================================
export PATH=$HOME/.rbenv/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	cht
	conda-zsh-completion
	direnv
	fnm
	frontend-search
	hugo
	pip
	taskwarrior
	vi-mode
	web-search
	npm
	yarn
	zsh-autosuggestions
	zsh-syntax-highlighting
)
  # tmux
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
: ${ZSH_TMUX_AUTOSTART:=true}
: ${ZSH_TMUX_AUTOCONNECT:=false}
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='lvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ALIASES============================================
alias c='cht.sh'
alias g='googler -n 3'
alias m='dict -d moby-thesaurus'
alias n='nvim'
alias t='trans :en -sp'
alias tz='t :zh-TW -p'
alias p='git add .;git commit -m "quick push -> $(date)";git push'
alias wa='sh $HOME/.wa'
alias wi='wikit'
alias updatezsh='git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull && omz update'
alias dnf='cat $HOME/.sudopassword | sudo -S dnf -y'
alias lunarvim_install='bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)'
alias lunarvim_remove='bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.sh)'

magic_mouse(){
  echo "$1" | sudo tee /sys/module/hid_magicmouse/parameters/scroll_speed 
}

timezsh() {
	# MEASURE-ZSH-LOADTIME===============================
	shell=${1-$SHELL}
	for i in $(seq 1 10); do time $shell -i -c exit; done
}

# SHUF 10 RANDOM CHINESE WORDS START
random-block() {
  shuf -n 1 $1 | grep -f - -A $(($2>0?$2-1:0)) $1
}

v() {
  random-block "$HOME/MyVocab/Remember-Tradional-Hanzi-1" 10
  echo "==============================="
  shuf -n 1 "$HOME/MyVocab/1000_common_chinese_words_zh_TW.csv"
}

v
# SHUF 10 RANDOM CHINESE WORDS END

# DEFAULTS===========================================
if command -v lvim &>/dev/null; then
	export EDITOR='lvim'
else
	export EDITOR='nvim'
fi
# export BROWSER='w3m'
export VIMCONFIG=$HOME/.config/nvim/

# FNM================================================
export PATH=/home/qvieth/.fnm:$PATH
eval "$(fnm env)"

# VIM-BINDING-IN-NODE================================
if [ $(command -v rlwrap) ]; then
	alias node='NODE_NO_READLINE=1 rlwrap node'
fi

KEYTIMEOUT=1 # KEYSEQUENCES-SET-TO-10MS

# guide can be found at https://ask.fedoraproject.org/t/rbenv-f36-unable-to-install-any-ruby-version/22301
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/openssl-1.1.1q/"
eval "$(rbenv init - zsh)"
# ==========ADD-YOUR-CONFIG-ABOVE-THIS-LINE=============================================
# ======================================================================================
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# ======================================================================================
# ==========BELOW-ARE-SCRIPT-GENERATED==================================================
# pnpm
export PNPM_HOME="/home/qvieth/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

