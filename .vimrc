scriptencoding utf-8
set autoindent
set expandtab
set fileencodings=utf-8,sjis
set fileformats=unix,dos,mac
set helplang=ja,en
set laststatus=2
set nocompatible
set number
set ruler
set shiftwidth=4
set smartindent
set tabstop=4
set title
set viminfo='20,\"10000
" search
set hlsearch
set incsearch
" ctags
set tags=.tags;$HOME
" background
set background=dark
colorscheme gruvbox

if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

" dein
if &compatible
 set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " dein
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  " tool
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('vim-jp/vimdoc-ja')
  call dein#add('scrooloose/nerdtree')
  " python
  call dein#add('sheerun/vim-polyglot')
  call dein#add('w0rp/ale')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('davidhalter/jedi-vim', {'on-ft': 'python'})
  " nvim
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

" deoplete
let g:deoplete#enable_at_startup = 1

" nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeNodeDelimiter = "😀"
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"

" indent
let g:indent_guides_enable_on_vim_startup = 1
set ts=2 sw=2 et

" ale
map <C-f> :ALEFix<CR>
let b:ale_linters = ['flake8']
let b:ale_fixers = ['autopep8', 'isort', 'yapf']

syntax enable
filetype plugin indent on
