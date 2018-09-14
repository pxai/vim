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
let g:airline#extensions#tabline#formatter = 'jsformatter'
" You need this for triangles :
" With powerfonts: https://github.com/powerline/fonts
let g:airline_powerline_fonts = 1

" ale for lint
" Ale only works in Vim8
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_sign_error = '~'
let g:ale_sign_warning = '-'
let g:airline#extensions#ale#enabled = 1

" Syntastic, should work in Vim7
let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntax for ts: js
au BufReadPost *.ts set syntax=javascript
au BufReadPost *.tsx set syntax=javascript
