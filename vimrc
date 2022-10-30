call plug#begin()
"colorscheme
Plug 'haishanh/night-owl.vim'
"cpp enhanced syntax
Plug 'octol/vim-cpp-enhanced-highlight'
"any fold
Plug 'https://github.com/pseewald/vim-anyfold.git'
"ALE
Plug 'dense-analysis/ale'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"emmet
Plug 'mattn/emmet-vim'
"file trees
Plug 'https://github.com/preservim/nerdtree.git'
"surround
Plug 'https://github.com/AndrewRadev/tagalong.vim.git'
"surround
Plug 'https://github.com/tpope/vim-surround.git'
"nerd tree icons
Plug 'ryanoasis/vim-devicons'
"colorizer
Plug 'https://github.com/lilydjwg/colorizer.git'
"vim git plugin
Plug 'https://github.com/tpope/vim-fugitive.git'
"match tags html/js
Plug 'https://github.com/leafOfTree/vim-matchtag.git'
"template literals html/js
Plug 'jonsmithers/vim-html-template-literals'
Plug 'pangloss/vim-javascript'

call plug#end()

syntax enable

set termguicolors
"nerdtree
"hidden files 
let NERDTreesShowHidden=1
"toggles nerdtree:
map <C-t> :NERDTreeToggle<CR> 
"auto change nerdtree to dir of opened file
augroup DIRCHANGE
    au!
    autocmd DirChanged global :NERDTreeCWD
augroup END
"auto opens nerdtree
autocmd VimEnter * NERDTree 
 "closes vim if nerdtree is the only thing open
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"vim tagalong
let g:tagalong_filetypes = ['html']

"colorizer
let g:colorizer_startup = 0
"vim airline stuff
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['ale', 'tabline', 'netrw', 'term', 'wordcount']
set encoding=UTF-8
let g:airline#extensions#tabline#enabled = 1 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"emmet stuff
let g:user_emmet_mode='nv'
let g:user_emmet_install_global = 0
autocmd Filetype html,css EmmetInstall
let g:user_emmet_leader_key =','

"html syntax
let g:htl_all_templates = 1

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = 'Ÿ'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_alt_sep = '>'
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
colorscheme night-owl
hi Folded gui=underline guifg =#53857c
let g:anyofold_fold_comments=1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_hihglight = 1
let g:cpp_class_scope_highlight = 1

"Various color changes
hi LineNr guifg=#53857c
hi CursorLineNr guifg=#36d9c0 guibg=#072838
hi Cursor guibg=#072838
hi Conditinal guifg=#00cccc
hi Special guifg=#ffa500 
hi Repeat guifg=#ffa089 
hi Keyword guifg=#32cd32
hi Character guifg=#ff4500 
hi Number guifg=#cb4154
hi link Number Float 
hi Conditional guifg=#ffff00
hi Operator guifg=#daa520 
hi SpellBad guifg=NONE guibg=#ff0000 
hi htmlTag guifg=#5f9ea0 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link htmlEndTag htmlTag
hi htmlTagName guifg=#48d1cc
hi htmlValue guifg=#93c572 
hi htmlArg guifg=#568203 
hi htmlHead guifg=#00b7eb 
hi htmlValue guifg=#e6be8a
hi IncSearch guifg=NONE guibg=#3ab09e gui=underline 
hi Search guifg=#f5fffa  guibg=#3ab09e gui=underline 

"vim config changes
set nuw=4
set smartindent
filetype plugin indent on
set backspace=indent,eol,start
set ruler
set wildmenu
set wildmode=longest,list,full 
set noconfirm 
set laststatus=2 
set nobackup 
set noswapfile 
set showmode 
set showmatch 
set incsearch 
set shiftwidth=4 
set softtabstop=4 
set expandtab
set cmdheight=1
set wrap
set textwidth=0
set wrapmargin=0
set nospell
set nolazyredraw
set so=999
set belloff=all
set hidden
"cursor
set cursorlineopt=number
set cursorline


"easier window navigation. can simply control and hjkl into a window
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l

"allow for easier buffer movement
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




