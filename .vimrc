set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdTree'
Plugin 'tpope/vim-surround'
Plugin 'jlanzarotta/bufexplorer'

call vundle#end()

filetype plugin indent on

set expandtab
set ruler
set number
set hlsearch
set showcmd
set showmatch
set showmode
set tabstop=4
set shiftwidth=4
set nobackup
set wildmenu
set nowrap
set mouse=a
set t_Co=256

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax enable
set background=dark

" GRUVBOX
" let g:gruvbox_contrast_dark="medium"
" let g:gruvbox_contrast_light="hard"
" colorscheme gruvbox

" SOLARIZED
let g:solarized_termcolors=256
colorscheme solarized

inoremap <C-o> <Esc>
inoremap ¨ <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Relative line numbers toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-m> :call NumberToggle()<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :BufExplorer<CR>
