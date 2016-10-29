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

" powerline (statusline)
" Plugin 'powerline/powerline'

" vim-airline (Lean & mean status/tabline for vim that's light as air.)
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes' " Theme plugin for vim.airline

" fugitive (git wrapper)
Plugin 'tpope/vim-fugitive'

" gitgutter (visualisation of git diff)
Plugin 'airblade/vim-gitgutter'

" multiple cursors (multiple cursors for editing)
Plugin 'terryma/vim-multiple-cursors'

" solarized (color scheme)
Plugin 'altercation/vim-colors-solarized'

" Zenburn color scheme for terminal use of vim
Plugin 'jnurmine/Zenburn'

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

" Theme and syntax color related commands
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
syntax on " Enables syntax highlighting

if has("gui_running") " Check if a vim in gui mode is running (e.g. gVim)
	colorscheme solarized " Enables the solarized colorscheme
else " Use fallback mode in Terminal (for compatibility)
	set t_Co=256 " Sets the number of available terminal colors
	" let g:solarized_termcolors=256 " Sets the correct solarized colors in vim
	colorscheme zenburn
endif

set background=dark " Sets the default background theme to dark

let NERDTreeShowHidden=1 " Enables NERDTree to always show hidden files
set ttyfast " Enables smoother redrawing of the window

" Key mappings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
" NERDTree
map <C-n> :NERDTreeToggle<CR> " Opens a NERDTree with Ctrl+n

" Key mappings for the navigation in splitted buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Folding by hitting space
nnoremap <space> za

" multiple cursors
let g:multi_cursor_use_default_mapping=0 " turn off multiple cursors default keyboard mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" ---------------------------------------------------------------------------------------------------- 
" End of File
