call plug#begin()

"colorscheme
Plug 'haishanh/night-owl.vim'

"cpp enhanced syntax
Plug 'octol/vim-cpp-enhanced-highlight'
"ALE
Plug 'dense-analysis/ale'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"emmet
Plug 'mattn/emmet-vim'
"NERDtree
Plug 'https://github.com/preservim/nerdtree.git'
"NERDtree icons
Plug 'ryanoasis/vim-devicons'
"tagalong
Plug 'https://github.com/AndrewRadev/tagalong.vim.git'
"surround
Plug 'https://github.com/tpope/vim-surround.git'
"colorizer
Plug 'https://github.com/lilydjwg/colorizer.git'
"vim git plugin
Plug 'https://github.com/tpope/vim-fugitive.git'
"various languages syntax
Plug 'sheerun/vim-polyglot'
"vim comments
Plug 'https://github.com/tpope/vim-commentary.git'
"js libraries syntax
Plug 'git@github.com:othree/javascript-libraries-syntax.vim.git'

call plug#end()

syntax enable
set noshowmode
set showtabline=2
"netrw
"keep dir and browsing dir synced
let g:netrw_keepdir = 0
"default size
let g:netrw_winsize =15 
"hide banner
"various things for netrw that make it similar to nerdtree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"need to do more work with this
" map <C-t> :Vexplore<CR>

"polyglot

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
 "closes vim if nerdtree is the only thing open
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.

"vim tagalong
let g:tagalong_filetypes = ['html']

"colorizer
let g:colorizer_startup = 0

"emmet stuff
let g:user_emmet_mode='nv'
let g:user_emmet_install_global = 1
" autocmd Filetype html,css,handlebars EmmetInstall
let g:user_emmet_leader_key =','
let g:user_emmet_expandabbr_key='<Tab>'

"Match pair
" let g:AutoPairsFlyMode = 1

"ALE stuff----
"floating previews
let g:ale_floating_preview = 1
"show on status line
let g:ale_lint_on_insert_leave = 1
""errors in colunmns
let g:ale_sign_column_always = 1

"linter for ALE
let g:ale_linters = {
\ 'javascript' : ['eslint','tsserver'],
\ 'html': ['vscodehtml'],
\ 'css' :['vscodecss'],
\}
let g:ale_fixers = {
\ 'javascript' : ['prettier'],
\ 'html' : ['prettier'],
\}
let g:ale_fix_on_save = 1

"vim airline stuff
"put statusline on top
"airline extensions
let g:airline_extensions = ['netrw', 'branch']
"for airline sections
let g:airline#extensions#default#layout = [
\ [ 'a', 'b', 'c' ],
\ [ 'x', 'y', 'z']
\ ]
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0
" let g:airline_powerline_fonts = 1
set encoding=UTF-8
let g:airline#extensions#tabline#enabled = 1 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"allowing for vimfugitive integration
let g:airline#extensions#branch#enabled = 1
"for airline statusline
let g:airline_section_error = ''
" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '@'
let g:airline_symbols.paste = 'P'
let g:airline_symbols.whitespace = 'W'

" airline symbols
let g:airline_left_alt_sep = '❱'
let g:airline_right_alt_sep = '❰'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = 'R:'
let g:airline_symbols.maxlinenr = 'ᵻ '
let g:airline_symbols.linenr = ' ➜ '
let g:airline_symbols.dirty='*'
"--------
":nohl a good command to remove highlights
autocmd InsertEnter,Insertleave * set cul!
set autochdir
set nocompatible
set number
set hls!
hi Folded gui=underline guifg=#53857c
let g:cpp_class_decl_hihglight = 1
let g:cpp_class_scope_highlight = 1

"Various color changes
set fillchars+=vert:\|
colorscheme mk-owl
set termguicolors
hi link Boolean Conditional
"fg = txt bg = bg

" hi LineNr guifg=#528c99 guibg=#01090E
" hi SignColumn guibg=#01090E guifg=NONE
" hi CursorLineNr guifg=#ceff00 guibg=NONE gui=NONE cterm=NONE
" hi TabLineFill guibg=#01090E gui=NONE cterm=NONE 
" hi TabLineSel cterm=NONE guibg=#1c3241
" hi Cursor guifg=#072838 guifg=#020D14 cterm=NONE
" hi Special guifg=#00cccc
" hi Conditional guifg=#fff600 
" hi Repeat guifg=#ffa500 
" hi Keyword guifg=#67da65
" hi Character guifg=#ff4500 
" hi Number guifg=#cb4154
" hi link Number Float 
" hi Statement guifg=#00ffef 
" hi Operator guifg=#fcc200 
" hi htmlTag guifg=#5f9ea0 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi link htmlEndTag htmlTag
" hi htmlTagName guifg=#48d1cc
" hi htmlValue guifg=#3ace00
" hi htmlArg guifg=#568203 
" hi htmlHead guifg=#00b7eb 
" hi IncSearch guifg=NONE guibg=#3ab09e gui=underline 
" hi Search guifg=#f5fffa  guibg=#3ab09e gui=underline 
" hi link vimVar htmlValue
" hi link vimNotation Operator
" hi link vimBracket vimNotation
" hi VertSplit guifg=#008080 guibg=bg

"hi jsGlobalObjects guifg=#58edb2
"hi jsBrackets guifg=#00b7eb 
"hi jsfunctionkey guifg=#6a5acd 
"hi link jsNoise htmlTag 
"hi link jsRepeatBraces htmlValue 
""hi jsRepeatBraces guifg=#4bd980
"hi jsParens guifg=#009b7d guibg=NONE
""hi link jsObjectBraces Special 
"hi jsObjectKey guifg=#ff64ed
"hi jsobjectBraces guifg=#008080
"hi link jsFuncparens Special
"hi jsFuncBraces guifg=#88d8c0 guibg=NONE
"hi link jsFuncBraces jsBrackets 
"hi link jsBraces Repeat
"hi link jsNumber Number
"hi jsIfElseBraces guifg=#a64d79
"hi link jsConditional Conditional 
"hi link jsSpecial Special
"hi link jsRepeat Repeat
"hi link jsOperator Operator

hi Todo guifg=#ffb347 guibg=NONE gui=undercurl cterm=underline
hi spellbad guifg=#ed2932 guifg=NONE gui=NONE cterm=NONE
hi Error guifg=#ed2939 guibg=NONE gui=NONE cterm=NONE
"vim config changes
set nuw=4
set scl=number
set smartindent
filetype indent plugin on
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
set softtabstop=-1
set expandtab
set cmdheight=1
set wrap
set textwidth=0
set wrapmargin=0
" set nospell
set nolazyredraw
set so=999
set belloff=all
set hidden
"cursor
set cursorlineopt=number
set splitright


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

"disabling mouse
set mouse=
set ttymouse=

"various commands
"open current file in explorer
nmap <C-s> :!start .<CR>
"find syntax for something under cursor
" Show syntax highlighting groups for word under cursor
nmap <leader>z :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"copy and paste from reg
vmap <leader>y "+y
nmap <leader>p "+p

