au! BufWritePost .vimrc source %
let g:jedi#auto_initialization = 0

syntax on
filetype on
filetype indent on

"filetype plugin on
"call pathogen#incubate()
"call pathogen#helptags()
"colorscheme morning

set guifont=monospace\ 16
set nocompatible
set tags=tags,./tags,.././tags
set ignorecase
set autoindent shiftwidth=2
set textwidth=79
set expandtab
set tabstop=2
set softtabstop=2
set hls is		" Highlight search
set nu
" set cscopequickfix=s-,c-,d-,i-,t-,e-
set mouse=a
set wildmode=longest:full
set wildmenu
set backspace=indent,eol,start

nmap <A-Left> <C-O>
nmap <A-Right> <C-I>
nmap <S-O> :!ctags -x --c-types=f -o - %<CR>
nmap <F1> :cprev<CR>
nmap <F2> :cn<CR>
"nmap <F3> :tab split<CR> g<C-]>
nmap <C-]> g<C-]>
nmap <C-A> g<C-]>
nmap <C-T> :tabnew<CR>
nmap <C-O> :pop<CR>
nmap <C-I> :tag<CR>
nmap <S-C-p> %
nmap <C-F11> :tabp<CR>
nmap <C-F12> :tabn<CR>
nmap <S-F11> :execute TabLeft()<CR>
nmap <S-F12> :execute TabRight()<CR>
nmap <F5> :edit<CR>
imap <C-space> <C-N>
nmap <C-\>j :execute '%!python -m json.tool' <CR>
inoremap <tab> <c-r>=Smart_TabComplete()<CR>
nmap <C-S> :w<CR>
nmap <C-L> :TlistToggle<CR>

"imap <Nul> <C-N>
"inoremap <Nul> <C-X><C-O>


nmap ,s :find %:t:r.c<CR>
nmap ,ss :find %:t:r.cc<CR>
nmap ,h :find %:t:r.h<CR>
nmap ,h :find %:t:r.h<CR>



function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <A-Up> :call <SID>swap_up()<CR>
noremap <silent> <A-Down> :call <SID>swap_down()<CR>

function! PythonIndex()
    execute "!find . -name '*.py'> cscope.files"
    execute "!ctags -R"
    execute "!cscope -b"
    execute "cs reset"
endfunction

function! Index()
    execute "!ctags -R"
    execute "!cscope -bkqR"
    execute "cs reset"
endfunction

function! TabLeft()
	let tab_number = tabpagenr() - 1
	if tab_number == 0
			execute "tabm" tabpagenr('$') - 1
	else
			execute "tabm" tab_number - 1
	endif
endfunction

function! TabRight()
	let tab_number = tabpagenr() - 1
	if tab_number == tabpagenr('$') - 1
		execute "tabm" 0
	else
		execute "tabm" tab_number + 1
	endif
endfunction


function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction


inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


"cs add ./cscope.out ./


let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
let g:winManagerWindowLayout='FileExplorer|TagList'


set completeopt=longest,menu
let g:jedi#popup_on_dot = 0


let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"


nmap wm :WMToggle<cr>


"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>r :call Index() <CR>
nmap <C-\>p :call PythonIndex() <CR>
nmap <F6> :cp<CR>
nmap <F7> :cn<CR>

set comments=://
set cmdheight=1
set showtabline=2 
set tpm=10
set tal=10
set csto=1
set shortmess+=A
set paste

"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1


