set tags=./tags,tags,../tags,/usr/include/tags,/usr/src/tags,~/.vim/systags 
"set autochdir
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    "add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        "else add database pointed to by enviroment
    elseif $CSCOPE_DB!=""
        cs add $CSOPE_DB
    endif
    set csverb
    set cscopetag
    set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-,s-
endif

set encoding=utf-8
set fencs=utf-8,gb18030,utf-16,gb2312,big5,cp936
syn on
set guifont=Luxi\Mono\9
set smarttab
"replace tap with space
set expandtab 
set tabstop=4
"del before 4 space
set softtabstop=4
set timeoutlen=500
set shiftwidth=4
set shiftround
set autoindent
set smartindent
set cindent
set backspace=2
set ai!
"set nu!
set showmatch
set ruler
set incsearch
set mouse=a
set mousehide
set winaltkeys=no
set nobackup
setlocal noswapfile
set bufhidden=hide
set nocp
set helplang=cn
"set guioptions-=T
"set guioptions-=m
set tabpagemax=20
" 高亮当前行
"set cursorline
set nocursorcolumn
set showcmd
set history=200
set autoread 
set clipboard+=unnamed
set t_Co=256
"set number 
set wildmenu 
" 上下移动时，留2行
set so=2
set backspace=eol,start,indent
" Backspace and cursor keys wrap to
set whichwrap+=<,>,h,l

" set magic on 
set magic 

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
" How many tenths of a second to blink
set mat=2
" 状态栏
set laststatus=2
set updatetime=100
let mapleader=";"
let g:mapleader=";"

" colo tcsoft 
syntax on
autocmd! bufwritepost .vimrc source %
filetype on 
filetype plugin on
filetype indent on 

let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
let Tlist_File_Fold_Auto_Close = 1
"let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_Left_Window = 1
let Tlist_Use_SingleClick = 1

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindows=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Auto_Oper=1
let Tlist_Exit_OnlyWindow=1
autocmd CursorMoved * silent! Tlist_Refresh
map tl :TlistToggle<CR>

"map <C-e> :NERDTreeToggle<CR>
map nt :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
nmap <silent> <leader>/ :nohlsearch<CR>
let NERDTreeShowBookmarks=1
"let NERDTreeIgnore=['\.pyc', '\.o$', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\lib*']
let NERDTreeIgnore=['\.\w*[^chp]$', '\..[^p]p$', '\.[^c]pp$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

"minibuf
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBUfExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

map <S-F4> :/<C-R>=expand("<cword>")<CR><CR>
map <S-F3> :?<C-R>=expand("<cword>")<CR><CR>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>   
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>   
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let OmniCpp_GlobalScopeSearch = 1  " 0 or 1
let OmniCpp_NamespaceSearch = 2   " 0 ,  1 or 2
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_localSearchDecl = 1
let Omni_DefaultNamespaces = ["std","_GLIBCXX_STD"]
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt+=longest,menu,preview

let g:C_Ctrl_j='off'
nmap <C-J> <C-w>j
map <C-K> <C-w>k
map <C-H> <C-w>h
map <C-L> <C-w>l
map <C-TAB> <C-w>w

imap jj <esc>l
inoremap <C-K> <Up>
inoremap <C-J> <Down>
inoremap <C-H> <Left>
inoremap <C-L> <Right>

imap <C-H> <C-O><C-W>h<ESC>
imap <C-J> <C-O><C-W>j<ESC>
imap <C-K> <C-O><C-W>k<ESC>
imap <C-L> <C-O><C-W>l<ESC>

nmap bd <esc>:q<CR>
nmap <Space> <C-f>
"set foldmethod=indent
" Set the refreshing time interval, such as 2 seconds
let g:SrcExpl_RefreshTime   = 2
" Initialize the height of the Source Explorer window
let g:SrcExpl_WinHeight     = 9
" Make your own map key to force to do a refreshing
let g:SrcExpl_RefreshMapKey = "<F1>"
" Make your own map key for 'SrcExplGoBack' operation
let g:SrcExpl_GoBackMapKey  = "<F2>"
" Toggles the Source Explorer on and off
nmap <F8> :SrcExplToggle<CR>


" --------------------
" ShowMarks
" --------------------
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
" For marks a-z
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
" For marks A-Z
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
" For all other marks
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen


" Session 
set sessionoptions-=curdir
set sessionoptions+=sesdir

map <leader>e :e!<cr>

" 快速重载配置文件
map <leader>s :source ~/.vimrc<cr> 

" 当.vimrc被修改时，重载之
autocmd! bufwritepost vimrc source ~/.vimrc 

" 自动跳转到上一次打开的位置
autocmd BufReadPost *
			\ if line("'\"") > 0 && line ("'\"") <= line("$") |
			\ exe "normal! g'\"" |
			\ endif 

" GUI
if has("gui_running")
	set guioptions-=T
	let psc_style='cool'
endif 


function! CurDir()
	let curdir = substitute(getcwd(), '/home/yinys', "~/", "g")
	return curdir
endfunction
set statusline=\ %f%m%r%h\ %w\ %<CWD:\ %{CurDir()}\ %=Pos:\ %l/%L:%c\ %p%%\ 

" 命令窗口大小
set cmdheight=1
" 文件编码 
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big-5,ucs,latin1


" 文件类型
set ffs=unix,dos
nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

" 不备份文件
set nowritebackup
set completeopt=longest,menu

" for echofunc
let g:EchoFuncLangsUsed = ["c", "cpp", "java"] 
set hidden

command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    botright cw 10
"copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction

nmap <F2> :QFix<CR>
nmap <F3> :cp<CR>
nmap <F4> :cn<CR>
let g:SuperTabDefaultCompletionType = "context"

function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        elseif &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-N>"
        endif
    endif
endfunction

"inoremap <Tab> <C-R>=SuperCleverTab()<cr>

cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
set showmode
"colr"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme darkslategrey
set background=dark
hi clear
if exists("syntax_on")
syntax reset
endif
let g:colors_name="vc"


hi Comment ctermfg=71 
hi Constant ctermfg=21
hi Identifier ctermfg=16
hi Statement ctermfg=21
hi PreProc ctermfg=21
hi Include ctermfg=21
"hi Macro ctermfg=206
hi Type ctermfg=21
hi Special ctermfg=67 
hi Class ctermfg=21
hi Function ctermfg=88
hi String ctermfg=88
hi Member ctermfg=145
hi EnumerationValue ctermfg=206
hi EnumerationName ctermfg=21
hi Namespace ctermfg=21
hi DefinedName ctermfg=206
hi linenr ctermfg=darkblue
hi VertSplit guibg=black guifg=black

"___________________HiFold
function! HiFold(...)
    let tab2space=repeat(nr2char(32),&ts)
    if a:0==0
        let g:HiStr='\t\|'.tab2space
    else
        let g:HiStr=a:1
    endif
    let g:hiLen=strlen(substitute(g:HiStr, ".", "x", "g"))
    set fillchars="fold:"
    set foldmethod=expr
    set foldexpr=HiFoldExpr(v:lnum)
    set foldtext=HiFoldText()
    hi Folded term=bold cterm=bold gui=bold
    hi Folded guibg=NONE guifg=LightBlue
endfunction
function! HiFoldExpr(lnum)
    if getline(a:lnum)!~'\S'
        return "="
    endif
    let si=getline(prevnonblank(a:lnum))
    let sj=getline(nextnonblank(a:lnum+1))
    let i=HiGetHi(si)
    let j=HiGetHi(sj)
    if j==i
        return "="
    elseif j>i
        return ">" . i
    else
        return "<" . j
    endif
endfunction
function! HiGetHi(sline)
    let c=1
    while 1
        let shead='^\(' . g:HiStr . '\)\{' . string(c) . '}'
        if a:sline=~shead
            let c+=1
            continue
        endif
        break
    endwhile
    return (c)
endfunction
function! HiFoldText()
    let sLine=getline(v:foldstart)
    let tab2space=repeat(nr2char(32),&ts)
    let sLine=substitute(sLine,"\t",tab2space,"g")
    let a=(sLine=~"^" . nr2char(32))?".":"^"
    let sLine=substitute(sLine,a,"+","")
    let sLine=sLine . "  ~" . string(v:foldend-v:foldstart)
    return sLine
endfunction

command! -nargs=? HiFold call HiFold(<args>)
colorscheme evening
abbreviate vg vimgrep
set ignorecase
set wildignore=*.swp,*.*~,*.pyc,*.class,*.o
set title
set noswapfile

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map ,f :call ShowFuncName() <CR>

inoremap  :call PhpDocSingle()
nnoremap  :call PhpDocSingle()
vnoremap  :call PhpDocRange()

au FileType php call AddPHPFuncList()
function AddPHPFuncList()
  set dictionary-=~/.vim/dict/funclist.txt dictionary+=~/.vim/dict/funclist.txt
  set complete-=k complete+=k
endfunction

"css list
  au FileType css call AddCssList()
 function AddCssList()
     set dictionary-=~/.vim/dict/csslist.txt dictionary+=~/.vim/dict/csslist.txt
     set complete-=k complete+=k
 endfunction
 
 au FileType js call AddJsList()
 function AddJsList()
     set dictionary-=~/.vim/dict/jslist.txt dictionary+=~/.vim/dict/jslist.txt
     set complete-=k complete+=k
 endfunction
 "自动的增加括号

inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
if getline('.')[col('.') - 1] == a:char
	return "\<Right>"
else
	return a:char
endif
endf

"auto 括号结束

"记住上次的位置 
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif
" 记住上次的位置  结束


