" Reworked .vimrc to use Vundle instead of pathogen
" Sat 16 May 2020 02:20:16 PM PDT
" The Vundle stuff begins below

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'szw/vim-maximizer'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'junegunn/vader.vim'
Plugin 'mrtazz/simplenote.vim'
Plugin 'christoomey/vim-system-copy'
Plugin 'tommcdo/vim-exchange'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'haishanh/night-owl.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'nightsense/snow'
Plugin 'nightsense/stellarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'kristijanhusak/vim-carbon-now-sh'
Plugin 'junegunn/vim-peekaboo'
Plugin 'myusuf3/numbers.vim'
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
" --------------------- END VUNDLE STUFF

" Disable folding with Vim Markdown Plugin
let g:vim_markdown_folding_disabled = 1

" The following is from thoughtbot Vim video tutorial
" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" The following is for changing the cursor shape based on mode
" I am so happy this worked! I found it!
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"------------------------------------------------------------------------
syntax on
filetype plugin indent on
autocmd BufRead,BufNewFile *.md setlocal textwidth=100
autocmd BufRead,BufNewFile *.sh setlocal textwidth=100 
" I set the line below after install base16 color theme.
" I can change the below line if necessary
" set termguicolors
" I did indeed have to comment this line. It messed with my colors from tmux.
set background=dark
set nocompatible
set number relativenumber 
set softtabstop=2
set shiftwidth=2
set autoindent		          " always set autoindenting on
set encoding=UTF-8
set hidden
set ruler
set gdefault                      " Always assume /g in substituions
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set scrolloff=4                   " Show 4 lines of context around the cursor.
set splitright                    " always open new vertical splits in on the right
set splitbelow                    " always open horizontal split below
set expandtab                     " Generally set tabs to be spaces
set wrap                          " Word wrap long lines in windows - will see
" Enable folding
set foldmethod=indent
set foldlevel=99
"The following helped me with an issue of delay swiching modes
set ttimeoutlen=50
"There was a 1 second delay or so before I put this line. Found it on Github.
" This is all about autocompletion below
set wildmenu
set wildmode=longest:full,full
" set smartindent
"The following three lines are to set GFM - github flavored markdown syntax
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" The following is to change split size based on focus.
" I may or may not keep these settings. I found them on thoughbot vim video.
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" Save file on lost focus
autocmd FocusLost * :wa
autocmd! BufWritePost ~/.vimrc source %
"set colorcolumn=+1
"Working on making more compatible with various file types.
"autocmd FileType text setlocal textwidth=120
let python_highlight_all=1
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=80
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype bash setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript']
" Bind `q` to close the buffer for help files
autocmd Filetype help nnoremap <buffer>q :q<CR>
" The following is for setting and getting rid of cursorline
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
"the line below is for using the mouse once in a while for cursor position
set mouse=a
"playing with leader values here for the next few lines.
let mapleader=","

" Setting some search options below
set incsearch
set hlsearch

" Setting my local leader below.
let maplocalleader="\\"

" Note, this must be nmap, not nnoremap
nmap <leader>gr "*gr
" The mapping above is for the ReplaceWithRegister plugin
" I got this idea from Thoughtbot - Extending Vim weekly iteration

noremap <TAB> )
noremap ` (
"I learned the following from Ben Orenstein:
nmap k gk
nmap j gj

" split navigation made easier below:
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Below line taken from Ben Orenstein - open file in current path
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>

" I learned this one from 'Learn VimScript the Hard Way'
" It is for moving lines down in normal and visual mode
noremap - ddp 
"This is for moving lines up in normal and visual
noremap _ ddkP

" Clearing current line in normal and going into insert
nnoremap <leader>c ddO
" Mapping F6 to Toggle off banner in netrw
nmap <F6> I
" Delete a line in insert mode
inoremap <c-d> <esc>ddi
" Mapping Q to q when I make that mistake on quitting
command! Q q "Bind :Q to :q
" Switch between the last two files
nnoremap <leader><leader> <C-^>
" Listing the buffers 
nnoremap <leader>l :ls<cr>
" Quickly make a new empty tab
nnoremap <leader>tt :tabnew<cr>
"Insert the date into a doc
nnoremap <leader>d :r!date<cr>
nnoremap <F5> "=strftime("%c")<cr>P
nnoremap 0 ^
nnoremap <F5> <C-R>=strftime("%c")<cr>
" Save and quite current file
nnoremap <leader>w :wq<cr>
" Save and quit all files
nnoremap <leader>a :wqa<cr>
" Quit after save
nnoremap <leader>e :q<cr>
" Quit - don't save changes
nnoremap<leader>el :q!<cr>
" Get ride of highlighting
nnoremap <leader>/ :noh<cr>
" Below opens netrw from a doc
nnoremap <leader>v :Vex<cr>
" The following is so that I can open a window in it's own tab quickly
nnoremap<leader>o <C-w>T 
" Open vimrc files in a vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source the vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Quick save - line below
nnoremap <leader>s :w<cr>
nnoremap <leader>t :vert ter<cr>
"Next line is for switching buffer to previous
nnoremap <leader>p :bp<cr>
"Next line is for switching buffer to next
nnoremap <leader>n :bn<cr>
"The next line is for exiting insert mode to normal mode
inoremap jj <Esc> 
" The following is to paste from the system clipboard
nnoremap <leader>u "+p
"the following two lines are to copy the whole file contents and save it to sys clipboard
nnoremap <leader>x gg V G "+y<Esc>
vnoremap <leader>y "+y
"This is to uppercase a word after typing in insert mode
inoremap <c-u> <esc>viwUea
"Copy the entire buffer into the system register
nmap <leader>co ggVG*y
"This is the same as above only normal mode
nnoremap <leader>= viwUea<esc>
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"to jump out of brackets
"inoremap <C-e> <C-o>A
" For CarbonNow - make carbon snippets
vnoremap <F5> :CarbonNowSh<CR>
" The following is for numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

"The following is for the Dracula Pro Package
packadd! dracula_pro

syntax enable

let g:dracula_colorterm = 0

colorscheme jellybeans
" End Dracula Pro Stuff

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

if has('syntax') && has('eval')
  packadd! matchit
endif

"The following is all for the markdown preview. I can check the help for that
"plugin if I need reminding.
let g:instant_markdown_autostart = 0

""""""""" The following is netrw stuff""""""""""""""""""""""
let g:netrw_altv=1        "open file to the right with v
let g:netrw_banner=0      "no banner on startup
let g:netrw_liststyle=3   "use treeview
let g:netrw_winsize=0     "window sizes are always equal
let g:netrw_preview=1     "open preview window to the right

"Trying to get rid of swap files in Vim. They are cluttering up directories
"and I don't need them.
set noswapfile
set noundofile
set nobackup

" I saw this recently on github in the vim air-line readme

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='snow_dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" The following is for Tmux/Vimwindow resizing. I will delete if necessary.
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
" Cool! It appears to be working just fine! 😄
" end tmux/vim stuff re: window resizing.

"-------------------- Abbreviations -----------------------
iabbrev ccopy Copyright 2020 John William Davis, all rights reserved. 
iabbrev _me jwdavisdeveloper@gmail.com

"The following is for dealing with Vim-Tmux-Runner
let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1
