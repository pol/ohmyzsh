export AWS_VAULT_BACKEND=keychain
export GITHUB_TOKEN=0161fbd09643a318c149112127e3f4a480ac2fca
export JENKINS_USERNAME='pol.llovet@auth0.com'
export JENKINS_TOKEN=112d0ec1a2b92aa5d3ee4f1d78aee299cf
export SHARED_VAULT="PSaaS Engineering"
export TFENV_ARCH=arm64
export ARCHFLAGS='-arch arm64'

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PSAAS_AMI="u16-release-$(test -f ~/.psaas_releases.json || zen release list -j > ~/.psaas_releases.json && jq -r '.version' ~/.psaas_releases.json | tail -1)"
export BOOST_LIB_DIR="/opt/homebrew/Cellar/boost/1.76.0/lib"
export BOOST_INC_DIR="/opt/homebrew/Cellar/boost/1.76.0/include"
export boost="/opt/homebrew/Cellar/boost/1.76.0/include/boost"
export RUBY_CFLAGS="-Wno-error=implicit-function-declaration"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/microsoft-16.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
