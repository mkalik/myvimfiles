call plug#begin()

Plug 'haishanh/night-owl.vim'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'https://github.com/pseewald/vim-anyfold.git'

Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mattn/emmet-vim'
"file trees
Plug 'https://github.com/preservim/nerdtree.git'
"surround
Plug 'https://github.com/AndrewRadev/tagalong.vim.git'

call plug#end()

syntax enable
"nerdtree
"auto close tab if it only contains nerdtree
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"start nerdtree and put cursor in file buffer
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
"auto open nerdtree when newtab is opened
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
"auto change nerdtree to dir of opened file
autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
"toggle nerdtree
map <C-t> :NERDTreeToggle<CR>


"vim tagalong
let g:tagalong_filetypes = ['html']

"vim airline stuff

let g:airline_powerline_fonts = 1
let g:airline_extensions = ['ale', 'tabline', 'netrw', 'term', 'wordcount']
set encoding=utf-8
let g:airline#extensions#tabline#enabled = 1 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"emmet stuff
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd Filetype html,css EmmetInstall
let g:user_emmet_leader_key =','

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = 'Ÿ'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '>'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❰'
let g:airline_symbols.branch = '❰'
let g:airline_symbols.readonly = 'R:'
let g:airline_symbols.maxlinenr = 'ᵻ '
let g:airline_symbols.linenr = ' ➜ '
"--------
":nohl a good command to remove highlights
autocmd InsertEnter,Insertleave * set cul!
set autochdir
set nocompatible
set number
set hls!
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

"custom vim commnad for compilation
command Gpp execute '!g++ % -g -o test.exe'
command Gcc execute '!gcc % -g -o test.exe'



