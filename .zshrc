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

export PATH="/home/anubhav/git/translation-validation/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
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
function runCBMC(){(cbmc $1 --function test_fun --unwind 5 --unwinding-assertions);}
function runCPA(){(/home/anubhav/cpa_checker/CPAchecker-1.6.1-unix/scripts/cpa.sh -preprocess -predicateAnalysis -entryfunction test_fun $1);}

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

function runSJENG(){
	g++ -c attacks.c book.c draw.c ecache.c partner.c rcfile.c see.c ttable.c -DSPEC_CPU -DNDEBUG   -Ofast   -DSPEC_CPU_LP64  -fplugin=../../bin/tv_plugin.so |& tee result
}

function runMCF(){
	g++ -c mcf.c output.c pbeampp.c pbla.c pflowup.c psimplex.c pstart.c readmin.c treeup.c -DSPEC_CPU -DNDEBUG  -DWANT_STDC_PROTO -Ofast        -DSPEC_CPU_LP64  -fplugin=../../bin/tv_plugin.so |& tee result
}

function runBZIP(){
	g++ -c blocksort.c compress.c crctable.c huffman.c randtable.c spec.c -DSPEC_CPU -DNDEBUG -Ofast -DSPEC_CPU_LP64 -fplugin=../../bin/tv_plugin.so |& tee result
}

function runLQ(){
	g++ -c complex.c expn.c oaddn.c omuln.c qec.c qft.c shor.c specrand.c version.c -DSPEC_CPU -DNDEBUG   -Ofast  -DSPEC_CPU_LP64 -DSPEC_CPU_LINUX  -fplugin=../../bin/tv_plugin.so |& tee result
}

function runLBM(){
	g++ -c main.c -DSPEC_CPU -DNDEBUG   -Ofast    -DSPEC_CPU_LP64  -fplugin=../../bin/tv_plugin.so |& tee result
}

function runHMMER(){
	g++ -c a2m.c clustal.c dayhoff.c emulation.c fast_algorithms.c getopt.c iupac.c mathsupport.c phylip.c plan9.c rk.c seqencode.c sqerror.c squid.h sre_ctype.c sre_math.c sre_random.c types.c vectorops.c -I. -DSPEC_CPU -DNDEBUG   -Ofast   -DSPEC_CPU_LP64   -fplugin=../../bin/tv_plugin.so |& tee result
}

function runH264REF(){
	g++ -c annexb.c biariencode.c context_ini.c loopFilter.c mb_access.c memalloc.c nal.c nalu.c nalucommon.c rdopt_coding_state.c rdpicdecision.c refbuf.c specrand.c vlc.c weighted_prediction.c -DSPEC_CPU -DNDEBUG   -Ofast   -DSPEC_CPU_LP64  -fplugin=../../bin/tv_plugin.so |& tee result
}

function runPERLBENCH(){
	g++ -c attrs.c Base64.c deb.c DynaLoader.c globals.c Hostname.c IO.c locale.c Opcode.c pad.c perlapi.c perlmain.c poll.c pp_sort.c run.c specrand.c stdio.c taint.c -DSPEC_CPU -DNDEBUG -DPERL_CORE  -Ofast  -DSPEC_CPU_LP64 -DSPEC_CPU_LINUX_X64  -fplugin=../../bin/tv_plugin.so |& tee result
}

function runGCC(){
	g++ -c asprintf.c hex.c obstack.c safe-ctype.c version.c -DSPEC_CPU -DNDEBUG -I. -Ofast  -DSPEC_CPU_LP64 -fplugin=../../bin/tv_plugin.so |& tee result
}

function runSPHINX3(){
	g++ -c err.c specrand.c unlimit.c -DSPEC_CPU -DNDEBUG -I. -DSPEC_CPU -DHAVE_CONFIG_H -I. -Ilibutil   -Ofast  -DSPEC_CPU_LP64  -fplugin=../../bin/tv_plugin.so |& tee result
}

function runMILC(){
	g++ -c addmat.c addvec.c byterevn.c check_unitarity.c clear_mat.c clearvec.c cmplx.c control.c d_plaq4.c f_meas.c gaugefix2.c gauge_info.c  gaussrand.c grsource_imp.c io_lat4.c io_nonansi.c layout_hyper.c l_su2_hit_n.c make_ahmat.c make_lattice.c m_amat_hwvec.c m_amatvec.c m_amv_4dir.c m_amv_4vec.c mat_invert.c m_mat_an.c m_mat_hwvec.c m_mat_na.c m_mat_nn.c m_matvec.c msq_su3vec.c m_su2_mat_vec_a.c m_su2_mat_vec_n.c path_product.c ploop3.c rand_ahmat.c ranmom.c ranstuff.c realtr.c rephase.c reunitarize2.c r_su2_hit_a.c s_m_a_mat.c s_m_a_vec.c s_m_mat.c s_m_s_mat.c s_m_vec.c su3_adjoint.c su3_dot.c su3mat_copy.c su3_proj.c su3_rdot.c sub4vecs.c submat.c subvec.c trace_su3.c uncmp_ahmat.c update.c update_h.c update_u.c -DSPEC_CPU -DNDEBUG -I. -DFN -DFAST -DCONGRAD_TMP_VECTORS -DDSLASH_TMP_LINKS  -Ofast   -DSPEC_CPU_LP64  -fplugin=../../bin/tv_plugin.so |& tee result
}

alias runQuick='g++ -g3 -fPIC -O3  -fplugin=/home/anubhav/git/translation-validation/bin/tv_plugin.so -c /home/anubhav/git/translation-validation/test_cases/quick_test/quick_test.c -o quick_test.o -fdump-tree-all -lz3'

#function runbench(){
#        if [ "$1" == "bzip" ]
#        then
#        	runBZIP()
#	elif [ "$1" == "libquantum" ]
#        then
#                runLQ()
#        elif [ "$1" == "milc" ]
#        then
#                runMILC()
#        elif [ "$1" == "mcf" ]
#        then
#                runMCF()
#        elif [ "$1" == "hmmer" ]
#        then
#                runHMMER()
#        else
#                echo $"Usage: $0 {bzip|libquantum|milc|mcf|hmmer}"
#        fi
#}

alias outClip='xclip -o -sel clip'

function inClip(){
	xclip -sel clip < $1
}
export YAAFE_PATH=/usr/local/yaafe_extensions/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/
export PATH=/home/anubhav/workspace/PMU_Counters/:$PATH
alias _p='cd /mnt/Data1/Placement/'
export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
