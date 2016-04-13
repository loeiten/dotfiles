"Learn scripting
" http://learnvimscriptthehardway.stevelosh.com/

" Vundle (Manages the plugins [needs to be first])
" https://github.com/gmarik/Vundle.vim
" ==============================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    Plugin 'gmarik/Vundle.vim'
    " NERD-tree plugin
    Plugin 'The-NERD-tree'
    " YouCompleteMe plugin
    Plugin 'valloric/YouCompleteMe'
    " Plugin which generates the .ycm_extra_conf.py file
    Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    " linediff plugin
    " https://github.com/AndrewRadev/linediff.vim
    Plugin 'AndrewRadev/linediff.vim'
    " Rainbow paranthesis
    Plugin 'kien/rainbow_parentheses.vim'
    " LaTeX-Box
    " NOTE: Comment this when using the LaTeX clean-up procedure
    Plugin 'LaTeX-Box-Team/LaTeX-Box'

    " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ==============================================================================

" Rainbow options
" ==============================================================================
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
" ==============================================================================

" LaTeXBoX option
" ==============================================================================
let g:LatexBox_Folding=1    " Enable folding
" ==============================================================================

" Set the global leader
let mapleader = "-"

" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Own mappings
" ==============================================================================
" Makes it possible to open vimrc and execute it as a script
" Changes will be effective immediately
" Open the ~/.vimrc with ev, add mapping, then use sv
nnoremap <leader>ev :tabe $MYVIMRC<CR>
nnoremap <leader>sv :w<CR> :source $MYVIMRC<CR>
nnoremap <leader>eb :tabe $HOME/.bashrc<CR>
nnoremap <leader>sb :w<CR> :!source $HOME/.bashrc<CR>

" Mark a word and put quotation marks around it
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Open a new line without entering insert mode
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

" Delete without copying to the register
vnoremap <leader>d "_d

" Close current buffer
nnoremap <leader>c :q<CR>

" Open current tab
nnoremap <leader>tt :tabe<CR>
" Close current tab
nnoremap <leader>tc :tabclose<CR>

" Diff this and diff off
nnoremap <leader>dt :difft<CR>
nnoremap <leader>do :diffoff<CR>
vnoremap <leader>ld :Linediff<CR>
" ==============================================================================


" Learn vim mappings
" Touch typing tutorial
" http://www.typingclub.com/typing-qwerty-en.html
" ==============================================================================
" NOP means no operation. Nothing will happen if you try to use these
" http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
" Use hjkl
nnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Right> <NOP>
" Use Ctrl-h to delete one character, Ctrl-w one word, Ctrl-u the whole line
inoremap <Backspace> <NOP>
" Use your mappings
inoremap <ESC> <NOP>
" ==============================================================================


" These are the set commands used
" ==============================================================================
set nocompatible		" Necessary  for lots of cool vim things
set nowrap                      " Vim does not wrap the text
set autoindent                  " Vim indents
set expandtab			" Spaces instead of tab character
set smarttab                    " Vim understands where the next tabs begins
set number			" Line Numbers
set ignorecase			" Ignoring case
set smartcase			" Ignore case only for first letter
set hlsearch			" Highlight things that we find with the search
set is				" Highlights all
set splitbelow                  " Sets the default split
set cmdheight=1                 " Sets the height of the command line to one
set shiftwidth=4		" 4 character tab
set softtabstop=4               " Display of real tab
set backspace=2                 " Backspace works as expected
"set whichwrap+=<,>,h,l          " Let the arrow keys (and h and l) change line
"                                " < and > are the arrow keys in n and v
"                                " [ and ] are the arrow keys in i
set textwidth=79                " Set to wrap at 80 characthers
set laststatus=2                " Always show the status bar
set statusline=%f%m%r%h\ [%L]\ [%{&ff}]\ %y%=[%p%%]\ [%l,%v]
                                "Set the status line
                                "http://stackoverflow.com/questions/4390011/how-do-you-write-text-on-the-status-line-with-the-filename-row-and-col-number-w
" ==============================================================================


" Color the syntax
" ==============================================================================
syntax on
" ==============================================================================


" Inline mode abbrivations
" ==============================================================================
iabbrev adn and
iabbrev ahve have
iabbrev implimentation implementation
iabbrev lenght length
iabbrev rigth right
iabbrev taht that
iabbrev tehn then
iabbrev teh the
iabbrev woudl would
iabbrev waht what
iabbrev wtha what
" ==============================================================================


" General mappings
" ==============================================================================
" Typing nt toggles NERDTree
nnoremap nt :NERDTreeToggle <CR>

" Map ctrl-movement keys to window switching
nnoremap <C-k> <C-w><Up>
nnoremap <C-j> <C-w><Down>
nnoremap <C-l> <C-w><Right>
nnoremap <C-h> <C-w><Left>

" remap jk to escape in insert mode
inoremap jk <Esc>
vnoremap <leader>jk <Esc>

"Makes F3 a toggle of numbering
nnoremap <F3> :set nonumber!<CR>

"Makes F8 a toggle of numbering
nnoremap <F8> :RainbowParenthesesToggle<CR>

" Toggles the paste
set pastetoggle=<F2>

" Select visual word
nnoremap <SPACE> viw

" Go to start of line and end of line
nnoremap <leader>H ^
nnoremap H 0
nnoremap L $
vnoremap <leader>H ^
vnoremap H 0
vnoremap L $h

" Mark search and replace visually selected
vnoremap <C-r> "hy:%s/\<<C-r>h\>//gc<left><left><left>

" Latex remap
nnoremap <leader>lr9 a\L(\R)<esc>hhi
vnoremap <leader>lr9 xa\L(\R)<esc>hhhp
" ==============================================================================


" YouCompleteMe
" ==============================================================================
" Path (for global ycm_extra_conf)
let g:ycm_global_ycm_extra_conf = '/home/mmag/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" Do not ask to confirm if ycm find a .ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 0
" Go to definition
nnoremap <leader>jd :YcmCompleter GoTo<CR>
" ==============================================================================


" File specific settings
" For all files: Remove trailing whitespaces on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" For all files except makefile: Replace tabs with spaces
autocmd BufWritePre *.py,*.cxx,*.cpp,*.c,*.h,*.hxx,*.tex retab! 4
" If the filetype is found, a function specifying the settings is called
autocmd BufNewFile,BufRead,BufEnter *.py call Set_Python_Options()
autocmd BufNewFile,BufRead,BufEnter *.cxx,*.cpp,*.c,*.h,*.hxx call Set_C_Cpp_Options()
autocmd BufNewFile,BufRead,BufEnter Make,Makefile,make,make call Set_Makefile_Options()
autocmd BufNewFile,BufRead,BufEnter *.tex call Set_tex_Options()


" Remove trailing whitespaces on save
" ==============================================================================
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    " Removes whitespace
    %s/\s\+$//e
    " Removes the end-lines
    %s/\($\n\s*\)\+\%$//e
    call cursor(l, c)
endfunction
" ==============================================================================


" Generic comment function
" ==============================================================================
function! ToggleComment(symbol)
    " Get the character length of the input
    let str_len = strlen(a:symbol)
    " Get current cursor
    let l = line(".")
    let c = col(".")
    " Go to first non-white character
    execute "normal! ^"
    " Get character under cursor
    " Initialize first_chars with the first character
    let first_chars = matchstr(getline('.'), '\%' . col('.') . 'c.')
    " We start at 2: If str_len is one and we start at one => we enter the for
    " loop
    for cur_char in range(2,str_len)
        " Go one character forward
        execute "normal! l"
        " Append the character
        let first_chars = first_chars.matchstr(getline('.'), '\%' . col('.') . 'c.')
    endfor
    " Question mark case-insensitive no matter what the user has set
    if first_chars !=? a:symbol
        " Do the commenting (. is the concatination operation)
        execute "normal! I".a:symbol." "
        " Call back the cursor
        call cursor(l, c+str_len+1)
    else
        " Go to first non-white character
        execute "normal! ^"
        " Remove the comment
        execute "normal! ".string(str_len+1)."x"
        " Call back the cursor
        call cursor(l, c-str_len-1)
    endif
endfunction
" ==============================================================================


" Python
" ==============================================================================
function! Set_Python_Options()
    " F5 will run the python script
    nnoremap <F5> :w<CR> :! python %<CR>
    inoremap <F5> <Esc> :w<CR> :! python %<CR>
    " Set the textwrap
    set textwidth=72
    " Sets the folding to syntax in python
    set foldmethod=marker
    " Add comment
    nnoremap <leader>a :call ToggleComment("#")<CR>
endfunction
" ==============================================================================


" C and C++
" ==============================================================================
" Let global variable...
" Allow pyclewn run in async mode, and don't spawn all the windows
let g:pyclewn_args = "--gdb=async --window=bottom"
function! Set_C_Cpp_Options()
    " Sets the folding to syntax in c++
    set foldmethod=syntax
    " Make mapping
    nnoremap <F4>  :w<CR> :make<CR>
    inoremap <F4>  <ESC> :w<CR> :make<CR>
    " %< is the filename without extention
    nnoremap <F5> :w<CR> :!./%< <CR>
    inoremap <F5> <ESC> :w<CR> :!./%< <CR>
    " Conque GDB
    nnoremap <F6> :w <CR> :make clean <CR> <CR> :make <CR> <CR>
    " Pyclewn mappings
    nnoremap <F6> :w <CR> :make clean <CR> <CR> :make <CR> <CR>
        \:tabe % <CR> :Pyclewn gdb --args %<<CR>
        \:Cbreak main <CR> :Cmapkeys <CR> :Crun <CR>
    nnoremap <F7> :Cunmapkeys<CR> :Cexitclewn<CR>
    nnoremap <leader>r :Crun<CR>
    nnoremap <leader>p :Cprint<SPACE>
    nnoremap <leader>w :Cwatch<SPACE>
    " Add comment
    nnoremap <leader>a :call ToggleComment("//")<CR>
endfunction
" ==============================================================================


" Makefiles
" ==============================================================================
function! Set_Makefile_Options()
    " Turn of space for tab
    set noexpandtab
    set nosmarttab
    set nosmartindent
    " Map keys
    nnoremap <F5>  :w<CR> :make<CR>
    inoremap <F5>  <ESC> :w<CR> :make<CR>
    nnoremap <F6>  :w<CR> :make clean<CR>
    inoremap <F6>  <ESC> :w<CR> :make clean<CR>
    " Add comment
    nnoremap <leader>a :call ToggleComment("#")<CR>
endfunction
" ==============================================================================


" tex-files
" ==============================================================================
function! Set_tex_Options()
    " Map keys
    nnoremap <leader>to :LatexTOC<CR>
    nnoremap <F5>  :w<CR> :!pdflatex -interaction=nonstopmode %<CR>
            \:!bibtex %<CR>
            \:!pdflatex -interaction=nonstopmode %<CR>
    inoremap <F5>  <ESC> :w<CR> :!pdflatex -interaction=nonstopmode %<CR>
            \:!bibtex %<CR>
            \:!pdflatex -interaction=nonstopmode %<CR>
    nnoremap <F6>  :w<CR> :!rm -f *.log *.aux *.out<CR>
    inoremap <F6>  <ESC> :w<CR> :!rm -f *.log *.aux *.out<CR>
    nnoremap <F7>  :w<CR> :!okular %:r.pdf &<CR>
    " Add comment
    nnoremap <leader>a :call ToggleComment("%")<CR>
    nnoremap <leader>cl :call Clean_TeX()<CR>
                \<CR>:call Clean_TeX()<CR>
                \<CR>:call Clean_TeX()<CR>
                \<CR>:call Format_TeX()<CR>
endfunction

" Function for cleaning up equations
"-----------------------------------
function! Clean_TeX()
    echom "Cleaning up equations"
    try
        " \r denotes a newline
        %s/\\\[/\\begin{align}/g
        %s/\\\]/\\end{align}/g
        %s/\\begin{equation}/\\begin{align}/g
        %s/\\end{equation}/\\end{align}/g
        %s/\\begin{equation\*}/\\begin{align\*}/g
        %s/\\end{equation\*}/\\end{align\*}/g
        %s/\\begin{eqnarray}/\\begin{align}/g
        %s/\\end{eqnarray}/\\end{align}/g
        %s/\\begin{eqnarray\*}/\\begin{align\*}/g
        %s/\\end{eqnarray\*}/\\end{align\*}/g
    " If the strings were not found
    catch /E486/
    endtry

    echom "Cleaning up aligns"
    try
        %s/&=&/=\&/g
        %s/&=/=\&/g
        %s/&+&/\&+/g
        %s/+&/\&+/g
        %s/&-&/\&-/g
        %s/-&/\&-/g
        %s/&\*&/\&\*/g
        %s/\*&/\&\*/g
        %s/&\/&/\&\//g
        %s/\/&/\&\//g
    " If the strings were not found
    catch /E486/
    endtry

    echom "Putting important things on own line"
    try
        %s/\\index{\(.*\)}/\r\%\r\\index{\1}\r\%\r/g
        %s/\\label{\(.*\)}/\r\%\r\\label{\1}\r\%\r/g
        %s/\\lstinline!\(.*\)!/\r\%\r\\lstinline!\1!\r\%\r/g
        " If they now have newlines before: Remove them
        %s/\(\s*\n*\)*\n%\n\\index{/\r\%\r\\index{/g
        %s/\(\s*\n*\)*\n%\n\\label{/\r\%\r\\label{/g
        %s/\(\s*\n*\)*\n%\n\\lstinline!/\r\%\r\\lstinline!/g
    " If the strings were not found
    catch /E486/
    endtry

    echom "Adding percents"
    try
        " Let begins start with a precent mark
        %s/\\begin{/\%\r\\begin{/g
        %s/\\footnote{/\%\r\\footnote{/g
        " The parantheses makes a group \1 is a backreference to that group
        ". matches character and * is any number of them
        %s/\\end{\(.*\)}/\\end{\1}\r\%\r/g
    " If the strings were not found
    catch /E486/
    endtry

    echom "Cleaning up percents (comments)"
    try
        " The parantheses makes a group, * repeats that group
        " Make repeated newlines with precents to only one new line of
        " precent
        %s/%\(\n%\)*/\%/g
        " Make comment + a lot of new lines to just a comment and newline
        %s/%\n\n\(\n\)*/\%\r/g
        " Repeat the first in case the previous brougth percentages together,
        " and allow whitespaces
        %s/%\n\s*%\(\n\(\s*%\)*\)*/%\r/g
    " If the strings were not found
    catch /E486/
    endtry

    echom "Making space for sections"
    try
        " 2 spaces for new sub sub section
        %s/\n\(\n\)*\\subsubsection/\r\r\r\\subsubsection/g
        " 3 spaces for new sub section
        %s/\n\(\n\)*\\subsection/\r\r\r\r\\subsection/g
        " 5 spaces for new section
        %s/\n\(\n\)*\\section/\r\r\r\r\r\r\\section/g
        " Puts a comment between the section{} and the paragraph below
        " /1 is the backreference
        %s/section{\(.*\)}\(\n\)*/\section{\1}\r\%\r/g
        " Make repeated newlines with precents to only one new line of
        " precent
        %s/%\(\n%\)*/\%/g
    " If the strings were not found
    catch /E486/
    endtry

    echom "Last touch"
    try
        " Deal with nested begins (they will have some whitespace before the
        " percentage
        %s/\(\s*\)%\n\\begin/\1%\r\1\\begin/g
        " Do the same for the end percentage sign
        " \1 refers to the argument and \2 refers to the spaces
        %s/\\end{\(.*\)}\n\(\s*\)%/\2\\end{\1}\r\2%/g
    catch /E486/
    endtry

    echom "Clean-up complete"
endfunction
"-----------------------------------

" Function to format the Tex
"---------------------------
function! Format_TeX()

    " TODO:
    " Make it possible to endline after a sentence which ends with a
    " punctuation. For now, this is appearing as a character, followed by a
    " punctuation and at least two spaces
    " %s/\(.\)\.\s\s\(\s*\)/\1\.\rMYSUPERBANANAMARKER\r/gc
    " Problems with footnotes

    " Save the current position
    let cursor_start = getpos(".")
    " Go to the beginning of the document
    normal gg
    try
        " Search for the beginnig of the document, and go to the first line
        " under begin{document}
        execute "/begin{document}/+"
        try
            execute "/section{/+"
        catch /E486/
            echom "No section found. Will start from line 1"
        endtry
    catch /E486/
        echom "This document has no /begin{document}. Will start from line 1"
    endtry
    " Store the current position
    let cur_pos = getpos(".")
    " Stores the line number of the end of document
    let end_file = line("$")
    " Store the regex for the start and end of the paragraph
    let common    = '^\(%D\)\=\s*'.
                    \'\('.
                    \'$\|'.
                    \'\\centering\|'.
                    \'\\caption\|'.
                    \'\\label\|'.
                    \'\\begin\|'.
                    \'\\end\|'.
                    \'\\\[\|'.
                    \'\\\]\|'.
                    \'\\\(sub\)*section\>'.
                    \'\|\\item\>\|'.
                    \'\\NC\>\|'.
                    \'\\blank\>\|'
    let par_begin = common.
                    \'\\noindent\>\)'
    let par_end   = common.
                    \'\\place\)'

    " cur_pos is the line number of the current position
    while cur_pos[1] < end_file
        " Set the cursor to the current position
        call setpos(".", cur_pos)
        " Checks that the current line is not empty
        if (getline(".") != "")
            " ? searches upwards in the document for par_begin
            " The second ? stops the search command, so that we are allowed to
            " the next line with + (the . is the string concatenation operator)
            execute '?'.par_begin.'?'
            "Check that verbatim etc. are not in the string
            let temp_string = getline(".")
            " Check if we are working with an empty string again (in that case
            " we won't have to check the string)
            if temp_string != ""
                " As we ran the Clean_TeX() function above, all \begin{}
                " environments should be the first thing appearing on a line,
                " possibly preceeded by whitespaces. Therefore, we will split the
                " temp_string (the whitespaces will not be a part of the split, and
                " thence the first element shold be /begin
                let temp_string = split(temp_string)[0]
                " We will now check if temp_string is one of the following
                " (possibly followed by environmental specifiers)
                " Note that the slice includes the last index
                if (temp_string[0:15] == "\\begin{verbatim}") ||
                            \(temp_string[0:14] == "\\begin{tabular}") ||
                            \(temp_string[0:12] == "\\begin{array}") ||
                            \(temp_string[0:17] == "\\begin{lstlisting}")
                    " Go to the next line after \end{
                    execute '/\\end{/+'
                    " update the position
                    let cur_pos = getpos(".")
                else
                   " Go to the next line
                   normal j
                endif
            else
                " Go to the next line
                normal j
            endif

            " Starts visual mode
            normal v

            " Finds the end of the paragraph and goes one line back
            execute '/'.par_end.'/-'

            " Set the previous position in case we are unable to go forward
            let prev_pos = cur_pos
            " Get the new position
            let cur_pos = getpos(".")
            " Increment the line by one
            let cur_pos[1] += 1

            " Do the formatting
            normal gq

            " If no prgress is made: Move forward
            if (prev_pos[1] == cur_pos[1])
                let cur_pos[1] += 1
            endif
        else
            " If the line is empty, just increase the line number
            let cur_pos[1] += 1
        endif
    endwhile
    " Reset the position to the original position (will probably be different
    " than what it was before the start)
    call setpos('.', cursor_start)
endfunction
"---------------------------
" ==============================================================================
