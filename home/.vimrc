set nocompatible

" Disable filetype while loading plugins
filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'morhetz/gruvbox'
"Plug 'altercation/vim-colors-solarized'
"Plug 'majutsushi/tagbar'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on

let mapleader = "\<Space>"

" General settings
set backupdir=/var/tmp,/tmp
set directory=/var/tmp,/tmp
set autowrite
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set number
set hlsearch
set showmatch
set wildmenu
set wildignore+=*/tmp/*,*.so,*.o,*.swp,*~,*.zip,*.tgz,*.tar.gz
set nowrap
set mouse=a
set t_Co=256

" Plugin configurations
let g:rainbow_active = 1

" Disable confirmation for ycm configurations
let g:ycm_confirm_extra_conf = 0

" Remove trailing whitespace on write
autocmd FileType c,cc,cpp,h,hh,hpp,go,py,java,php,js,pl autocmd BufWritePre <buffer> %s/\s\+$//e

" Close Omni-Completion tip window on close
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Mark trailing whitespaces with red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Stop complaining about switching away from unsaved buffers
au FocusLost * silent! wa

" Set color scheme
syntax enable
set background=dark

" GRUVBOX
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
colorscheme gruvbox

" SOLARIZED
"let g:solarized_termcolors=256
"colorscheme solarized

"set clipboard=unnamed

set foldmethod=indent   "fold based on indent
set foldnestmax=6       "deepest fold is 6 levels
set nofoldenable        "dont fold by default
set foldlevel=1

" Relative line numbers toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Keymappings
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nmap <C-i> :nohl<CR>
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

nnoremap <C-m> :call NumberToggle()<CR>
"nnoremap <F8> :TagbarToggle<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>j :BuffergatorToggle<CR>

