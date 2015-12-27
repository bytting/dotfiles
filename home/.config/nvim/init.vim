set nocompatible

filetype off

if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

call plug#begin(s:editor_root . '/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug 'jlanzarotta/bufexplorer'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

filetype plugin indent on

set backupdir=/var/tmp,/tmp
set directory=/var/tmp,/tmp
set autowrite
set expandtab
set ruler
set number
set hlsearch
set showcmd
set showmatch
set showmode
set tabstop=4
set shiftwidth=4
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set nowrap
set mouse=a
set colorcolumn=80
set t_Co=256

au FocusLost * silent! wa

let g:ctrlp_working_path_mode = 'ra'

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:rainbow_active = 1

syntax enable
set background=dark

" GRUVBOX
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
colorscheme gruvbox

" SOLARIZED
" let g:solarized_termcolors=256
" colorscheme solarized

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
nnoremap <F8> :TagbarToggle<CR>

nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a

