" ---------------------------
" Hardcore Vim Config for C
" ---------------------------

" ---------------------------
" 1️⃣ Plugin manager: vim-plug
" ---------------------------
call plug#begin('~/.vim/plugged')

" Modern dark glassy theme
Plug 'joshdick/onedark.vim'

" Auto-close brackets, quotes
Plug 'jiangmiao/auto-pairs'

" Auto-completion + language aware
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax check / lint
Plug 'dense-analysis/ale'

call plug#end()

" ---------------------------
" 2️⃣ Basic settings
" ---------------------------
set nocompatible          
filetype plugin indent on 
syntax on                 
set number                
set relativenumber        
set cursorline            
set hidden                
set showcmd               
set showmatch             
set smarttab              
set expandtab             
set tabstop=4             
set shiftwidth=4          
set autoindent            
set smartindent           
set ignorecase            
set smartcase             
set incsearch             
set hlsearch              
set wrap                  
set scrolloff=5           
set updatetime=300        
set clipboard=unnamedplus 
set termguicolors          " true color support
set mouse=a                

" ---------------------------
" 3️⃣ Auto pairs config
" ---------------------------
let g:AutoPairsFlyMode = 1

" ---------------------------
" 4️⃣ OneDark theme config
" ---------------------------
colorscheme onedark
let g:onedark_terminal_italics = 1

" ---------------------------
" 5️⃣ Airline config
" ---------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

" ---------------------------
" 6️⃣ CoC (Completion) config
" ---------------------------
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" ---------------------------
" 7️⃣ ALE (linting) config
" ---------------------------
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_insert_leave = 1

" ---------------------------
" 8️⃣ Key mapping examples
" ---------------------------
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q!<CR>

" ---------------------------
" 9️⃣ Auto commands
" ---------------------------
augroup autoread
  autocmd!
  autocmd BufEnter,BufReadPost,FileChangedShellPost * checktime
augroup END

" ---------------------------
" DONE ☠︎︎
" ---------------------------
