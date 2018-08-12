set nocompatible

" Disable filetype while loading plugins
filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
"Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
"Plug 'altercation/vim-colors-solarized'
"Plug 'majutsushi/tagbar'
Plug 'jeetsukumaran/vim-buffergator'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"Plug 'Valloric/YouCompleteMe'

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
set expandtab
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

set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
set invlist

" Plugin configurations
let g:rainbow_active = 1

" Disable confirmation for ycm configurations
let g:ycm_confirm_extra_conf = 0

" Remove trailing whitespace on write
autocmd FileType c,cc,cpp,h,hh,hpp,hxx,go,rs,py,java,php,js,pl,lua autocmd BufWritePre <buffer> %s/\s\+$//e

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

colorscheme solarized8

set t_Co=256
set termguicolors

" Set color scheme
syntax enable
set background=light

" GRUVBOX color scheme
"let g:gruvbox_contrast_dark="hard"
"let g:gruvbox_contrast_light="hard"
"colorscheme gruvbox

" SOLARIZED color scheme
"let g:solarized_termcolors=256
"colorscheme solarized

" airline color scheme
let g:airline_theme='solarized'

"set clipboard=unnamed

set foldmethod=indent   "fold based on indent
set foldnestmax=6       "deepest fold is 6 levels
set nofoldenable        "dont fold by default
set foldlevel=1

" Keymappings
nmap <C-s> :w<CR>
nmap <C-e> :nohl<CR>
imap <C-i> <ESC>
imap <C-s> <Esc>:w<CR>a
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Relative line numbers toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <Leader>d :call NumberToggle()<CR>
"nnoremap <F8> :TagbarToggle<CR>
nnoremap <Leader>f :Explore<CR>
nnoremap <Leader>j :BuffergatorToggle<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>k :nohl<CR>

map <F9> :make<CR>

