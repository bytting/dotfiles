set nocompatible

filetype off

if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

let &rtp = &rtp . ',' . s:editor_root . '/bundle/Vundle.vim'

call vundle#rc(s:editor_root . '/bundle')
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdTree'
Plugin 'tpope/vim-surround'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'luochen1990/rainbow'

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
let g:rainbow_active = 1

syntax enable
set background=dark

" GRUVBOX
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="hard"
colorscheme gruvbox

" SOLARIZED
" let g:solarized_termcolors=256
" colorscheme solarized

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
nnoremap <C-o> :BufExplorer<CR>
