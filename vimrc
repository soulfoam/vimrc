let g:ycm_confirm_extra_conf         = 0
let g:ycm_goto_buffer_command        = 'vertical-split'
let g:auto_save_no_updatetime        = 1
let g:auto_save                      = 1
let g:auto_save_silent               = 1
let g:ycm_max_diagnostics_to_display = 10000
let g:easytags_cmd                   = '/usr/bin/ctags'
let g:easytags_ctags_version         = '5.8'

set nocompatible
set encoding=utf-8
filetype indent plugin on

syntax on

autocmd vimenter * silent! lcd %:p:h
set lazyredraw
set regexpengine=1
set nobackup
set noswapfile
set completeopt-=preview

set tags+=tags;/
"let g:cpp_class_scope_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:c_no_curly_error = 1
let g:easytags_auto_update = 0

let NERDTreeShowHidden=1

set hidden
set wildmenu
set showcmd
set hlsearch

"------------------------------------------------------------
" Themes and other custom stuff
set termguicolors
set t_Co=256
"set term=xterm-256color
"let g:srcery_bg_passthrough=1
"colorscheme srcery
set background=dark
"------------------------------------------------------------


autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
autocmd! bufenter *.c   :HighlightTags
autocmd! bufenter *.h   :HighlightTags

set grepprg=ag\ --nogroup\ --column\ --vimgrep
set grepformat=%f:%l:%c:%m,%f:%l:%m

set ignorecase
set infercase

set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler
set laststatus=2
"set statusline=%{fugitive#statusline()}

set confirm

set visualbell

set t_vb=

set mouse=a

set cmdheight=2

set number

set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F11>

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set colorcolumn=120

augroup rally_ft
  au!
  autocmd BufNewFile,BufRead *.rly   set syntax=rally
augroup END

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

map Y y$
xnoremap p "_dP

nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <leader>f :Files<CR>
nnoremap <Leader>n :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>b :BLines<CR>
nnoremap <leader>a :Ag
nnoremap <leader>g :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>h :YcmCompleter GoToInclude<CR>
nnoremap <leader>r :packadd termdebug<CR>:Termdebug<CR>
nnoremap <leader>x :call CurtineIncSw()<CR>
nnoremap <C-S> :bprev<CR>
nnoremap <C-D> :bnext<CR>

:map Q <Nop>

nmap <silent> ,/ :let@/=""<CR>
nmap <C-CR> O<Esc>
nnoremap <CR> o<Esc>
command W w
if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
	autocmd!
	au InsertEnter * set timeoutlen=0
	au InsertLeave * set timeoutlen=1000
	augroup END
endif

nnoremap <leader>c vip:s/    /====/ge\|'<,'>s/./=/ge<cr>vip:sort<cr>vip<esc>"tyy2uvip<c-v>A<esc>"tPvip<esc>"tpvip:s/^/\/* <cr>vip<c-v>A<esc>$vip<c-v>A */<esc>f r=f r=vip<esc>f r=f r=vip<c-v>A<esc>:noh<cr>

nnoremap <leader>C vip:s/^\/\* //e\|'<,'>s/ \*\/$//e\|'<,'>s/\s\+$//e<cr>vip:g/\/\*=\+\*\/$/d<cr>:noh<cr>(

autocmd BufNewFile,BufRead *.fesh set syntax=glsl


"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1


call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/mtth/scratch.vim.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
"Plug 'https://github.com/rdnetto/YCM-Generator.git'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'dikiaap/minimalist'
"Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/vim-scripts/vim-auto-save'
Plug 'https://github.com/fidian/hexmode'
Plug 'StanAngeloff/php.vim'
Plug 'https://github.com/tikhomirov/vim-glsl.git'
Plug 'junegunn/vim-easy-align'
"Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
"Plug 'https://github.com/ludovicchabant/vim-gutentags'
Plug 'https://github.com/xolox/vim-easytags'
Plug 'https://github.com/preservim/nerdtree'
Plug 'brooth/far.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'godlygeek/tabular'
Plug 'srcery-colors/srcery-vim'
Plug 'https://github.com/ap/vim-buftabline'
"Plug 'https://github.com/jceb/vim-orgmode.git'
call plug#end()

"------------------------------------------------------------
