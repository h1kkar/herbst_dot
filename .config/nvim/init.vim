"   ┌┐┌┌─┐┌─┐┬  ┬┬┌┬┐
"   │││├┤ │ │└┐┌┘││││
"   ┘└┘└─┘└─┘ └┘ ┴┴ ┴

set nocompatible
filetype off

call plug#begin()

" statusline
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'

" syntax
Plug 'tpope/vim-surround'    
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/changesPlugin'
Plug 'vim-python/python-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'neomutt/neomutt.vim'
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-eunuch'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-commentary'

" ui
Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'
Plug 'junegunn/limelight.vim'

" colorscheme
Plug 'danishprakash/vim-yami'           "yami
Plug 'nikolvs/vim-sunbather'            "sunbather
Plug 'n1ghtmare/noirblaze-vim'          "noirblaze
Plug 'jaredgorski/fogbell.vim'          "fogbell(_light; lite)
Plug 'wadackel/vim-dogrun'              "dogrun
Plug 'owickstrom/vim-colors-paramount'  "paramount
Plug 'andreasvc/vim-256noir'            "256_noir
Plug 'TheNiteCoder/mountaineer.vim'     "mountaineer(-grey; light)
Plug 'duckwork/nirvana'                 "nirvana
Plug 'jaredgorski/SpaceCamp'            "spacecamp(_lite)
Plug 'ayu-theme/ayu-vim'                "ayu
"gruvbox
"true-monochrome
"siori
call plug#end()

colorscheme ayu

"let g:airline_theme='ayu'
"let g:airline_powerline_fonts = 1

let g:lightline = {
      \ 'colorscheme': 'ayu',
      \ }

set completeopt-=preview

syntax enable
set encoding=UTF-8
set noswapfile
set noshowmode
set number
set wildmenu
set wildmode=longest:full,list:full
set encoding=UTF-8
set nofoldenable
set foldmethod=marker
set foldtext=MyFoldText()
set foldmarker={{{,}}}
set nocursorline
set showmatch
set linebreak
set ignorecase
set smartcase
set clipboard+=unnamedplus
set mouse=a
set fillchars+=vert:│,fold:\ ,eob:\ 
set nolist
set listchars=tab:│\ 
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

map <F5> :NERDTreeToggle<CR>
let FZF_DEFAULT_COMMAND='find .'

" coc autoindent
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
