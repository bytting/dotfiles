set nocompatible

filetype off

if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

call plug#begin(s:editor_root . '/plugged')

Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
"Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
"Plug 'benekastah/neomake'
Plug 'morhetz/gruvbox'
"Plug 'altercation/vim-colors-solarized'
"Plug 'Shougo/deoplete.nvim'

call plug#end()

filetype plugin indent on

"let mapleader = "\<Space>"

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

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"let g:deoplete#enable_at_startup = 1

"let g:rainbow_active = 1

syntax enable
set background=dark

" GRUVBOX
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
colorscheme gruvbox

" SOLARIZED
"let g:solarized_termcolors=256
"colorscheme solarized

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
"nnoremap <C-o> :BufExplorer<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>

nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
nmap <C-i> :nohl<CR>

"map <Leader> <Plug>(easymotion-prefix)
