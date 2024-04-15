execute pathogen#infect()
syntax on
filetype plugin indent on


set t_Co=256
set encoding=utf-8


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:ctrlp_clear_cache_on_exit = 0

" highlight cursor line
function s:SetCursorLine()
    set cursorline
    hi cursorline cterm=none ctermbg=235
endfunction


colorscheme gruvbox
set background=dark
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set ic
set nowrap
set list listchars=tab:\ \
set foldmethod=syntax
set foldlevel=99
set hlsearch
set re=1
set ttyfast
set lazyredraw

" jump 10 lines up and down with ctrl-k and ctrl-j
nnoremap <C-k> 10k
nnoremap <C-j> 10j
" close window with X
nnoremap X :q<CR>
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-Right> <C-w>l
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
"<Right>
"<Up>
"<Down>
" toggle nerd tree with ctrl-n
map <C-n> :NERDTreeToggle<CR>
