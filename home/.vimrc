set nocompatible

filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdTree'
Plugin 'tpope/vim-surround'
"Plugin 'luochen1990/rainbow'
"Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'

call vundle#end()


filetype plugin indent on

let g:ycm_confirm_extra_conf = 0

" remove trailing whitespace on write
autocmd FileType c,cc,cpp,h,hh,hpp,java,php,js,pl autocmd BufWritePre <buffer> %s/\s\+$//e

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

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

au FocusLost * silent! wa

let g:rainbow_active = 1

syntax enable
set background=dark

" GRUVBOX
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
colorscheme gruvbox

set clipboard=unnamed

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

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-m> :call NumberToggle()<CR>
nnoremap <C-o> :BufExplorer<CR>
nnoremap <F7> :NERDTreeToggle<CR>
"nnoremap <F8> :TagbarToggle<CR>

nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nmap <C-i> :nohl<CR>
