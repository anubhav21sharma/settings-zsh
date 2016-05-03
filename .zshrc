# Path to your oh-my-zsh installation.
export ZSH=/home/anubhav/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# COMPLETION SETTINGS
# add custom completion scripts
fpath=(~/.oh-my-zsh/completion $fpath) 
 
# compsys initialization
autoload -U compinit
compinit

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dirhistory zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#source /home/anubhav/.zsh_highlighting/zsh-syntax-highlighting.zsh

#echo -e "\033[1;`echo $(shuf -i 31-37 -n 1)`m$(whatis `(ls /bin) 2>/dev/null | shuf -n 1s`) \033[0m"
#
setopt histignorespace
function nmrestart(){
    sudo service network-manager restart;
}
alias ssh='ssh -YC'
alias r='reset'
alias ainstall='sudo apt-get install'
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias runMCF='g++ -c mcf.c output.c pbeampp.c pbla.c pflowup.c psimplex.c pstart.c readmin.c treeup.c -DSPEC_CPU -DNDEBUG  -DWANT_STDC_PROTO -Ofast        -DSPEC_CPU_LP64  -fplugin=../bin/tv_plugin.so'

function bldTVPlugin(){ (cd ~/git/translation-validation/bin && make -j8 all);}
function runCBMC(){(cbmc $1 --function test_fun --unwind 5);}

export http_proxy="http://143059004:brendon*@netmon.iitb.ac.in:80"
export https_proxy="http://143059004:brendon*@netmon.iitb.ac.in:80"
source /etc/zsh_command_not_found

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1        ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xvf $1        ;;
            *.tbz2)      tar xvjf $1      ;;
            *.tgz)       tar xvzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

function runInvGen(){
	file=$1
	frontend -o $file.pl $file.c
	invgen $file.pl	
}
export YAAFE_PATH=/usr/local/yaafe_extensions/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/
export PATH=/home/anubhav/workspace/PMU_Counters/:$PATH
