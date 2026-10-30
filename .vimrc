" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" if empty(glob(data_dir . '/autoload/plug.vim'))
"   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
call plug#begin()

"gradle
"Plug 'hdiniz/vim-gradle'

"java syntax
Plug 'uiiaoo/java-syntax.vim'

"cpp enhanced syntax
Plug 'octol/vim-cpp-enhanced-highlight'

"ALE
Plug 'dense-analysis/ale'

"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"NERDtree
Plug 'https://github.com/preservim/nerdtree.git'

"NERDtree icons
Plug 'ryanoasis/vim-devicons'

"surround
Plug 'https://github.com/tpope/vim-surround.git'
"ragtag
Plug 'https://github.com/tpope/vim-ragtag.git'

"colorizer
Plug 'https://github.com/lilydjwg/colorizer.git'
"
"enhanced lang syntax
Plug 'sheerun/vim-polyglot'
"vim comments
Plug 'https://github.com/tpope/vim-commentary.git'

"js libraries syntax
" Plug 'git@github.com:othree/javascript-libraries-syntax.vim.git'

"Rainbow brackets
Plug 'frazrepo/vim-rainbow'

"tagalong
" Plug 'https://github.com/AndrewRadev/tagalong.vim.git'

"vim git plugin
" Plug 'https://github.com/tpope/vim-fugitive.git'
"various languages syntax

"emmet
" Plug 'mattn/emmet-vim'
"
"colorscheme
" Plug 'mhartington/oceanic-next'
Plug 'haishanh/night-owl.vim'
" Plug 'glepnir/oceanic-material'

call plug#end()

syntax enable
set noshowmode
set showtabline=1

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
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"dev-icons
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_conceal_nerdtree_brackets = 1

"vim tagalong
let g:tagalong_filetypes = ['html', 'javascript']

"colorizer
let g:colorizer_startup = 0

"rainbow brackets
au FileType c,cpp,objc,objcpp,js,java,html,css call rainbow#load()

""emmet stuff
"let g:user_emmet_mode='nv'
"let g:user_emmet_install_global = 1
"" autocmd Filetype html,css,handlebars EmmetInstall
"let g:user_emmet_leader_key =','
"let g:user_emmet_expandabbr_key='<Tab>'

"ALE stuff----
"ALEInfo window display
let g:ale_info_default_mode = 'echo'
"floating previews
" let g:ale_floating_preview = 1
"show on status line
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_text_changed =1
"errors in colunmns
" let g:ale_sign_column_always = 1
"symbols for errors and warnings
let g:ale_sign_error = '>>'
let g:ale_sign_warning ='--'

"linter for ALE
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_linters = {
\ 'java' : ['javac'],
\ 'javascript' : ['eslint','tsserver'],
\ 'typecript' : ['eslint'],
\ 'json': ['eslint'],
\ 'html': ['vscodehtml'],
\ 'css' :['vscodecss'],
\ 'cpp' :['cppcheck'],
\ 'c' :['cppcheck'],
\ 'python': ['ruff'],
\}
let g:ale_fixers = {
\ 'java':['uncrustify'],
\ 'javascript' : ['prettier'],
\ 'typescript' : ['prettier'],
\ 'json':['prettier'],
\ 'html' : ['prettier'],
\ 'cpp' :['astyle', 'uncrustify'],
\ 'python' : ['black'],
\}
let g:ale_fix_on_save = 1
let g:ale_java_javac_executable = 'C:\Program Files\Java\jdk-25.0.2\bin\javac.exe'

"vim airline stuff
"airline extension
let g:airline_extensions = [ 'branch', 'tabline', 'wordcount']
"for airline sections
let g:airline#extensions#default#layout = [
\ [ 'a', 'b', 'c' ],
\ [ 'x', 'y', 'z']
\ ]
"word count
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#formatter#default#fmt = 'wc: %s'
"files for word count
let g:airline#extensions#wordcount#filetypes =
            \['text', 'markdown']
"congifgures how a file will show up in bufferlist
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#bufferline#enabled = 1
"shows a truncated file path in tabline
let g:airline#extensions#tabline#formatter = 'short_path'
"buffer indexes in tabline
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_section_c = '%t'
let g:airline#extensions#whitespace#enabled = 0
" let g:airline_powerline_fonts = 1
set encoding=UTF-8
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"allowing for vimfugitive integration
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#branch#empty_message = ''
" let g:airline#extensions#branch#vcs_checks = ['untracked', 'dirty']

" netrw stuff
let g:netrw_winsize = -28
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Toggle Vexplore with Ctrl-O
function! ToggleVExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        let cur_win_num = winnr()

        if expl_win_num != -1
            while expl_win_num != cur_win_num
                exec "wincmd w"
                let cur_win_num = winnr()
            endwhile

            close
        endif

        unlet t:expl_buf_num
    else
         Vexplore
         let t:expl_buf_num = bufnr("%")
    endif
endfunction

map <silent> <C-O> :call ToggleVExplorer()<CR>

"for NERDTREE intergration
let g:airline#extensions#nerdtree_statusline = 1
"for airline statusline
let g:airline_section_error = ''
"unicode symbols
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

" autocmd InsertEnter,Insertleave * set cul!
set autochdir
set nocompatible
set number
set hls!
hi Folded gui=underline guifg=#53857c
let g:cpp_class_decl_hihglight = 1
let g:cpp_class_scope_highlight = 1


"cursor
set cursorline
set cursorlineopt=number,line
set splitright
set formatoptions+=jcoql

"Various color changes
set fillchars+=vert:\|
" colorscheme mk-owl
colorscheme night-owl
set termguicolors

hi Normal guifg=#d1d6c0 guibg=#001116
hi NonText guifg=NONE guibg=#001116
hi link EndOfbuffer NonText
hi Todo guifg=#ffb347 guibg=NONE gui=undercurl cterm=underline
hi Error guifg=#ed2939 guibg=NONE gui=NONE cterm=underline
hi clear SpellBad
hi SpellBad guifg=#ffefd5 cterm=underline
hi Special guifg=#ff4500
hi Conditional guifg=#fff600
hi Boolean guifg=#ffa089
hi Repeat guifg=#ffa500
hi Keyword guifg=#67da65
hi Character guifg=#ff4500
hi Number guifg=#cb4154
hi link Number Float
hi link Number Boolean
hi Function guifg=#00ffef
hi Identifier guifg=#a8e4ff
hi link vimVar Identifier
hi Label guifg=#9efd38
hi Statement guifg=#7fff00
hi Operator guifg=#fcc200
hi Structure guifg=#7b68ee
hi LineNr guifg=#688e8a guibg=#001116
hi CursorLineNr guifg=#fcc200
hi IncSearch guifg=#001116 guibg=#ccf1ff

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
set nospell
set smartcase
autocmd FileType text setlocal spell
syn match myExCapitalWords +\<[A-Z]\w*\>+ contains=@NoSpell
set nolazyredraw
set scrolloff=10
set belloff=all
set hidden


set gcr=n:blinkwait0



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

