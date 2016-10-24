" Vundle required commands
" ---------------------------------------------------------------------------------------------------- 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ----------------------------------------------------------------------------------------------------   


" My commands
" ---------------------------------------------------------------------------------------------------- 
syntax on " Enables syntax highlighting in vim


" My plugins
" ----------------------------------------------------------------------------------------------------

" Vim-Airline (Lean & mean status/tabline for vim that's light as air.)
Plugin 'bling/vim-airline'

" fugitive (Git wrapper)
Plugin 'tpope/vim-fugitive'

" solarized color scheme
Plugin 'altercation/vim-colors-solarized'
" ---------------------------------------------------------------------------------------------------- 
