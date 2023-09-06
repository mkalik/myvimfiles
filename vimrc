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

"NERDTREE---
"refresh
nmap <Leader>r :NERDTreeRefreshRoot <CR>
"hidden files
let NERDTreeShowHidden=1
"toggles nerdtree:
map <C-t> :NERDTreeToggle<CR>
"auto change nerdtree to dir of opened file
augroup DIRCHANGE
    au!
    autocmd DirChanged global :NERDTreeCWD
augroup END
 "closes vim if nerdtree is the only thing open
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" has nerdtree act like netrw
 let NERDTreeHijackNetrw=1
"minimal nerdtree
let NERDTreeMinimalUI=1
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"dev-icons
let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_conceal_nerdtree_brackets = 1

"vim tagalong
let g:tagalong_filetypes = ['html', 'javascript']

"colorizer
let g:colorizer_startup = 0

"emmet stuff
let g:user_emmet_mode='nv'
let g:user_emmet_install_global = 1
" autocmd Filetype html,css,handlebars EmmetInstall
let g:user_emmet_leader_key =','
let g:user_emmet_expandabbr_key='<Tab>'

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
\ 'json': ['eslint'],
\ 'html': ['vscodehtml'],
\ 'css' :['vscodecss'],
\ 'cpp' :['cppcheck'],
\}
let g:ale_fixers = {
\ 'javascript' : ['prettier'],
\ 'json':['prettier'],
\ 'html' : ['prettier'],
\}
let g:ale_fix_on_save = 1

"vim airline stuff
"airline extensions
let g:airline_extensions = ['netrw', 'branch', 'tabline']
"for airline sections
let g:airline#extensions#default#layout = [
\ [ 'a', 'b', 'c' ],
\ [ 'x', 'y', 'z']
\ ]
"congifgures how a file will show up in bufferlist

let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#bufferline#enabled = 1
"shows a truncated file path in tabline
let g:airline#extensions#tabline#formatter = 'short_path'
"buffer indexes in tabline
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
"shows a shorter file path in the statusline
let g:airline_section_c = '%t'
let g:airline#extensions#whitespace#enabled = 0
" let g:airline_powerline_fonts = 1
set encoding=UTF-8
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"allowing for vimfugitive integration
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#vcs_checks = ['untracked', 'dirty']
"for NERDTREE intergration
let g:airline#extensions#nerdtree_statusline = 1
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
set formatoptions+=jcoql

"easier window navigation. can simply control and hjkl into a window
"normal
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"everyother mode
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
" set ttymouse=

"various commands---
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

"auto reload vimrc
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source $MYVIMRC
augroup END

"deletes trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"fixes an issue with nerdtree and closed buffers
"nnoremap \d :bp<cr>:bd #<cr>
nnoremap <leader>q :bp<cr>:bw #<cr>
