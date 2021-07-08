" Maintained and nurtured with 😍 for my .vimrc

" -----------------------------------------------------------------"
"                   The VUNDLE STUFF 
" -----------------------------------------------------------------"

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
Plugin 'instant-markdown/vim-instant-markdown', {'rtp': 'after'}
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
Plugin 'tpope/vim-scriptease'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'christoomey/vim-titlecase'
Plugin 'vim/killersheep'
Plugin 'fenetikm/falcon'
Plugin 'mhartington/oceanic-next'
Plugin 'mhinz/vim-startify'
Plugin 'mhinz/vim-janah'
Plugin 'jacoborus/tender'
Plugin 'elzr/vim-json'
Plugin 'wincent/terminus'
Plugin 'sts10/vim-pink-moon'
" Set the following as last Plugin Listed 
Plugin 'ryanoasis/vim-devicons'
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
"
" --------------------- END VUNDLE STUFF -------------------------


" Disable folding with Vim Markdown Plugin
let g:vim_markdown_folding_disabled = 1

" The following is from thoughtbot Vim video tutorial
" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" I found the following on the github page for CtrlP. Makes sense to me:
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

syntax on
filetype plugin indent on
autocmd BufRead,BufNewFile *.md setlocal textwidth=100
autocmd BufRead,BufNewFile *.sh setlocal textwidth=100 

" I set the line below after install base16 color theme.
" I can change the lines below if necessary
if (has("termguicolors"))
  set termguicolors
endif

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

" Experiment here below:
set noerrorbells
set visualbell
set t_vb=
" End Experiment

" Enable folding
set foldmethod=indent
set foldlevel=99

" The following helped me with an issue of delay swiching modes
set ttimeoutlen=50
" There was a 1 second delay or so before I put this line. Found it on Github.

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

" ------------------------------------------------------------
" The following is for setting and getting rid of cursorline
" I have decided to comment it for now and try without the cursor line.
" Changed November 18, 2020
" It feels more inline with how I have VS Code currently:

"autocmd InsertLeave,WinEnter * set cursorline
"autocmd InsertEnter,WinLeave * set nocursorline

"---------------------------------------------------------------

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
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Below line taken from Ben Orenstein - open file in current path
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>

" I learned this one from 'Learn VimScript the Hard Way'
" It is for moving lines down in normal and visual mode
noremap - ddp 

" This is for moving lines up in normal and visual
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

" Switch between tabs
nnoremap <leader>x :tabnext<cr>

" Listing the buffers
nnoremap <leader>l :ls<cr> 

" Quickly make a new empty tab
nnoremap <leader>tt :tabnew<cr>   

" Insert the date into a doc
nnoremap <leader>d :r!date<cr>

" Move to first character in line
nnoremap 0 ^

" Save and quite current file
nnoremap <leader>w :wq<cr>

" Save and quit 
nnoremap <leader>a :qa<cr>

" Quit already saved document
nnoremap <leader>e :q<cr>

" Quit - don't save changes
nnoremap<leader>q :q!<cr>
" Does not work on VS Code - yet

" Get rid of highlighting
nnoremap <leader>/ :noh<cr>

" Below opens netrw 
nnoremap <leader>v :Vex<cr>

" Open a window in it's own tab quickly
nnoremap<leader>o <C-w>T 

" Quick save
nnoremap <leader>s :w<cr>

" Open a vertical terminal in vim
nnoremap <leader>t :vert ter<cr>

" Switch buffer to previous
nnoremap <leader>p :bp<cr>

" Switch buffer to next
nnoremap <leader>n :bn<cr>

" Another exit from insert mode to normal mode
inoremap jj <Esc> 

" Yank and paste from the system clipboard
nnoremap <leader>u "+p
vnoremap <leader>y "+y

" This is to uppercase a word after typing in insert mode
inoremap <c-u> <esc>viwUea

" Copy the entire buffer into the system register
nmap <leader>co ggVG*y

"This is the same as above only normal mode
nnoremap <leader>= viwUea<esc>

" This is for deleting a buffer
nnoremap <leader>d :bd<cr>

" Save All
nnoremap <leader>z :wa<cr>

" Format entire document
" This uses the 'kana/vim-textobj-entire' obj to work
nmap <leader>f gqae

" Trying this out:
nnoremap J 5j
nnoremap K 5k

" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap [ []<Esc>i
" to jump out of brackets
inoremap <C-e> <C-o>A

" For CarbonNow - make carbon snippets
vnoremap <F5> :CarbonNowSh<CR>

" The following is for numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Move quicker - particularly helpful for help files
nmap <F12> }
nmap <F10> {

" The following is for the Dracula Pro Package
packadd! dracula_pro

syntax enable

let g:dracula_colorterm = 0
let g:dracula_italic = 0
let g:falcon_background = 0

" -----------Favorite Colorschemes-----------------"
" colorscheme dracula_pro
" colorscheme falcon
" colorscheme summerfruit256
" colorscheme simpleandfriendly
" colorscheme dracula_pro_van_helsing
" colorscheme github
colorscheme pink-moon

"Comment and uncomment as needed
" --------------------------------------------------"

" Working on trying to get italics below:
highlight Comment cterm=italic

" ---------- End Dracula Pro Stuff -------------"


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

"The following is all for the markdown preview.
let g:instant_markdown_autostart = 0


""""""""" The following is netrw stuff""""""""""""""""""""""
let g:netrw_altv=1        "open file to the right with v
let g:netrw_banner=0      "no banner on startup
let g:netrw_liststyle=3   "use treeview
let g:netrw_winsize=0     "window sizes are always equal
let g:netrw_preview=1     "open preview window to the right

" set noswapfile
" set noundofile
" set nobackup

" Learned this about working with React
" It will help eventually
set backupcopy=yes

"This might be a better solution than the 3 lines above:
"I learned this from a stackoverflow answer about not cluttering directories
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" I am trying to figure out the swap/backup stuff
" I realized that I had to first create these directories in .vim folder

" I saw this recently on github in the vim air-line readme

let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='papercolor'
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" The following is for Tmux/Vimwindow resizing.
" Automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
" Cool! It appears to be working just fine! 😄
" End tmux/vim stuff re: window resizing.


"----------------------Playing Around With tpope's commentary ----------

nmap cm <Plug>Commentary

" That is all it took. I now use `cmil` to comment a line. And `cm` work with
" - all other text objects.

"-----------------------Title Case Mappings------------

let g:titlecase_map_keys = 0
nmap <leader>gt <Plug>Titlecase
vmap <leader>gt <Plug>Titlecase
nmap <leader>gT <Plug>TitlecaseLine

"-------------------- Abbreviations -----------------------
iabbrev ccopy Copyright 2020 John William Davis, all rights reserved. 
iabbrev _me jwdavisdeveloper@gmail.com

" This is for the custom copy plugin from Chris Toomey
" let g:system_copy#copy_command='xclip -sel clipboard'
" let g:system_copy#paste_command='xclip -sel clipboard -o'
" We shall see if the above two lines work for me. If not, I will comment it.

"The following is for dealing with Vim-Tmux-Runner
let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1

" Something must have been conflicting with the last line.
" I had to put the following line down here before it would work.
set noshowmode
