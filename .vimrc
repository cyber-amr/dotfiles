set relativenumber
set ruler
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline

filetype plugin indent on
if has("syntax")
	syntax on
endif

map <C-n> :set invrelativenumber<CR>
nnoremap <leader>f gg=G

nnoremap J :m .+1<CR>==
vnoremap J :m '>+1<CR>gv=gv
nnoremap K :m .-2<CR>==
vnoremap K :m '<-2<CR>gv=gv
