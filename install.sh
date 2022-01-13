# Change shell
chsh -s /bin/zsh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Formulae
brew install libevent ncurses tmux node yarn zsh curl 

# Casks
brew install iterm2 webstorm goland

# Launch apps from cli
echo ' #!/bin/sh \
open -na "WebStorm.app" --args "$@" ' >> /usr/local/bin/webstorm

echo ' #!/bin/sh \
open -na "GoLand.app" --args "$@" ' >> /usr/local/bin/goland

# Config zsh
curl -L https://iterm2.com/shell_integration/zsh \
-o ~/.iterm2_shell_integration.zsh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
curl -L git.io/antigen > antigen.zsh
