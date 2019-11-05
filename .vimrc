if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-surround.git'

Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'terryma/vim-multiple-cursors'

Plug 'christoomey/vim-tmux-navigator'

Plug 'pbrisbin/vim-mkdir'

Plug 'jkramer/vim-checkbox', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

if executable('npm')
      Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install' }
endif

Plug 'vimwiki/vimwiki'

Plug 'todotxt/todo.txt'

call plug#end()

let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

set rtp+=/usr/local/opt/fz


"Default color scheme"
set background=dark
let g:solarized_termcolors=256
colorscheme gruvbox


syntax enable
set guifont=FiraCode:h12

"Display number lines"
" set number relativenumber
set number


"Enable 256 colors"
set t_Co=256

"Disable the swap file"
set noswapfile

"Show commands in bottom bar"
set showcmd

"Highlight current line"
set cursorline

"Automatically load the file if it is modified"
set autoread
au CursorHold * checktime

"no backup file - just use git"
set nobackup

"Always show status line"
set laststatus=2

"Indent settings"
set tabstop=2
set shiftwidth=2
set smartindent

"Change all tabs to spaces"
set expandtab

"Set the ruler to 80 columns"
set colorcolumn=80

"Help with pasting"
set pastetoggle=<F3>

"Ignore case in filename completion"
set wildignorecase

"Ignore case in search patterns"
set ignorecase

"Keep at least 3 lines above/below"
set scrolloff=3

set lazyredraw

"Show immediately where the so-far typed pattern matches."
set incsearch

"Highlight search term"
set hlsearch

"Always show the status of the file"
set laststatus=2

"Control-s to save"
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>

"When we hit enter, a new line is created on top/bottom without moving"
"the cursor."
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Make it so our backspace works the way we expect
set backspace=indent,eol,start

" Run a given vim command on the results of alt from a given path.
" See usage below.
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>
