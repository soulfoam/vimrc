let g:ycm_confirm_extra_conf = 0
let g:ycm_goto_buffer_command = 'vertical-split'
let g:auto_save_no_updatetime = 1
let g:auto_save = 1
let g:auto_save_silent = 1 
let g:ycm_max_diagnostics_to_display = 10000
set nocompatible
filetype indent plugin on

syntax on

autocmd vimenter * silent! lcd %:p:h
set lazyredraw
set nobackup
set noswapfile
set completeopt-=preview

set tags+=tags;/
"let g:cpp_class_scope_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:c_no_curly_error = 1
let g:easytags_auto_highlight = 1
let g:easytags_auto_update = 0


set hidden


set wildmenu


set showcmd
set hlsearch

"------------------------------------------------------------
" Themes and other custom stuff
set termguicolors
set term=xterm-256color
colorscheme foamy2
set background=dark
highlight Normal ctermbg=NONE
"------------------------------------------------------------


autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

set grepprg=ag\ --nogroup\ --column\ --vimgrep
set grepformat=%f:%l:%c:%m,%f:%l:%m

set ignorecase
set infercase

set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler
set laststatus=2
set statusline=%{fugitive#statusline()}

set confirm

set visualbell

set t_vb=

set mouse=a

set cmdheight=2

set number

set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F11>



set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set colorcolumn=100

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

map Y y$
xnoremap p "_dP

nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <leader>f :Files<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>b :BLines<CR>
nnoremap <leader>a :Ag 
nnoremap <leader>g :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>h :YcmCompleter GoToInclude<CR>
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


call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/mtth/scratch.vim.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/rdnetto/YCM-Generator.git'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'dikiaap/minimalist'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/vim-scripts/vim-auto-save'
Plug 'https://github.com/fidian/hexmode'
Plug 'StanAngeloff/php.vim'
Plug 'https://github.com/tikhomirov/vim-glsl.git'
Plug 'junegunn/vim-easy-align'
"Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
Plug 'https://github.com/xolox/vim-easytags'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
call plug#end()

"------------------------------------------------------------

