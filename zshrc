#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="fox"
ZSH_THEME='robbyrussell'

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

unset PYTHONPATH
unset PATH

PATH=/unsullied/sharefs/_admin/transparent:/usr/local/nvidia/bin:/usr/local/cuda/bin:/unsullied/sharefs/_admin/transparent:/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# for megbrain
[[ -z $HAS_BRAINPP_UTILS ]] && . ~/.bash_brainpp
export PYTHONAPTH=/opt/megdl/MegBrain:/opt/megdl/MegSkull:/opt/megdl/MegHair:$PYTHONPATH

# for landstack
export PYTHONPATH=~/projects/landstack:$PYTHONPATH
export PATH=~/projects/landstack/bin:$PATH

# for neupeak
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/nvidia/lib64:
export PYTHONPATH=~/neupeak:$PYTHONPATH
export PATH=~/neupeak/bin:~/bin:$PATH

# alias
export all_proxy=http://proxy.i.brainpp.ml:3128 no_proxy=.i.brainpp.ml,.brain.megvii-inc.com,.sm.megvii-op.org,127.0.0.1,localhost; export http_proxy=$all_proxy https_proxy=$all_proxy
alias no_proxy='unset all_proxy; unset http_proxy; unset https_proxy; unset no_proxy'
alias gpu='watch -n 1 -d nvidia-smi'
alias peek='npk-model-manip model.py info'
alias rl='readlink -f'
alias tb='tensorboard --logdir train_log'
alias cls="clear"

printf "\e[?2004l"
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

#alias killa='ps aux|grep train.py|awk "{print $2}"|xargs kill -9'

# for megskull
export CPATH=/usr/local/cuda-8.0/include:$CPATH

# fix 'no matches'
setopt nonomatch

# for tensorboard locale error
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# MegFace v2
export LD_LIBRARY_PATH=/unsullied/sharefs/_research_facelm/Isilon-modelshare/megface/megface28/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/unsullied/sharefs/_research_facelm/Isilon-modelshare/megface/megface28/python:$PYTHONPATH
