" " Alexandre Lucchesi's Vim Configuration
"
" 'Perfection is achieved, not when there's nothing more to add,
"	but when there's nothing left to take away!'
"
execute pathogen#infect()

filetype plugin indent on

set nobackup
set noswapfile
set hidden
"set shiftwidth=4
"set tabstop=4
"set expandtab
set number
"set autoindent
"set hlsearch
set cmdheight=1
set textwidth=120
set colorcolumn=+1
set autochdir
set mouse=a

" solarized
syntax enable 
set background=dark
colorscheme solarized

" neocomplcache
let g:neocomplcache_enable_at_startup = 1            " Enables the plugin. 
let g:neocomplcache_enable_smart_case = 1            " Use smartcase. 
let g:neocomplcache_enable_camel_case_completion = 1 " Use camel case completion. 

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_include_dirs = ['/Users/alexandrelucchesi/Qt/5.5/clang_64/lib/QtCore.framework/Versions/5/Headers']

" nerdtree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" bindings
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>
map <C-n> :NERDTreeToggle<CR>

