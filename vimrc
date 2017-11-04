set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'

call vundle#end()

set nu
set backspace=2 " Corrects backspacing issues
let mapleader = ","
syntax on

" PHP style helpers
set tabstop=4           " Tab width
set softtabstop=4       " Soft tab width
set shiftwidth=4        " Shift width
set expandtab           " Use spaces instead of tabs


" Gutentags configuration
let g:gutentags_cache_dir="~/.vim/gutentags"
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']

" CtrlP configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Open CtrlP buffers
map <tab> :CtrlPBuffer<cr>
map <leader>tb :CtrlPBufTag<cr>
map <leader>ta :CtrlPTag<cr>
" Jump to definition
map <silent> <leader>jd :CtrlPTag<cr><C-\>w
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ALE in Airline
let g:airline#extensions#ale#enabled = 1
