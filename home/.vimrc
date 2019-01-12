set nocompatible

if has("gui_running")
    set guifont=Source\ Code\ Pro\ Medium\ 16
"    set guioptions-=T
"    set guioptions-=m
endif

" Disable filetype while loading plugins
filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
"Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'jeetsukumaran/vim-buffergator'

call plug#end()

filetype plugin indent on

let mapleader = "\<Space>"

" General settings
set path+=**
set encoding=utf-8
set backupdir=/var/tmp,/tmp
set directory=/var/tmp,/tmp
set autowrite
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
"set expandtab
set shiftround
set number
set hlsearch
set showmatch
set wildmenu
set wildignore+=*/tmp/*,*.so,*.o,*.swp,*~,*.zip,*.tgz,*.tar.gz
set nowrap
set mouse=a
set laststatus=2
set lazyredraw
set showbreak=↪\
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»
set invlist

" Enable rainbow parentesis
let g:rainbow_active = 1

" Set global YCM configuration file
let g:ycm_global_ycm_extra_conf = '~/dev/.ycm_extra_conf.py'

" Disable confirmation for YCM configurations
let g:ycm_confirm_extra_conf = 0

" Remove trailing whitespace on write
function! <SID>DeleteTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre *.c,*.cc,*.cpp,*.h,*.hh,*.hpp,*.cxx,*.hxx,*.go,*.rs,*.py,*.java,*.php,*.js,*.pl,*.lua,*.sql :call <SID>DeleteTrailingWhitespace()

" Close Omni-Completion tip window on close
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Mark trailing whitespaces with red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Stop complaining about switching away from unsaved buffers
au FocusLost * silent! wa

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Set colors
syntax enable
set background=dark

" Gruvbox color scheme
"let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
colorscheme gruvbox

" Airline color scheme
let g:airline_theme='gruvbox'

" Enable true colors
set t_Co=256
set termguicolors

"set clipboard=unnamed

set foldmethod=indent   "fold based on indent
set foldnestmax=6       "deepest fold is 6 levels
set nofoldenable        "dont fold by default
set foldlevel=1

let g:netrw_banner = 0

" Relative line numbers toggle
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
	else
		set relativenumber
	endif
endfunc

" Keymappings
imap <C-k> <ESC>
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>j :call NumberToggle()<CR>
nnoremap <Leader>f :Explore<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>k :nohl<CR>
"map <F7> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
map <F9> :make<CR>

