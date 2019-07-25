#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

#Install a bunch of Jeffs binaries and MacOS applications
brew "bundle"

echo "Install everything in the Brewfile"
# Upgrading to 5.0 from Mac default 3.2
brew install bash

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils 

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

brew install git

# Install Bash5 completion
brew install bash-completion2

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install other useful binaries.
brew install ack

# Install more recent versions of some macOS tools.
brew install vim

brew install cleanup
brew install screenfetch
brew install git-lfs
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ack
brew install 'ssh-copy-id'
brew install tree
brew install vbindiff
brew install zopfli
brew install openssh
brew install openssl
brew install tmux
brew install grep
brew install php
brew install gmp

# Manually download the git-completions and git-prompt file
wget -q -P /usr/local/etc/profile.d https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget -q -P /usr/local/etc/profile.d https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

echo "Remove outdated versions from the cellar"
brew cleanup
