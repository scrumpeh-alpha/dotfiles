" ----------  BASIC ----------
runtime defaults.vim
set background=dark
let mapleader = " "

" From windows
set nocompatible
filetype on
filetype plugin on
filetype indent on

imap <C-BS> <C-W>
syntax on
set number

set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set smartcase
set history=1000
" map <f5> :w\|!python %
set backspace=indent,eol,start

" Note: from neovim config

" Undofile
set noswapfile
set undofile
set undodir=~/.vim/undodir

" Primeagen movement (Center screen on jump)
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Clipboard mirroring (Ctrl+C for yank in Normal/Visual)
vnoremap <C-C> "+y
nnoremap <C-C> "+y

" Cursor reset
" autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")
au VimLeave * set guicursor=a:ver25-blinkon0

" Moving text blocks (like VSC) (needed??)
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Copy-pasting stuff

"tmap <S-Insert> <C-W>"+
"noremap <C-S-C> "+y
"inoremap <C-S-V> <C-r><C-p>+
"nnoremap <S-Insert> "+p





" ---------- PLUGINS ----------

" NetRW
nnoremap <leader>e :Explore<CR>

"call plug#begin()
"	Plug 'preservim/nerdtree'
"call plug#end()

"nnoremap <C-n> :NERDTreeToggle <CR>






" ---------- EXTRA ----------

" Mouse support
set mouse=a
set ttymouse=sgr
set balloonevalterm
" Styled and colored underline support
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"
" Strikethrough
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"
" Truecolor support
let &t_8f = "\e[38:2:%lu:%lu:%lum"
let &t_8b = "\e[48:2:%lu:%lu:%lum"
let &t_RF = "\e]10;?\e\\"
let &t_RB = "\e]11;?\e\\"
" Bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"
" Cursor control
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"
" Focus tracking
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"
" Window title
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"
" Cursor style
let &t_te = &t_te . "\e[6 q"

" vim hardcodes background color erase even if the terminfo file does
" not contain bce. This causes incorrect background rendering when
" using a color theme with a background color in terminals such as
" kitty that do not support background color erase.
let &t_ut=''
