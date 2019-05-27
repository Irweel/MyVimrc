
" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd        " Show (partial) command in status line.
"set showmatch        " Show matching brackets.
"set ignorecase        " Do case insensitive matching
"set smartcase        " Do smart case matching
"set incsearch        " Incremental search
"set autowrite        " Automatically save before commands like :next and :make
"set hidden        " Hide buffers when they are abandoned
"set mouse=a        " Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


" Copyright© Meindert Nennhuber 2011-2018. All rights reserved.
" set nocompatible              " be iMproved, required
" filetype plugin on            " required
" set the runtime path to include Vundle and initialize


set runtimepath^=~/.vim/bundle/vim-airline
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 Plugin 'tpope/vim-unimpaired'
" " expand condensed HTML
 Plugin 'rstacruz/sparkup'
" " color scheme
Plugin 'morhetz/gruvbox'
" " status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" " MySQL
Plugin 'NLKNguyen/pipe.vim'
Plugin 'NLKNguyen/pipe-mysql.vim'
 Plugin 'mustache/vim-mustache-handlebars'
" " Plugin 'ctrlp.vim'
 Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'Yggdroot/indentLine'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'scrooloose/nerdtree'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plugin 'jwalton512/vim-blade'
 Plugin 'ap/vim-css-color'
 Plugin 'Syntastic'
 Plugin 'yegappan/greplace'
 Plugin 'sessionman.vim'
 Plugin 'mattn/emmet-vim'
 Plugin 'majutsushi/tagbar'
 Plugin 'ryanoasis/vim-devicons'
" c
Plugin 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plugin 'ludwig/split-manpage.vim'
" html
"" HTML Bundle
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tpope/vim-haml'
" javascript
"" Javascript Bundle
Plugin 'jelera/vim-javascript-syntax'
" php
"" PHP Bundle
Plugin 'arnaud-lb/vim-php-namespace'
" python
"" Python Bundle
Plugin 'davidhalter/jedi-vim'
Plugin 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'

" " ------------------Barra separadora -----------
 call vundle#end()
 let g:airline#extensions#tabline#enabled = 0
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
 let g:statline_syntastic = 0
 let g:syntastic_javascript_checkers = ['eslint']
 " ctrlp glyphs
 let g:webdevicons_enable_ctrlp = 1
 let g:WebDevIconsUnicodeDecorateFolderNodes = 1
 let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
 let g:airline_powerline_fonts = 1
 let g:NERDTreeFileExtensionHighlightFullName = 1
 let g:NERDTreeExactMatchHighlightFullName = 1
 let g:NERDTreePatternMatchHighlightFullName = 1
 highlight Directory guifg=#aaaaaa ctermfg=white
 let mapleader=","
 syntax on
 set nowrap
 set tabstop=2
 set softtabstop=2
 set shiftwidth=2
 set expandtab
 set smarttab
 set autoindent
 set incsearch
 set hlsearch
 set ignorecase
 set wrapscan
 set wildmenu
 set list listchars=tab:\ \ ,trail:·
 set number 
 set backspace=2 " make backspace work like most other programs
 set conceallevel=0


 set clipboard=unnamedplus
 set noeb vb t_vb=
 highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 match OverLength /%81v.+/
 highlight Directory guifg=#7f7f7f ctermfg=white
 set runtimepath^=~/.vim/bundle/ctrlp.vim
 set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
 set encoding=utf8
 if executable('ag')
"   " Use Ag over Grep
   set grepprg=ag\ --nogroup\ --nocolor
"       " Use ag in CtrlP for listing files. Lightning fast and respects
"       .gitignore
     let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""
--path-to-ignore ~/.agingore'
  let g:ctrlp_max_files=0
    " let g:ctrlp_max_depth=40
 endif
    " " let g:ctrlp_custom_ignore = '(.(git|hg|svn))|(build|vendor|node_modules)'
 augroup filetypedetect
 au BufRead,BufNewFile *.blade.php set filetype=blade
 augroup END
    "   " Open NERD tree with Ctrl+`
 nmap <F2> :NERDTreeToggle<CR>
    "   " Open Tagbar with F2
   nmap <F3> :TagbarToggle<CR>
    "   " Autospell grammar spanish
    nmap <F5> :set spell spelllang=es<CR>
    "   " LaTeX pdf Preview
   nmap <F9> :LLPStartPreview<CR>
    "   " silent! so .vimrc
   if exists("g:loaded_webdevicons")
     call webdevicons#refresh()
   endif


"" Enable autocompletetion:
  set wildmode=longest,list,full

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11
" installed):
"nnoremap <C-y> "+y
"vnoremap <C-y> "+y
"map <C-p> "+P

"Automatically deletes all trailing whitespace on save.
  autocmd BufWritePre * %s/\s\+$//e

:set mouse=n
:set ttymouse=xterm2
set background=dark
"colorscheme atom-dark-256
""hi Normal guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>


" c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab


" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,h1 <h1></h1><++><Esc>9hf<i
autocmd FileType html inoremap ,h2 <h2></h2><++><Esc>9hf<i
autocmd FileType html inoremap ,h3 <h3></h3><++><Esc>9hf<i
"autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ,p <p></p><++><Esc>8hf<i
autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
"autocmd FileType html inoremap ,div <div></div><Enter><Space><Space><++><Esc>0kf<i
autocmd FileType html inoremap ,div <div<Space>class=""><++></div><Space><++><Esc>16hi

" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
augroup END


" php


" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#smart_auto_mappings = 0

" syntastic
let g:syntastic_python_checkers=['python', 'flake8']

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1


autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" disable auto-hide quotes on json-vim

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


    "____        _                  _
 ""/ ___| _ __ (_)_ __  _ __   ___| |_ ___
 " \_ __ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
 " "___ ) | | | | | |_) | |_) |  __/ |_\__ \
 " "|____/|_| |_|_| .__/| .__/ \___|\__|___/
 "               "|_|   |_|
 "
 ""LATEX
" Code snippets


""Latex Config
let g:tex_conceal = ""
let g:tex_flavor='tex'
noremap <Space><Space> <Esc>/<++><Enter>"_c4l

autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,li <Enter>\item<Space>
autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ,bt {\blindtext}
autocmd FileType tex inoremap ,nu $\varnothing$
autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i


"MARKDOWN
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
autocmd Filetype markdown,rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
autocmd Filetype markdown,rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
autocmd Filetype markdown,rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO
