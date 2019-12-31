execute pathogen#infect()

"{{{ ultisnip kisayollari. Calistirmak icin c-e etc.
"let g:UltiSnipsExpandTrigger="<c-e>"
"let g:UltiSnipsJumpForwardTrigger = "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"}}}

"{{{ set commands here
set ignorecase "searchte buyuk kucuk harf ayrimi olmasin
set backspace=indent,eol,start

set tabstop=4
set autoindent
set cm=blowfish "guclendirilmis encryption metodu kullan

"RELATIVE lINE NUMBERS
"Delete all files in .vim/view to effect immediately.
set number "set line numbers
set rnu   "turn on relative line numbers
"set nornu  "turn relative line numbers off. 

"Wrap text instead of being on one line
set lbr

"Aramayi baslatir baslatmaz sonucu goster.
set incsearch

"Always show statusline
set showtabline=1

"Highlight Search Results
"set hlsearch

"Show cursor position
set ruler

"Shows cursorline
set cursorline

"Auto complete
set complete+=kspell "Allow autocomplete. Usage; in vim hit Control + p or Control + n to auto complete

" Turn on syntax colors
"colo desert
syntax on


"solorized color scheme
let g:solarized_termcolors=256
set background=light
colorscheme solarized

" }}}

".txt icin yazim hatalarini duzeltme 
autocmd BufWritePre *.txt :%le                       "Align left
autocmd BufWritePre *.txt :%s/[\.!?]\s*./\U&\E/g   "Capitalize first letter after period
autocmd BufWritePre *.txt :%s/^./\u&/g             "Capitalize first letter of the sentence
autocmd BufWritePre *.txt :%s/\.\(\S\)/\. \1/g      "Remove period and add period and space
autocmd BufWritePre *.txt :%s/\,\(\S\)/\, \1/g      "Remove comma and add comma and space
autocmd BufWritePre *.txt :%s/\(.\)\n\(.\)/\1\r\r\2/ "Add an empty line between paragraphs
autocmd BufWritePre *.txt :%s/\s\+\././g           "Remove space before period.
autocmd BufWritePre *.txt :%s/\s\+\,/,/g           "Remove space before coma.
autocmd BufWritePre *.txt :%s/\s\+\!/!/g           "Remove space before !.
autocmd BufWritePre *.txt :%s/\.\s"/\."/g            "Remove space between . and quotation mark
autocmd BufWritePre *.txt :%s/?\s"/?"/g            "Remove space between ? and quotation mark

autocmd BufWritePre *.txt :%s/\s?/?/g              "Remove space before ?
autocmd BufWritePre *.txt :%s/\s:/:/g              "Remove space before :
autocmd BufWritePre *.txt :%s/\s;/;/g              "Remove space before ;

autocmd BufWritePre *.txt :%s/\:/: /g              "Give a space after :
autocmd BufWritePre *.txt :%s/\;/; /g              "Give a space after ;

"Final touches. En son duzeltmeler asagida.
autocmd BufWritePre *.txt :%s/ \+/ /g               "Remove more than one space between words
autocmd BufWritePre *.txt :%s/\s\+$//e             "Remove space at the end of lines


"Following line capitilize quotation mark sentences ends with  .?!...
autocmd BufWritePre *.txt :%s/\v("\w)(.{-})(\.|!|\?|\.{3})"/\U\1\e\2\3"/g


"{{{Fountain autocommands
autocmd BufWritePre *.fountain %le                       "Align left
"Remove
autocmd BufWritePre *.fountain %s/ \+/ /g                "Remove more than one space between words
autocmd BufWritePre *.fountain :%s/\.\(\S\)/\. \1/g      "Remove period and add period and space
autocmd BufWritePre *.fountain :%s/\,\(\S\)/\, \1/g      "Remove comma and add comma and space
"autocmd BufWritePre *.fountain :%s/\(\S\)\s\+/\1 /g     "Remove more than one space between words. Alternatif.
autocmd BufWritePre *.fountain %s/\s\+$//e               "Remove space at the end of lines 
autocmd BufWritePre *.fountain %s/\s\+\././g             "Remove space before period.
autocmd BufWritePre *.fountain %s/\s\+\,/,/g             "Remove space before coma.
autocmd BufWritePre *.fountain %s/\s\+\!/!/g             "Remove space before !.

"Capitalize
autocmd BufWritePre *.fountain %s/^./\u&/g               "Capitalize first letter of the sentence
autocmd BufWritePre *.fountain %s/[\.!?]\s*./\U&\E/g     "Capitalize first letter after period
autocmd BufWritePre *.fountain %s/^int\..*/\U&/i         "Capitilaze lines starting with INT.
autocmd BufWritePre *.fountain %s/^ext\..*/\U&/i         "Capitilaze lines starting with EXT.
autocmd BufWritePre *.fountain %s/fade\sin:/\U&/i        "Capitalize lines starting with fade in.
autocmd BufWritePre *.fountain %s/fade\sout/\U&/i        "Capitalize lines starting with fade in.
autocmd BufWritePre *.fountain %s/fade\sto:/\U&/i        "Capitalize lines starting with fade to.
autocmd BufWritePre *.fountain %s/dissolve\sto:/\U&/i    "Capitalize lines starting with dissolve to.
autocmd BufWritePre *.fountain %s/cut\sto:/\U&/i         "Capitilaze lines starting with cut to.
autocmd BufWritePre *.fountain %s/smash\scut:/\U&/i      "Capitalize lines starting with smash cut.
autocmd BufWritePre *.fountain %s/quick\scut:/\U&/i      "Capitalize lines starting with quick cut.
autocmd BufWritePre *.fountain %s/intercut\swith:/\U&/i  "Capitalize lines starting with intercut with.

"Give Space
autocmd BufWritePre *.fountain %s/^int\..*/\0\r/g        "Give space after INT.
autocmd BufWritePre *.fountain %s/^ext\..*/\0\r/g        "Give space after EXT.
autocmd BufWritePre *.fountain %s/FADE\sIN:/\0\r/g       "Give Space after fade in.
autocmd BufWritePre *.fountain %s/FADE\sOUT/\0\r/g       "Give Space after fade in.
autocmd BufWritePre *.fountain %s/FADE\sTO:/\0\r/g       "Give Space after fade to.
autocmd BufWritePre *.fountain %s/DISSOLVE\sTO:/\0\r/g   "Give Space after dissolve to.
autocmd BufWritePre *.fountain %s/CUT\sTO:/\0\r/g        "Give Space after cut to.
autocmd BufWritePre *.fountain %s/SMASH\sCUT:/\0\r/g     "Give Space after smash cut.
autocmd BufWritePre *.fountain %s/QUICK\sCUT:/\0\r/g     "Give Space after quick cut.
autocmd BufWritePre *.fountain %s/INTERCUT\sWITH:/\0\r/g "Give Space after intercut with.

"Add an empty line above and below Transitions. Transisons starts with >. 
"add an emtpy line above all >
autocmd BufWritePre *.fountain :g/^>/norm O

"Add an empty line after >
autocmd BufWritePre *.fountain :g/^>/norm o

autocmd BufWritePre *.fountain %s/\n\{3,}/\r\r/e  "Remove more than one empty lines. Leave only one empty line
"}}}

"{{{ Auto delete space before period.
"Asagidaki satir yazi yazarken noktadan onceki boslugu siler, aninda. ama her
"dosya formati icin. o yuzden comment ladim. fountain icin farkli halini
"ekledim.
"inoremap . <space><esc>?\S<cr>a.
"}}}

"{{{ Folding Method
set foldmethod=marker

"Vim Folding icin
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
"}}}

"{{{ Control P 
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'min:4,max:999' "controlp sonuclari acildiginda kac satir gorunsun
"let g:ctrlp_show_hidden = 1 "bu satir gizli dosyalarin gorunmesini saglar.
"ignore these file extentions for ControlP
set wildignore+=*.a,*.o,*.py,*.pc,*.c,*.cmake,*.in,*.h.,*.rb
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.jpeg,*JPG
set wildignore+=*.mp4,*.avi,*.mpg,*.mp3,*.MP3,*.flac,*webm,*mkv,*mov,*MOV
set wildignore+=.DS_Store,.git,.hg,.svn,*=
set wildignore+=*~,*.swp.*.tmp,*.bak,*.pyc,*.jar,*.class,*.html,*.htm
set wildignore+=*.pdf,*.PDF,*.epub,*.mobi,*doc
set wildignore+=*.exe
"}}}

"{{{ Key Bindings
let mapleader = '\'      "Leader key \ olarak ata.
nmap <leader>w :w<CR>   "cok kullanmadigimi farkettim, ondan disable ettim.
nmap <leader>q :q!<CR>  "quit vim

"markdown folding. Bu kisayol asagidaki komutu verir ve markdown dosyasi
"otomatik folding yapar
nmap <leader>m :set foldmethod=expr foldexpr=MarkdownFolds()<CR>

"map \r to search and replace command
nmap <leader>r :%s/\< \>//gci

"map \` to search and capitilize the word you want
nmap <leader>` :%s/\< \>/\U&/gci
"}}}

"{{{ add \{{{ to beginning of current line 
nmap <leader>[ :.,s/^/\{{{/<CR>


"{{{ add \}}} to end of current line 
nmap <leader>] :.,s/$/\}}}/<CR>

"add period to end of sentences
nmap <leader>. :%s/$/\./gci

"Vim buffer list
:nnoremap <F5> :buffers<CR>:buffer<Space>

"NERDTree icin C-n kisayolunu ata
map <C-n> :NERDTreeToggle<CR>

"}}}

"{{{ Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}}}

"{{{ manually save a file with sudo permission
map <leader>sudo :w !sudo tee % <CR><CR>
" useage: \sudo
"}}}

"{{{ Poweline icin
set  rtp+=/home/xalil/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
"}}}

"{{{ Spell checker icin dil ayari
"set spell "Bu satir spell checker i surekli vim de active hale getirir. Disable etmek icin tum satiri commentla.
set spelllang=en_us
set spellfile=en.utf-8.add
"}}}

"{{{ ack vim plugin icin keyboard shortcut
nmap <leader>a :tab split <CR>:Ack -i ""<left>
"}}}

"{{{ Center the search result - Arama sonuclarini ortada goster
set scrolloff=999
"}}}

"{{{ Tab Key bindings
"Vim has built in tab movements also : gt - next tab | gT - previous tab
nnoremap tn :tabnew<space>
"nnoremap tk :tabnext<CR>
"nnoremap tj :tabprev<CR>
"nnoremap th :tabfirst<CR>
"nnoremap tl :tablast<CR> 
"}}}

"{{{ urlview icin
:noremap <leader>u :w<Home>silent <End> !urlview<CR>
"}}}

"{{{ auto capitilize first letter of every sentence. Use capitalize script
"instea
"for char in split('abcdefghijklmnopqrstuvwxyz', '\zs')
"    exe printf("inoremap <expr> %s search('[.!?]\\_s\\+\\%%#', 'bcnw') ? '%s' : '%s'", char, toupper(char), char)
"	endfor

"for char in split('ABCDEFGHIJKLMNOPQRSTUVWXYZ', '\zs')
"	    exe printf("inoremap <expr> %s search('[.!?]\\_s\\+\\%%#', 'bcnW') ? '%s' : '%s'", char, tolower(char), char)
"		endfor
"}}}

"{{{ Asagidaki satirlar curcor rengini degistiriyor. Daha iyi boyle.
if &term =~ "xterm\\|rxvt"
" use an orange cursor in insert mode
let &t_SI = "\<Esc>]12;white\x7"
" use a red cursor otherwise
let &t_EI = "\<Esc>]12;blue\x7"
silent !echo -ne "\033]12;blue\007"
" reset cursor when vim exits
autocmd VimLeave * silent !echo -ne "\033]112\007"
" use \003]12;gray\007 for gnome-terminal
endif
"}}}

"{{{ Copy and Paste from and to vim
"Asagidaki satirda calisiyor ama bir cok program icin bir altinaki satir daha
"guvenli.
"vnoremap <C-c> "+y
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+p
"}}}

" {{{ copy paste to clipboard cross files
set clipboard=unnamed

"}}}

set noshowmode "that must be at the END OF THE VIMRC.En altta insert yazilmasini engelliyor.
