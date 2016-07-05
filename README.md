# VIM configuration for writing and development.

## Set Up

Installation:

    git clone git@github.com:bjagg/vim-config.git ~/.vim

Create Symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to `~/.vim` directory and fetch submodules:

    cd ~/.vim
    git submodule update --init

## Adding A Plugin
To add plugin bundles, use Git submodule add:

    cd ~/.vim
    git submodule add git@github.com:[user]/[plugin-project-name].git


## Updating Plugins
Git submodules are not updated automatically to allow for controlled updates.
Git requires an explicit pull for each submodule:

    cd ~/.vim
    git submodule foreach git pull
    git add bundle
    git commit -m "Update all plugins in bundle"
    git push origin master

