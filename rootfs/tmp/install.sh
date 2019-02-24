#!/usr/bin/env sh

### Path Ruby RBENV ###
export RBENV_ROOT="$HOME/.rbenv"
export INSTALL_VERSION=${RUBY_VERSION:-2.6.1}

git clone https://github.com/rbenv/rbenv.git $RBENV_ROOT
git clone https://github.com/rbenv/ruby-build.git $RBENV_ROOT/plugins/ruby-build

# Install Ruby with rbenv (default)
#-----------------------------------------------------------------------------
$RBENV_ROOT/bin/rbenv install $INSTALL_VERSION
$RBENV_ROOT/bin/rbenv global $INSTALL_VERSION
$RBENV_ROOT/bin/rbenv rehash

ln -sf $RBENV_ROOT/bin/rbenv /usr/local/bin/rbenv
ln -sf $RBENV_ROOT/shims/ruby /usr/local/bin/ruby
