# dotfiles

## super awesome new machine install script

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install mysql postgresql redis hub python git rbenv nvm
brew cask install google-chrome slack caffeine hyperdock alfred iterm2 atom macvim cmake 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl https://raw.githubusercontent.com/hcwiley/dotfiles/master/vimrc.basic -o ~/.vimrc 
```
