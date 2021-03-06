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
Plugin 'lifepillar/vim-solarized8'

" Zenburn color scheme for terminal use of vim
Plugin 'jnurmine/Zenburn'

" NerdTree (Filesystem explorer)
Plugin 'scrooloose/nerdtree'

" SimplyFold (folding for python code)
Plugin 'tmhedberg/simpylfold'

" Autocompletion
Plugin 'valloric/youcompleteme'

" Syntastic (syntax checking)
Plugin 'scrooloose/syntastic'
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

" Split settings
set splitbelow " opens the new buffer below the current
set splitright " opens the new buffer on the right side of the current

" Line numbering
set number " display line numbers

" Theme and syntax color related commands
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
syntax on " Enables syntax highlighting

" Check if a vim in gui mode is running (e.g. gVim)
" ----------------------------------------------------------------------------------------------------
if has("gui_running")
	colorscheme solarized " Enables the solarized colorscheme
	set background=dark " Sets the default background theme to dark
else 
	if $COLORTERM == "truecolor"
		set termguicolors
		colorscheme solarized8_dark " Enables the truecolor solarized colorscheme
		" set Vim-specific sequences for RGB colors
		" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	else
		" Check for the used Terminal to setup the right amount of used colors
		if $TERM == "xterm"
			set t_Co=16 " Sets the number of used colors from the terminal
		elseif $TERM == "xterm-256color"
			set t_Co=256
			let g:solarized_termcolors=256 " Sets the correct solarized colors in vim
		endif
	colorscheme solarized
	set background=dark " Sets the default background theme to dark
	endif
endif
" ----------------------------------------------------------------------------------------------------

" Folding related commands
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

" Enable folding
" set foldmethod=indent
set foldlevelstart=20 " Sets the foldlevel for loaded buffers
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

let NERDTreeShowHidden=1 " Enables NERDTree to always show hidden files
set ttyfast " Enables smoother redrawing of the window

" Plugin specific commands 
" ----------------------------------------------------------------------------------------------------

" SimplyFold
let g:SimpylFold_docstring_preview=1

" NERDTree
map <C-n> :NERDTreeToggle<CR> " Opens a NERDTree with Ctrl+n

" multiple cursors
let g:multi_cursor_use_default_mapping=0 " turn off multiple cursors default keyboard mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1 " Closes the preview after completion
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> " use (space+g) to go to declaration

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ----------------------------------------------------------------------------------------------------

" Key mappings
" ----------------------------------------------------------------------------------------------------

" Key mappings for the navigation in splitted buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Folding by hitting space
nnoremap <space> za
" ----------------------------------------------------------------------------------------------------

" File specific autocommands
" ----------------------------------------------------------------------------------------------------

" .py Files (PEP8 standards)
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" .html, .css, .js, .json Files
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
au BufNewFile,BufRead *.js, *.html, *.css, *.json
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ----------------------------------------------------------------------------------------------------
" End of File
