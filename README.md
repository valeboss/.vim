# Setting up .vimrc

To use the .vimrc file you need to clone this repository and all its submodules.
```
git clone --recursive https://github.com/valeboss/.vim.git
```
Use SSH:
```
git clone --recursive git@github.com:valeboss/.vim.git
```

## Create a symbolic link

To make Vim (only for Vim versions < 7.4) use the .vimrc file contained in the .vim repository create a symbolic link in your home directory.
```
ln -s .vim/vimrc .vimrc
```

## Install YouCompleteMe
For installation instructions click [here](https://github.com/Valloric/YouCompleteMe "YouCompleteMe GitHub Repository").

## Syntastic syntax checking
For further instructions on enabling syntax checking by Syntastic click [here](https://github.com/vim-syntastic/syntastic "Syntastic GitHub Repository").
