call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'flazz/vim-colorschemes'

" File handling
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'vim-scripts/L9' | Plug 'vim-scripts/FuzzyFinder'

" Git support
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'

" Language support
Plug 'artur-shaik/vim-javacomplete2'
Plug 'vim-ruby/vim-ruby', { 'for': 'rb' }
Plug 'pangloss/vim-javascript', { 'for': 'js' }
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] }
Plug 'wlangstroth/vim-racket', { 'for': 'rkt' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'klen/python-mode', { 'for': 'py' }
Plug 'ap/vim-css-color'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" (Optional)
Plug 'honza/vim-snippets'

" Autocompletion
Plug 'othree/vim-autocomplpop'

Plug 'tpope/vim-sensible'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'

call plug#end()

set nocompatible
set t_Co=256
syntax on
filetype plugin indent on
if has('gui_running')
  set guifont=Monaco:h13
  set guioptions-=T
  set linespace=2
else
  " do nothing
endif

" set background=dark
colorscheme jellybeans

set mouse=a

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
" set nowrap  " Line wrapping off
set wrap " Line wrapping on
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
" set cindent
set autoindent
set smarttab
set expandtab

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
" set list
" Show $ at end of line and trailing space as ~
" set lcs=tab:\ \ ,extends:>,precedes:<
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" set listchars=tab:»·,trail:·
" hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col-1]!~'\k'
    return "\<TAB>"
  else
    if pumvisible()
      return "\<C-N>"
    else
      return "\<C-N>\<C-P>"
    end
  endif
endfunction

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
"nnoremap <Down> gj
"nnoremap <Up> gk
"vnoremap <Down> gj
"vnoremap <Up> gk
"inoremap <Down> <C-o>gj
"inoremap <Up> <C-o>gk
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
map <F2> :NERDTreeToggle<CR>
map <F5> :Make<CR><C-w><Up>

set hidden

" Shortcut for FuzzyFincer
"map <leader>ff :FufCoverageFile<cr>
map <leader>ff :FufFile **/<cr>
map <leader>fb :FufBuffer <cr>
