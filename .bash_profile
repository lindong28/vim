export PS1="\u:\w$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PYTHONPATH=.

#export JAVA_HOME=`/usr/libexec/java_home -v 11`
export JAVA_HOME=/opt/homebrew/opt/openjdk@17
#export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH=$JAVA_HOME/bin:$PATH

#export PATH=/opt/gradle-5.6.4/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH


export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH=/Users/lindong/research/flink/flink-dist/target/flink-1.14-SNAPSHOT-bin/flink-1.14-SNAPSHOT/bin/:$PATH


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/lindong/.sdkman"
[[ -s "/Users/lindong/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/lindong/.sdkman/bin/sdkman-init.sh"

export RC_NUM="2"
export TAG="release-${RELEASE_VERSION}-rc${RC_NUM}"

#eval $(gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info)
export GPG_TTY=$(tty)
export GPG_AGENT_INFO
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
# export PATH="/opt/homebrew/anaconda3/bin:$PATH"  # commented out by conda initialize

export CPU_TARGET="arm64"
export HOMEBREW_NO_AUTO_UPDATE=1


#alias python=/opt/homebrew/bin/python3

RELEASE_VERSION="2.3.0"
SHORT_RELEASE_VERSION="2.3"
CURRENT_SNAPSHOT_VERSION="$SHORT_RELEASE_VERSION-SNAPSHOT"
NEXT_SNAPSHOT_VERSION="2.4-SNAPSHOT"
SHORT_NEXT_SNAPSHOT_VERSION="2.4"
SUPPORTED_FLINK_VERSIONS="1.15,1.16,1.17"

RC_NUM="1"
TAG="release-${RELEASE_VERSION}-rc${RC_NUM}"

#export MVN_HOME=/usr/local/apache-maven-3.8.6
#export PATH=$MVN_HOME/bin:$PATH


#export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
#export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export CC=/opt/homebrew/opt/llvm/bin/clang
export CXX=/opt/homebrew/opt/llvm/bin/clang++


. "$HOME/.cargo/env"

#export http_proxy=http://sys-proxy-rd-relay.byted.org:8118 https_proxy=http://sys-proxy-rd-relay.byted.org:8118 no_proxy=.byted.org


kinit limunan@BYTEDANCE.COM

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/bytedance/.lmstudio/bin"

#source $HOME/.local/bin/env


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda deactivate
