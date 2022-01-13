source $HOME/antigen.zsh
source ~/.iterm2_shell_integration.zsh
antigen use oh-my-zsh

export PATH=$HOME/bin:/usr/local/bin:$PATH
# Apple M1 only
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# Load theme
antigen theme spaceship-prompt/spaceship-prompt

# zsh-nvm settings
export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=true

# Load bundles
antigen bundles <<EOBUNDLES
    lukechilds/zsh-nvm
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-autosuggestions
    kennethreitz/autoenv
    robbyrussell/oh-my-zsh plugins/git
EOBUNDLES

antigen apply

