" .vimrc
" Author: Eduardo Ruiz <eduarbo@gmail.com>
" Source: https://github.com/eduarbo/dotfiles/tree/master/vim
"
" Preamble ---------------------------------------------------------------- {{{
filetype off
" }}}
" Plugins ----------------------------------------------------------------- {{{
call plug#begin()
" A light and configurable statusline/tabline for Vim. The lightweight version of Powerline
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/syntastic', {'do': 'npm install -g jshint'}
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rking/ag.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'Valloric/YouCompleteMe', {'do': './install.sh --clang-completer'}
Plug 'papanikge/vim-voogle'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tejr/vim-tmux'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/SyntaxComplete'
Plug 'AndrewRadev/linediff.vim'
Plug 'terryma/vim-expand-region'
Plug 'dyng/ctrlsf.vim'
Plug 'shime/vim-livedown', {'do': 'npm install -g livedown'}
Plug 'honza/dockerfile.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'guns/vim-clojure-static', {'for': 'clojure'}
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'leshill/vim-json', {'for': 'json'}
Plug 'mitsuhiko/vim-python-combined', {'for': 'python'}
Plug 'kien/rainbow_parentheses.vim'

" Vim sugar for the UNIX shell commands that need it the most. Features include:
" :Remove, :Unlink, :Move, :Chmod, :Mkdir, :Find, :Locate, :Wall, :SudoWrite, :SudoEdit
Plug 'tpope/vim-eunuch'

" Provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'Raimondi/delimitMate'

" Plug 'vim-scripts/SyntaxRange'
Plug 'majutsushi/tagbar'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree'

" Place, toggle and display marks
Plug 'kshenoy/vim-signature'

" Maintains a history of previous yanks, changes and deletes
" Plug 'vim-scripts/YankRing.vim'

" Toggle the display of the quickfix list and the location-list.
Plug 'Valloric/ListToggle'

" Interactive command execution in Vim
Plug 'Shougo/vimproc.vim', {'do': 'make'}

" Browse the vim undo tree
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}

" CSS, SASS, LESS {{{
Plug 'JulesWang/css.vim', {'for': '*css'}
Plug 'cakebaker/scss-syntax.vim', {'for': '*scss*'}
Plug 'hail2u/vim-css3-syntax', {'for': '*css'}
Plug 'groenewege/vim-less', {'for': 'less*'}
" }}}
" Git {{{
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-git'
" }}}
" HTML {{{
Plug 'mustache/vim-mustache-handlebars', {'for': ['html.mustache', 'html.handlebars']}
Plug 'tpope/vim-haml', {'for': 'haml'}
Plug 'othree/html5.vim', {'for': 'html*'}
Plug 'mattn/emmet-vim', {'for': ['html*', 'xhttml', '*css', 'xml', 'xls', 'markdown']}
" }}}
" Javascript {{{
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}
Plug 'jason0x43/vim-js-indent', {'for': 'javascript'}
Plug 'maksimr/vim-jsbeautify', {'for': 'javascript', 'do': 'npm install -g js-beautify'}
Plug 'leafgarland/typescript-vim', {'for': 'javascript'}
" Plug 'marijnh/tern_for_vim', {'for': 'javascript', 'do': '~/.vim/plugged/tern_for_vim && npm install'}
" }}}
" Ruby {{{
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': ['ruby', 'rails']}
Plug 'tpope/vim-cucumber', {'for': ['ruby', 'rails']}
Plug 'skwp/vim-rspec', {'for': ['ruby', 'rails']}
" }}}
" SQL {{{
Plug 'exu/pgsql.vim', {'for': 'pgsql'}
" }}}

" Colorschemes {{{
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
" }}}
call plug#end()
" }}}
" Basic options ----------------------------------------------------------- {{{
filetype plugin indent on

let mapleader = ","
let maplocalleader = "\\"

scriptencoding utf-8

set encoding=utf-8
set modeline
set autoindent                  " Automatically set the indent of a new line (local to buffer)
set showmode                    " Show current mode down the bottom
set showcmd                     " Show incomplete cmds down the bottom
set scrolljump=10
set hidden
set visualbell                  " No sounds
set t_vb=                       " Visual bell disabled on Linux
set ttyfast                     " Improves redrawing
set ruler                       " Always show current positions along the bottom
set backspace=indent,eol,start  " Allow backspace in insert mode
set number                      " Line numbers are good
set laststatus=2                " Always show the status line
set history=1000                " Store lots of :cmdline history
set list                        " Hide invisible chars
set listchars=tab:▸\ ,eol:↵,extends:↷,precedes:↶,trail:·
set shell=/bin/zsh\ --login
set lazyredraw                  " Do not redraw while running macros
set matchtime=3                 " how many tenths of a second to blink
set showbreak=↪
set splitbelow
set splitright
set fillchars=diff:⣿,vert:┊     " Customize text for closed folds
set autowrite
set autoread                    " Reload files changed outside vim
set shiftround                  " When at 3 spaces, and I hit > ... go to 4, not 5
set title                       " set the terminal title to the current file
set linebreak
set dictionary=/usr/share/dict/words
set spellfile=~/.vim/custom-dictionary.utf-8.add
set pastetoggle=<F2>            " Use it for pasting large amounts of text into Vim, disabling all kinds of smartness and just pasting a whole buffer of text
set lazyredraw
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

if v:version > 702
    set norelativenumber            " It is much faster
    set undofile
    set undoreload=10000
    set colorcolumn=+1
endif

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Resize splits when the window is resized
au VimResized * :wincmd =

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END
" }}}
" Wildmenu completion {{{
set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~      " Backup files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.jar                            " Java archives
set wildignore+=*.pyc                            " Python bite code
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.orig                           " Merge resolution files
" }}}
" Line Return {{{
" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \     execute 'normal! g`"zvzz' |
                \ endif
augroup END
" }}}
" Tabs, spaces, wrapping {{{
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
set textwidth=80
set formatoptions=qrn1

if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j " Delete comment character when joining commented lines
endif
" }}}
" Backups {{{
set backup                        " enable backups
set noswapfile                    " It's 2012, Vim.

set undodir=$HOME/.vim/tmp/undo/     " undo files
set backupdir=$HOME/.vim/tmp/backup/ " backups
set directory=$HOME/.vim/tmp/swap/   " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
" }}}
" Colorscheme {{{
syntax on
" Workaround to fix cursorline on diffmode
" if !&diff
"   set cursorline
" endif

set background=dark

" Guvbox specific
" let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_invert_selection = 0

colorscheme gruvbox
" }}}
" }}}
" Abbreviations ----------------------------------------------------------- {{{
function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction
function! MakeSpacelessBufferIabbrev(from, to)
    execute "iabbrev <silent> <buffer> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

call MakeSpacelessIabbrev('gh/',  'http://github.com/')
call MakeSpacelessIabbrev('ghe/',  'http://github.com/eduarbo')
call MakeSpacelessIabbrev('me/',  'Eduardo Ruiz Macias')
call MakeSpacelessIabbrev('em/',  'eduarbo@gmail.com')

iabbrev ldis ಠ_ಠ
iabbrev lsad ಥ_ಥ
iabbrev lhap ಥ‿ಥ
iabbrev lmis ಠ‿ಠ
" }}}
" Convenience mappings ---------------------------------------------------- {{{
" Better than jj
inoremap jk <Esc>

" Fuck you, help key.
noremap  <F1> <ESC>
inoremap <F1> <ESC>

" Stop it, hash key.
inoremap # X<BS>#

" Kill window
nnoremap K :q<cr>

" Sort lines
nnoremap <leader>S vip:!sort<cr>
vnoremap <leader>S :!sort<cr>

" Tabs
nnoremap <C-(> :tabprev<cr>
nnoremap <C-)> :tabnext<cr>
nnoremap <C-t> :tabnew<cr>

"key mappings for identation
" nnoremap < <<_
" nnoremap > >>_
vnoremap < <gv
vnoremap > >gv

nnoremap ; :

" Use c-\ to do c-] but open it in a new split.
nnoremap <c-\> <c-w>v<c-]>zvzz

" Insert New Line
nnoremap <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
nnoremap <Enter> o<ESC>

" Go to previous file
nnoremap <leader>/ <C-^>

" Sigh.
nnoremap <leader><cr> :silent !/usr/local/bin/ctags -R . && sed -i .bak -E -e '/^[^	]+	[^	]+.py	.+v$/d' tags<cr>:redraw!<cr>

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

" Copy/Paste to and from Desktop Environment
noremap <leader>y "+y
noremap <leader>p "+p

" Make the Y behavior similar to D & C
nnoremap Y y$

" Insert the directory of the current buffer in command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Select entire buffer
nnoremap vaa ggvGg_
nnoremap Vaa ggVG

" Change case
inoremap <C-u> <esc>mzgUiw`za

" Panic Button
nnoremap <leader>` mzggg?G`z

" Emacs bindings in command line mode
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" Formatting, TextMate-style
" nnoremap Q gqip
vnoremap Q gq

" shortcut for @j macro
nnoremap Q @j

" Easier linewise reselection
nnoremap <leader>V V`]

" Indent/dedent/autoindent what you just pasted.
nnoremap <lt>> V`]<
nnoremap ><lt> V`]>
nnoremap =- V`]=

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w

" HTML tag closing
inoremap <C-_> <space><bs><esc>:call InsertCloseTag()<cr>a

" Select (charwise) the contents of the current line, excluding indentation.
" Great for pasting Python lines into REPLs.
nnoremap vv ^vg_

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Typos
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

" I suck at typing.
nnoremap <localleader>- ==
vnoremap - =

" Toggle [i]nvisible characters
nnoremap <leader>i :set list!<cr>

" Unfuck my screen
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>
" }}}
" Quick editing ----------------------------------------------------------- {{{
nnoremap <leader>ec :vsplit ~/.dotfiles/editorconfig<cr>
nnoremap <leader>ed :vsplit ~/.vim/custom-dictionary.utf-8.add<cr>
nnoremap <leader>ef :vsplit ~/.config/fish/config.fish<cr>
nnoremap <leader>eg :vsplit ~/.dotfiles/gitconfig<cr>
nnoremap <leader>ej :vsplit ~/.dotfiles/jshintrc<cr>
nnoremap <leader>et :vsplit ~/.dotfiles/tmux.conf<cr>
nnoremap <leader>ev :vsplit ~/.dotfiles/vimrc<cr>
nnoremap <leader>ez :vsplit ~/.dotfiles/zsh/zshrc<cr>

nnoremap <leader>ed :vsplit ~/.vim/custom-dictionary.utf-8.add<cr>
nnoremap <leader>eb :vsplit ~/.dotfiles/bash_profile<cr>
nnoremap <leader>eg :vsplit ~/.dotfiles/gitconfig<cr>
" }}}
" Searching and movement -------------------------------------------------- {{{
" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set scrolloff=3
set sidescroll=1
set sidescrolloff=10

set virtualedit+=block

noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

runtime macros/matchit.vim
nnoremap <tab> %
silent! unmap [%
silent! unmap ]%

" Made D behave
nnoremap D d$

" Don't move on *
nnoremap * *<c-o>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $
vnoremap L g_

" Heresy
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" gi already moves to "last place you exited insert mode", so we'll map gI to
" something similar: move to last change
nnoremap gI `.

" Fix linewise visual selection of various text objects
nnoremap VV V
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV

" Toggle "keep current line in the center of the screen" mode
nnoremap <leader>C :let &scrolloff=999-&scrolloff<cr>

" Directional Keys {{{
" It's 2012.
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" this allows all window commands in insert mode and i'm not accidentally deleting words anymore :-)
inoremap <C-w> <C-o><C-w>

" Easy buffer navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap - <C-w>-
nnoremap + <C-w>+

nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
" }}}
" Visual Mode */# from Scrooloose {{{
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>
" }}}
" List navigation {{{
nnoremap <left>  :cprev<cr>zvzz
nnoremap <right> :cnext<cr>zvzz
nnoremap <up>    :lprev<cr>zvzz
nnoremap <down>  :lnext<cr>zvzz
" }}}
" }}}
" Folding ----------------------------------------------------------------- {{{
set foldlevelstart=0
set foldmethod=marker

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>z :ZoomToggle<CR>

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO

" "Focus" the current line.  Basically:
"
" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a little bit (15 lines) above the center of the screen.
" 4. Pulse the cursor line.  My eyes are bad.
"
" This mapping wipes out the z mark, which I never use.
"
" I use :sus for the rare times I want to actually background Vim.
nnoremap <c-z> mzzMzvzz15<c-e>`z:Pulse<cr>

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()
" }}}
" Filetype-specific ------------------------------------------------------- {{{
" C {{{
augroup ft_c
    au!
    au FileType c setlocal foldmethod=marker foldmarker={,}
augroup END
" }}}
" Clojure {{{
let g:clojure_fold_extra = [
            \ 'defgauge',
            \ 'defmeter',
            \ 'defhistogram',
            \ 'defcounter',
            \ 'deftimer',
            \
            \ 'defdb',
            \ 'defentity',
            \ 'defaspect',
            \ 'add-aspect',
            \ 'defmigration',
            \
            \ 'defsynth',
            \ 'definst',
            \ 'defproject',
            \
            \ 'defroutes',
            \
            \ 'defrec',
            \
            \ 'defparser',
            \
            \ 'defform',
            \ 'defform-',
            \
            \ 'defpage',
            \ 'defsketch'
            \
            \ ]

let g:clojure_highlight_extra_defs = [
            \ 'defproject',
            \
            \ 'defroutes'
            \ ]

augroup ft_clojure
    au!

    au BufNewFile,BufRead riemann.config setlocal filetype=clojure
    au FileType clojure silent! call TurnOnClojureFolding()
    au FileType clojure compiler clojure
    au FileType clojure setlocal report=100000

    au FileType clojure RainbowParenthesesActivate
    au syntax clojure RainbowParenthesesLoadRound
    au syntax clojure RainbowParenthesesLoadSquare
    au syntax clojure RainbowParenthesesLoadBraces

    " Friendlier Paredit mappings.
    au FileType clojure noremap <buffer> () :<c-u>call PareditWrap("(", ")")<cr>
    au FileType clojure noremap <buffer> )( :<c-u>call PareditSplice()<cr>
    au FileType clojure noremap <buffer> (( :<c-u>call PareditMoveLeft()<cr>
    au FileType clojure noremap <buffer> )) :<c-u>call PareditMoveRight()<cr>
    au FileType clojure noremap <buffer> (j :<c-u>call PareditJoin()<cr>
    au FileType clojure noremap <buffer> (s :<c-u>call PareditSplit()<cr>
    au FileType clojure noremap <buffer> [ :<c-u>call PareditSmartJumpOpening(0)<cr>
    au FileType clojure noremap <buffer> ] :<c-u>call PareditSmartJumpClosing(0)<cr>
    " )))

    " Indent top-level form.
    au FileType clojure nmap <buffer> <localleader>= mz99[(v%='z
    " ])
augroup END
" }}}
" Clojurescript {{{
augroup ft_clojurescript
    au!

    au BufNewFile,BufRead *.cljs setlocal filetype=clojurescript
    au FileType clojurescript call TurnOnClojureFolding()

    " Indent top-level form.
    au FileType clojurescript nmap <buffer> <localleader>= v((((((((((((=%
augroup END
" }}}
" CSS and Sass{{{
augroup ft_css
    au!

    au BufNewFile,BufRead *.less setlocal filetype=less.scss.css
    au BufRead,BufNewFile *.scss setlocal filetype=scss.css

    au Filetype *css setlocal foldmethod=marker
    au Filetype *css setlocal foldmarker={,}
    au Filetype *css setlocal omnifunc=csscomplete#CompleteCSS
    au Filetype *css setlocal iskeyword+=-

    au Filetype *css nnoremap <localleader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au FileType *css inoremap <buffer> {<cr> {}<left><cr><space><space>.<cr><esc>kA<bs>
    " }
augroup END
" }}}
" Django {{{
augroup ft_django
    au!

    au BufNewFile,BufRead urls.py           setlocal nowrap
    au BufNewFile,BufRead urls.py           normal! zR
    au BufNewFile,BufRead dashboard.py      normal! zR
    au BufNewFile,BufRead local_settings.py normal! zR

    au BufNewFile,BufRead admin.py     setlocal filetype=python.django
    au BufNewFile,BufRead urls.py      setlocal filetype=python.django
    au BufNewFile,BufRead models.py    setlocal filetype=python.django
    au BufNewFile,BufRead views.py     setlocal filetype=python.django
    au BufNewFile,BufRead settings.py  setlocal filetype=python.django
    au BufNewFile,BufRead settings.py  setlocal foldmethod=marker
    au BufNewFile,BufRead forms.py     setlocal filetype=python.django
    au BufNewFile,BufRead common_settings.py  setlocal filetype=python.django
    au BufNewFile,BufRead common_settings.py  setlocal foldmethod=marker
augroup END
" }}}
" Firefox {{{
augroup ft_firefox
    au!
    au BufRead,BufNewFile ~/Library/Caches/*.html setlocal buftype=nofile
augroup END
" }}}
" Fish {{{
augroup ft_fish
    au!

    au BufNewFile,BufRead *.fish setlocal filetype=fish

    au FileType fish setlocal foldmethod=marker foldmarker={{{,}}}
augroup END
" }}}
" Go {{{
" }}}
" Haml {{{
augroup ft_haml
    au!
    au BufRead,BufNewFile *.hamlc setlocal ft=haml
augroup END
" }}}
" HTML and handlebars {{{
augroup ft_html
    au!

    au FileType html* setlocal foldlevel=99
    au FileType html* setlocal foldmethod=manual
    au FileType html* setlocal omnifunc=htmlcomplete#CompleteTags

    au FileType html* setlocal tabstop=4 shiftwidth=4 softtabstop=4

    " Use <localleader>f to fold the current tag.
    au FileType html* nnoremap <buffer> <localleader>f Vatzf

    " Indent tag
    au FileType html* nnoremap <buffer> <localleader>- Vat=

    " Underscore tags
    au FileType html* inoremap <buffer> <c-t> <%=<space><space>%><left><left><left>
    au FileType html* inoremap <buffer> <c-r> <%<space><space>%><left><left><left>

    " handlebars tags
    au FileType *.handlebars inoremap <buffer> <c-b> {{<space><space>}}<left><left><left>
augroup END
" }}}
" Java {{{
augroup ft_java
    au!

    au FileType java setlocal foldmethod=marker
    au FileType java setlocal foldmarker={,}

    au Filetype java setlocal makeprg=javac\ %
    au Filetype java setlocal errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

    au FileType java nnoremap <silent> <buffer> <localleader>i :JavaImport<cr>
    au FileType java nnoremap <silent> <buffer> <localleader>d :JavaDocSearch -x declarations<cr>
    au FileType java nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

    au Filetype java map <buffer> <F8> :ProjectBuild
    au Filetype java map <buffer> <F9> :Java
    " au Filetype java map <buffer> <F10> :cnext<Return>
augroup END
" }}}
" Javascript {{{
augroup ft_javascript
    au!
    au FileType javascript setlocal foldmethod=marker
    au FileType javascript setlocal foldmarker={,}
    au Filetype javascript setlocal foldtext=getline(v:foldstart)
    au FileType javascript call MakeSpacelessBufferIabbrev('clog', 'console.log();<left><left>')
    au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    au FileType javascript setlocal shiftwidth=4 softtabstop=4 tabstop=4
    au Filetype javascript setlocal foldlevel=99

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au Filetype javascript inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
augroup END
" }}}
" JSON {{{
augroup ft_json
    autocmd!
    autocmd FileType json setlocal autoindent
    autocmd FileType json setlocal formatoptions=tcq2l
    autocmd FileType json setlocal shiftwidth=2 softtabstop=2 tabstop=8
    autocmd FileType json setlocal foldmethod=syntax
    autocmd FileType json setlocal expandtab
    autocmd BufNewFile,BufRead *.json normal zR
augroup END
" }}}
" Markdown {{{
augroup ft_markdown
    au!

    au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} setlocal filetype=markdown
    au FileType markdown normal! zR
    au FileType markdown setlocal foldlevel=1
    au FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags

    " Use <localleader>1/2/3 to add headings.
    au Filetype markdown nnoremap <buffer> <localleader>1 yypVr=:redraw<cr>
    au Filetype markdown nnoremap <buffer> <localleader>2 yypVr-:redraw<cr>
    au Filetype markdown nnoremap <buffer> <localleader>3 mzI###<space>`zllll <ESC>
    au Filetype markdown setlocal nofoldenable    " disable folding"
augroup END
" }}}
" Nginx {{{
augroup ft_nginx
    au!

    au BufRead,BufNewFile /etc/nginx/conf/*                      setlocal ft=nginx
    au BufRead,BufNewFile /etc/nginx/sites-available/*           setlocal ft=nginx
    au BufRead,BufNewFile /usr/local/etc/nginx/sites-available/* setlocal ft=nginx
    au BufRead,BufNewFile vhost.nginx                            setlocal ft=nginx

    au FileType nginx setlocal foldmethod=marker foldmarker={,}
augroup END
" }}}
" Postgresql {{{
augroup ft_postgres
    au!

    au BufNewFile,BufRead *.sql setlocal filetype=pgsql
    au FileType pgsql setlocal foldmethod=indent
    au FileType pgsql setlocal softtabstop=2 shiftwidth=2
augroup END
" }}}
" Python {{{
augroup ft_python
    au!

    au FileType python setlocal define=^\s*\\(def\\\\|class\\)
    au FileType man nnoremap <buffer> <cr> :q<cr>
    au FileType python setlocal omnifunc=pythoncomplete#Complete
    au FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4

    " Jesus tapdancing Christ, built-in Python syntax, you couldn't let me
    " override this in a normal way, could you?
    au FileType python if exists("python_space_error_highlight") | unlet python_space_error_highlight | endif

    " Jesus, Python.  Five characters of punctuation for a damn string?
    au FileType python inoremap <buffer> <c-g> _(u'')<left><left>

    au FileType python inoremap <buffer> <c-b> """"""<left><left><left>
augroup END
" }}}
" QuickFix {{{
augroup ft_quickfix
    au!
    au Filetype qf setlocal colorcolumn=0 nolist nocursorline nowrap tw=0
augroup END
" }}}
" Ruby {{{
augroup ft_ruby
    au!
    au BufRead,BufNewFile Vagrantfile,Capfile setlocal filetype=ruby
    au Filetype ruby setlocal foldmethod=syntax
    au FileType ruby setlocal omnifunc=rubycomplete#Complete
augroup END
" }}}
" Scala {{{
augroup ft_scala
    au!
    au Filetype scala setlocal foldmethod=marker foldmarker={,}
    au Filetype scala compiler maven
    au Filetype scala let b:dispatch = 'mvn -B package install'
    au Filetype scala nnoremap <buffer> <localleader>S :SortScalaImports<cr>
    au Filetype scala nnoremap <buffer> M :call scaladoc#Search(expand("<cword>"))<cr>
    au Filetype scala vnoremap <buffer> M "ry:call scaladoc#Search(@r)<cr>
    au Filetype scala nmap <buffer> <localleader>( ysiwbi
    au Filetype scala nmap <buffer> <localleader>[ ysiwri
    ")]
augroup END
" }}}
" Vim {{{
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
    au FileType help setlocal textwidth=78
    au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
    au FileType vim setlocal shiftwidth=4 softtabstop=4 tabstop=4
augroup END
" }}}
" Vimrc {{{
augroup myvimrc
    au!
    au BufWritePost .vimrc,vimrc so %
augroup END
" }}}
" YAML {{{
augroup ft_yaml
    au!

    au FileType yaml setlocal shiftwidth=2
augroup END
" }}}
" XML {{{
augroup ft_xml
    au!

    au FileType xml setlocal foldmethod=manual
    au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    " Use <localleader>f to fold the current tag.
    au FileType xml nnoremap <buffer> <localleader>f Vatzf

    " Indent tag
    au FileType xml nnoremap <buffer> <localleader>= Vat=
augroup END
" }}}
" }}}
" Plugin settings --------------------------------------------------------- {{{
" Ag {{{
" nnoremap <leader>a :AgFromSearch<CR>
let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
" }}}
" CamelCaseMotion {{{
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

" Replace the default 'w', 'b' and 'e' mappings instead of defining additional mappings ',w', ',b' and ',e'
" map <silent> w <Plug>CamelCaseMotion_w
" map <silent> b <Plug>CamelCaseMotion_b
" map <silent> e <Plug>CamelCaseMotion_e
" sunmap w
" sunmap b
" sunmap e

" Replace default 'iw' text-object and define 'ib' and 'ie' motions:
" omap <silent> iw <Plug>CamelCaseMotion_iw
" xmap <silent> iw <Plug>CamelCaseMotion_iw
" omap <silent> ib <Plug>CamelCaseMotion_ib
" xmap <silent> ib <Plug>CamelCaseMotion_ib
" omap <silent> ie <Plug>CamelCaseMotion_ie
" xmap <silent> ie <Plug>CamelCaseMotion_ie
" }}}
" Commentary {{{
nmap <leader>c <Plug>CommentaryLine
xmap <leader>c <Plug>Commentary

augroup plugin_commentary
    au!
    au FileType handlebars setlocal commentstring={{!\ %s\ }}
    au FileType htmldjango setlocal commentstring={#\ %s\ #}
    au FileType clojurescript setlocal commentstring=;\ %s
    au FileType puppet,fish,tmux setlocal commentstring=#\ %s
augroup END
" }}}
" CtrlSF {{{
vmap     <leader>a <Plug>CtrlSFVwordPath
nmap     <leader>a <Plug>CtrlSFCwordPath
nnoremap <leader>A :CtrlSFOpen<CR>
vnoremap <leader>A :CtrlSFOpen<CR>
au FileType ctrlsf nnoremap <buffer> <leader>A :CtrlSFClose<CR>
au FileType ctrlsf vnoremap <buffer> <leader>A :CtrlSFClose<CR>
" For some strage reason, CtrlSF maps q to a call. Don't fuck with macros CtrlSF!

let g:ctrlsf_ackprg = 'ag'
" }}}
" Ctrl-P {{{
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_split_window = 0
let g:ctrlp_max_height = 20
let g:ctrlp_extensions = ['tag']
let g:ctrlp_map = '<leader>,'
let g:ctrlp_custom_ignore = 'static'

let g:ctrlp_prompt_mappings = {
            \ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
            \ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
            \ 'PrtHistory(-1)':       ['<c-n>'],
            \ 'PrtHistory(1)':        ['<c-p>'],
            \ 'ToggleFocus()':        ['<c-tab>'],
            \ }

let ctrlp_filter_greps = "".
            \ "egrep -iv '\\.(" .
            \ "jar|class|swp|swo|log|so|o|pyc|jpe?g|png|gif|mo|po" .
            \ ")$' | " .
            \ "egrep -v '^(\\./)?(" .
            \ ".git/|.hg/|.svn/" .
            \ ")'"

let my_ctrlp_user_command = "" .
            \ "find %s '(' -type f -or -type l ')' -maxdepth 15 -not -path '*/\\.*/*' | " .
            \ ctrlp_filter_greps

let my_ctrlp_git_command = "" .
            \ "cd %s && git ls-files --exclude-standard -co | " .
            \ ctrlp_filter_greps

let my_ctrlp_ffind_command = "ffind --semi-restricted --dir %s --type e -B -f"

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    " Use Ag over Grep
    set grepprg="ag\ --nogroup\ --nocolor"

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let my_ctrlp_user_command = "" .
                \ 'ag %s -l --nocolor -g "" | ' .
                \ ctrlp_filter_greps

endif

let g:ctrlp_user_command = ['.git/', my_ctrlp_git_command, my_ctrlp_user_command]

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
" }}}
" EasyMotion {{{
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <localleader>s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap <localleader>s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <localleader>l <Plug>(easymotion-lineforward)
map <localleader>j <Plug>(easymotion-j)
map <localleader>k <Plug>(easymotion-k)
map <localleader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" " Gif config
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
" }}}
" Emmet {{{
let g:user_emmet_leader_key = '<C-g>'
let g:use_emmet_complete_tag = 1
" }}}
" Fugitive {{{
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>go :Gcheckout<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gl :Shell git gl -18<cr>:wincmd \|<cr>

augroup ft_fugitive
    au!

    au BufNewFile,BufRead .git/index setlocal nolist
augroup END

" "Hub"
nnoremap <leader>gh :Gbrowse<cr>
vnoremap <leader>gh :Gbrowse<cr>
" }}}
" GitGutter {{{
nmap [h <Plug>GitGutterPrevHunk
nmap ]h <Plug>GitGutterNextHunk
" }}}
" Go {{{
let g:go_doc_keywordprg_enabled = 0

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" }}}
" Gundo {{{
nnoremap <F5> :GundoToggle<CR>

let g:gundo_debug = 1
let g:gundo_preview_bottom = 1
let g:gundo_tree_statusline = "Gundo"
let g:gundo_preview_statusline = "Gundo Preview"
" }}}
" HTML5 {{{
let g:event_handler_attributes_complete = 0
let g:rdfa_attributes_complete = 0
let g:microdata_attributes_complete = 0
let g:atia_attributes_complete = 0
" }}}
" JSBeautify {{{
autocmd FileType javascript nnoremap <buffer>  <leader>f :call JsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <leader>f :call RangeJsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  = :call RangeJsBeautify()<cr>
" for html
autocmd FileType html nnoremap <buffer> <leader>f :call HtmlBeautify()<cr>
autocmd FileType html vnoremap <buffer> <leader>f :call RangeHtmlBeautify()<cr>
" for css or scss
autocmd FileType css nnoremap <buffer> <leader>f :call CSSBeautify()<cr>
autocmd FileType css vnoremap <buffer> <leader>f :call RangeCSSBeautify()<cr>

" }}}
" JSON {{{
let g:vim_json_syntax_conceal = 0
" }}}
" JS-Indent {{{
let g:js_indent_flat_switch = 1
" }}}
" Lightline {{{
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
            \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
            \ },
            \ 'component_function': {
            \   'modified': 'MyModified',
            \   'readonly': 'MyReadonly',
            \   'fugitive': 'MyFugitive',
            \   'filename': 'MyFilename',
            \   'fileformat': 'MyFileformat',
            \   'filetype': 'MyFiletype',
            \   'fileencoding': 'MyFileencoding',
            \   'mode': 'MyMode',
            \   'ctrlpmark': 'CtrlPMark',
            \ },
            \ 'component_expand': {
            \   'syntastic': 'SyntasticStatuslineFlag',
            \ },
            \ 'component_type': {
            \   'syntastic': 'error',
            \ },
            \ 'separator': { 'left': '⮀', 'right': '⮂' },
            \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
            \ }


function! MyModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! MyFilename()
    let fname = expand('%:t')
    return fname == 'ControlP' ? g:lightline.ctrlp_item :
                \ fname == '__Tagbar__' ? g:lightline.fname :
                \ fname =~ '__Gundo\|NERD_tree' ? '' :
                \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
                \ &ft == 'unite' ? unite#get_status_string() :
                \ &ft == 'vimshell' ? vimshell#get_status_string() :
                \ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
                \ ('' != fname ? fname : '[No Name]') .
                \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
    try
        if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
            let mark = '⭠ '  " edit here for cool mark
            let _ = fugitive#head()
            return strlen(_) ? mark._ : ''
        endif
    catch
    endtry
    return ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
                \ fname == 'ControlP' ? 'CtrlP' :
                \ fname == '__Gundo__' ? 'Gundo' :
                \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
                \ fname =~ 'NERD_tree' ? 'NERDTree' :
                \ &ft == 'unite' ? 'Unite' :
                \ &ft == 'vimfiler' ? 'VimFiler' :
                \ &ft == 'vimshell' ? 'VimShell' :
                \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
    if expand('%:t') =~ 'ControlP'
        call lightline#link('iR'[g:lightline.ctrlp_regex])
        return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
                    \ , g:lightline.ctrlp_next], 0)
    else
        return ''
    endif
endfunction

let g:ctrlp_status_func = {
            \ 'main': 'CtrlPStatusFunc_1',
            \ 'prog': 'CtrlPStatusFunc_2',
            \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
    let g:lightline.ctrlp_regex = a:regex
    let g:lightline.ctrlp_prev = a:prev
    let g:lightline.ctrlp_item = a:item
    let g:lightline.ctrlp_next = a:next
    return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
    return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
    return lightline#statusline(0)
endfunction

augroup AutoSyntastic
    autocmd!
    autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
    SyntasticCheck
    call lightline#update()
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
" }}}
" Linediff {{{
vnoremap <leader>d :Linediff<cr>
nnoremap <leader>D :LinediffReset<cr>
" }}}
" ListToggle {{{
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10
" }}}
" Livedown {{{
nmap <leader>P :LivedownPreview<CR>
" }}}
" NERD Tree {{{
noremap  <leader>n :NERDTreeToggle<cr>

" Open the project tree and expose current file in the nerdtree with ,N
nnoremap <Leader>N :NERDTreeFind<CR>

augroup ps_nerdtree
    au!

    au Filetype nerdtree setlocal nolist
    au Filetype nerdtree nnoremap <buffer> H :vertical resize -10<cr>
    au Filetype nerdtree nnoremap <buffer> L :vertical resize +10<cr>
augroup END

let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['\~$', '.*\.pyc$']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
" }}}
" Rainbow parentheses {{{
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
nmap <leader>r :RainbowParenthesesToggle<CR>
" }}}
" Syntastic {{{
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1
let g:syntastic_java_checker = 'javac'
let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "active_filetypes": [],
            \ "passive_filetypes": ['java', 'html', 'rst', 'scala']
            \ }

let g:syntastic_disabled_filetypes = ['html', 'rst']
let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}]'
let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol  = '⚡'
let g:syntastic_style_warning_symbol  = '⚡'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" Tagbar {{{
nmap <F3> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
" }}}
" Tern {{{
let g:tern_map_keys=1
let g:tern_show_arguments_hits='on_hold'
" }}}
" UltiSnips {{{
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnippets"]
" }}}
" Vim-Notes {{{
let g:notes_directories = ['~/Documents/Notes', '~/Dropbox/Notes']

" Make the C-] combination search for @tags:
autocmd FileType notes imap <C-]> <C-o>:SearchNotes<CR>
autocmd FileType notes nmap <C-]> :SearchNotes<CR>"
" }}}
" YankRing {{{
nnoremap <silent> <F4> :YRShow<CR>

function! YRRunAfterMaps()
    " Make Y yank to end of line.
    nnoremap Y :<C-U>YRYankCount 'y$'<CR>

    " Fix L and H in operator-pending mode, so yH and such works.
    omap <expr> L YRMapsExpression("", "$")
    omap <expr> H YRMapsExpression("", "^")

    " Don't clobber the yank register when pasting over text in visual mode.
    vnoremap p :<c-u>YRPaste 'p', 'v'<cr>gv:YRYankRange 'v'<cr>
endfunction
" }}}
" YouCompleteMe {{{
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-p>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-n>']

" enable completion from tags
let g:ycm_collect_identifiers_from_tags_files = 1
" }}}
" }}}
" Mini-plugins ------------------------------------------------------------ {{{
" Stuff that should probably be broken out into plugins, but hasn't proved to be
" worth the time to do so just yet.

" Synstack {{{
" Show the stack of syntax hilighting classes affecting whatever is under the
" cursor.
function! SynStack()
    echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), " > ")
endfunc

nnoremap <F7> :call SynStack()<CR>
" }}}
" Block Colors {{{
let g:blockcolor_state = 0
function! BlockColor() " {{{
    if g:blockcolor_state
        let g:blockcolor_state = 0
        call matchdelete(77881)
        call matchdelete(77882)
        call matchdelete(77883)
        call matchdelete(77884)
        call matchdelete(77885)
    else
        let g:blockcolor_state = 1
        call matchadd("BlockColor1", '^ \{4}.*', 1, 77881)
        call matchadd("BlockColor2", '^ \{8}.*', 2, 77882)
        call matchadd("BlockColor3", '^ \{12}.*', 3, 77883)
        call matchadd("BlockColor4", '^ \{16}.*', 4, 77884)
        call matchadd("BlockColor5", '^ \{20}.*', 5, 77885)
    endif
endfunction " }}}
" Default highlights {{{
hi def BlockColor1 guibg=#222222
hi def BlockColor2 guibg=#2a2a2a
hi def BlockColor3 guibg=#353535
hi def BlockColor4 guibg=#3d3d3d
hi def BlockColor5 guibg=#444444
" }}}
nnoremap <leader>B :call BlockColor()<cr>
" }}}
" }}}
" Environments (GUI/Console) ---------------------------------------------- {{{
if has('gui_running')
    " GUI Vim

    " Remove all the UI cruft
    set go-=T                       " Hide the toolbar
    set go-=m                       " Hide the menu
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    highlight SpellBad term=underline gui=undercurl guisp=Orange

    " Different cursors for different modes.
    set guicursor=n-c:block-Cursor-blinkon0
    set guicursor+=v:block-vCursor-blinkon0
    set guicursor+=i-ci:ver20-iCursor

    map <silent> <F11>
                \    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

    if has("gui_macvim")
        " Full screen means FULL screen
        set fuoptions=maxvert,maxhorz

        " Use the normal HIG movements, except for M-Up/Down
        let macvim_skip_cmd_opt_movement = 1
        no   <D-Left>       <Home>
        no!  <D-Left>       <Home>
        no   <M-Left>       <C-Left>
        no!  <M-Left>       <C-Left>

        no   <D-Right>      <End>
        no!  <D-Right>      <End>
        no   <M-Right>      <C-Right>
        no!  <M-Right>      <C-Right>

        no   <D-Up>         <C-Home>
        ino  <D-Up>         <C-Home>
        imap <M-Up>         <C-o>{

        no   <D-Down>       <C-End>
        ino  <D-Down>       <C-End>
        imap <M-Down>       <C-o>}

        imap <M-BS>         <C-w>
        inoremap <D-BS>     <esc>my0c`y

    elseif has("gui_gtk2")
        " Maximize gvim window.
        set lines=999 columns=999
    else
        " Non-MacVim GUI
    end
else
    " Console Vim
    " For me, this means iTerm2, possibly through tmux

    set t_Co=256

    " Mouse support
    set mouse=a
endif

set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h12
" }}}
" TODO {{{
" * Add more customized snippets
" * Move filetype specific options to ftplugins dir
" }}}