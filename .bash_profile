export PS1="\u:\w$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#export JAVA_HOME=`/usr/libexec/java_home -v 11`
#export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
#export PATH=$JAVA_HOME/bin:$PATH

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

export CPU_TARGET="arm64"

#alias python3=/usr/bin/python3

#alias python=/usr/local/Cellar/python\@3.7/3.7.13/bin/python3.7

RELEASE_VERSION="2.3.0"
SHORT_RELEASE_VERSION="2.3"
CURRENT_SNAPSHOT_VERSION="$SHORT_RELEASE_VERSION-SNAPSHOT"
NEXT_SNAPSHOT_VERSION="2.4-SNAPSHOT"
SHORT_NEXT_SNAPSHOT_VERSION="2.4"
SUPPORTED_FLINK_VERSIONS="1.15,1.16,1.17"

RC_NUM="1"
TAG="release-${RELEASE_VERSION}-rc${RC_NUM}"

#export MVN_HOME=~/research/install/apache-maven-3.8.6
#export PATH=$MVN_HOME/bin:$PATH


#export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
#export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH=/opt/homebrew/opt/llvm/bin:$PATH

. "$HOME/.cargo/env"


