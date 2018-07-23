noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>
set tabstop=2
set expandtab
set softtabstop=0 
set shiftwidth=2
set number
color darkblue 
set bg=dark

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set ai
set si

command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
map <F3>	0i<Tab>it('should do', () => {<CR><CR>});
map <F2>	0idescribe('Tests smthg', () => {<CR><Esc><F3><CR><CR>});
"map <F2>	0idescribe('Tests smthg', () => {<CR>it('should do', () => {<CR>});<CR>});

" PLUGINS
let g:airline#extensions#tabline#enabled = 1
