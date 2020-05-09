
"This .vimrc is a work in progress. I keep chipping away. As of: June, 2019
"
"The following three lines were pasted in while trying to install pathogen by
"t.pope. I hope it works. Will delete if necessary to put back the way it was.
"
execute pathogen#infect()
syntax on
filetype plugin indent on
au BufRead,BufNewFile *.md setlocal textwidth=100
" Make it obvious where 80 characters is
set textwidth=80
set hidden
"set colorcolumn=+1
"Working on making more compatible with Python.
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype help nmap <buffer> q :q<cr>
au BufRead,BufNewFile *.sh setlocal textwidth=100
" Bind `q` to close the buffer for help files
autocmd Filetype help nnoremap <buffer>q :q<CR>
set background=dark
set nocompatible
set relativenumber 
set softtabstop=2
set expandtab
set shiftwidth=2
"the line below is for using the mouse once in a while for cursor position
set mouse=a
"playing with leader values here for the next few lines.
let mapleader=","
"I mapped to the space key here. Before I had comma. Trying out diff things.
noremap <TAB> )
noremap ` (
"I learned the following from Ben Orenstein:
nmap k gk
nmap j gj
" Mapping Q to q when I make that mistake on quitting
command! Q q "Bind :Q to :q
" Switch between the last two files
nnoremap <leader><leader> <C-^>
"Insert the date into a doc
nmap <leader>vr :vsp $MYVIMRC<cr>
nnoremap <leader>d :r!date<cr>
nnoremap <F5> "=strftime("%c")<cr>P
nmap 0 ^
nnoremap <F5> <C-R>=strftime("%c")<cr>
nnoremap <leader>e :q<cr>
nnoremap <leader>nn :noh<cr>

nnoremap<leader>el :q!<cr>
nnoremap <leader>s :w<cr>
inoremap jj <Esc> 
nnoremap <leader>z :NERDTreeToggle<cr>
nnoremap <leader>p "+p
"the following is to copy the whole file contents and save it to sys clipboard
nnoremap <leader>sa gg V G "+y<Esc>
vnoremap <leader>y "+y
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"to jump out of brackets
"inoremap <C-e> <C-o>A
"set cursorline
colorscheme dracula


" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

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

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

"The following is all for the markdown preview. I can check the help for that
"plugin if I need reminding.
let g:instant_markdown_browser = "firefox --new-window"
let g:instant_markdown_autostart = 0

"Trying to get rid of swap files in Vim. They are cluttering up directories
"and I don't need them.
set noswapfile
set noundofile
set nobackup

abbreviate _me jwdavisdeveloper@gmail.com
" I saw this recently on github in the vim air-line readme

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
