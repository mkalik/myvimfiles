call plug#begin()

Plug 'haishanh/night-owl.vim'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'https://github.com/pseewald/vim-anyfold.git'

Plug 'frazrepo/vim-rainbow'

Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

":nohl a good command to remove highlights
autocmd InsertEnter,Insertleave * set cul!
set autochdir
set nocompatible
syntax enable
set number
set hls
if(has("termguicolors"))
    set termguicolors
endif
colorscheme night-owl
set cursorline
hi Folded gui=underline guifg=#53857c
let g:anyofold_fold_comments=1
let g:rainbow_active=1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_hihglight = 1
let g:cpp_class_scope_highlight = 1
hi LineNr guifg=#53857c
hi CursorLineNr guifg=#36d9c0 guibg=#072838
hi Cursor guibg=#072838
set cursorlineopt=number
set nuw=4
set smartindent
filetype plugin indent on
set backspace=indent,eol,start
set ruler
set wildmenu
set wildmode=longest,list,full 
set confirm 
set laststatus=2 
set nobackup 
set noswapfile 
set showmode 
set showmatch 
set incsearch 
set shiftwidth=4 
set softtabstop=4 
set expandtab
set cmdheight=2
set wrap
set nospell
set nolazyredraw
"easier window navigation. can simply control and hjkl into a window
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l
"-------------------------------------------------------------------
"allow for easeier buffer movement
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

packadd termdebug
let g:termdebug_wide=1
"disables arrow keys in all modes
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
  exec 'cnoremap' key '<Nop>'
endfor


