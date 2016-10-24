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


" My plugins
" ----------------------------------------------------------------------------------------------------
" vim-airline (Lean & mean status/tabline for vim that's light as air.)
Plugin 'bling/vim-airline'

" fugitive (Git wrapper)
Plugin 'tpope/vim-fugitive'

" solarized (color scheme)
Plugin 'altercation/vim-colors-solarized'

" NerdTree (Filesystem explorer)
Plugin 'scrooloose/nerdtree'
" ---------------------------------------------------------------------------------------------------- 


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ---------------------------------------------------------------------------------------------------- 

" My commands
" ----------------------------------------------------------------------------------------------------
syntax on " Enables syntax highlighting
set background=dark " Sets the background theme to dark
colorscheme solarized " Enables the solarized colorscheme
" Key mappings
" ---------------------------------------------------------------------------------------------------- 
map <C-n> :NERDTreeToggle<CR> " Opens a NERDTree with Ctrl+n
" ---------------------------------------------------------------------------------------------------- 
" End of File
