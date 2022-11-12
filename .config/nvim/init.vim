set number
set relativenumber
set mouse=a
set showcmd
set encoding=UTF-8
set showmatch
set sw=2
set ruler
set cursorline

syntax enable

" {{ Plugins }}
call plug#begin('~/.vim/plugged')
" {{Themes}}
  Plug 'morhetz/gruvbox'

" {{ Brackets / visuals helpers }}
  Plug 'luochen1990/rainbow'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'yggdroot/indentline'

" {{ Navigation }}
  Plug 'preservim/nerdtree'
"
" {{ Comments }} 
" Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-commentary'

" {{ Fancy plugins }} 
  Plug 'ap/vim-css-color'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

" Using the gruvbox theme
autocmd vimenter * ++nested colorscheme gruvbox

" RAINBOX
let g:rainbow_active = 1

" NerdTree
nmap <C-b> :NERDTreeToggle<CR>

" Icons


" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
