set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'valloric/youcompleteme'                 "need to setting(reference youcompleteme)
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'majutsushi/tagbar'                      "need to ctag (apt-get install exuberant-ctags)
Plugin 'townk/vim-autoclose'

call vundle#end()            " required
filetype plugin indent on    " required




"vim setup
syntax on	 				"syntax highlights
set showmatch				"() check
set nu						"number
set cursorline				"cursor line highlights
set ts=4					"tab size 4
set title					"specify title
set ai						"auto indent
set si						"smart indent
set sw=4					"shift size 4
set cindent					"c style
set visualbell				"beep control
set nobackup				"nobackup file
set incsearch				"search gradually
filetype indent on			"filetype indent
set mouse=a				"cursor move with mouse
"restore the edit locate
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\	 exe "norm g'\"" |
\ endif
"for NerdTree
nmap nerd  :NERDTreeToggle<CR>
"for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"for color
colorscheme jellybeans

"for Tagbar
nmap <F8> : TagbarToggle <CR> 
