set path+=**

" Ignore files
set wildignore+=*_build/*
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')
set ma
set encoding=utf-8
set fileencoding=utf-8
set shortmess+=c
set number
set smartindent
set mouse=a 
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set showmatch
set sw=2
set relativenumber
set hidden
set laststatus=2
set noshowmode
set expandtab
set tabstop=4
" coc.vim config
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

" IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mbbill/undotree'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'romgrk/nvim-treesitter-context'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" GWorktree
Plug 'ThePrimeagen/git-worktree.nvim'

" HARPOON!!
Plug 'mhinz/vim-rfc'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'

" prettier
Plug 'sbdchd/neoformat'
Plug 'jparise/vim-graphql'
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Git
Plug 'stsewd/fzf-checkout.vim'

call plug#end()

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}

let g:coc_global_extensions = ['coc-tsserver',
\ 'coc-json',
\ 'coc-html-css-support',
\ 'coc-css',
\ 'coc-sql',
\ 'coc-yaml']

" "0P
nnoremap <leader>e "_C"0P

" Mapping keys
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>w :w<CR>
nmap <Leader>q <Esc>:q<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

" Harpoon
nnoremap <silent><Leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>ki :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>j :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><leader>k :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><leader>l :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><leader>; :lua require("harpoon.ui").nav_file(4)<CR>

" Window splitting
nnoremap <C-L> <C-W><C-L>

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

" A
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nmap <leader>Y "+Y

nnoremap <leader>d "_d
vnoremap <leader>d "_d
"
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
nnoremap <leader>; :lua require("theprimeagen.git-worktree").execute(vim.loop.cwd(), "just-build")<CR>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" CoC
" Navigating
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> <F8> <Plug>(coc-diagnostic-next
nmap <silent> <F9> <Plug>(coc-diagnostic-prev)
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nmap <silent>gf   <Plug>(coc-fix-current)
nmap <silent>ga  <Plug>(coc-codeaction)
nnoremap <silent> gh :call CocAction('doHover')<CR>

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
" nmap <leader>gf  <Plug>(coc-fix-current)

" GIT
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>gtn :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
nnoremap <leader>gt :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gup :!~/bash/git/gu.sh<CR>
nnoremap <leader>gu :UndotreeToggle<CR>

" Scripting & Bashing
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer
nnoremap <leader>x :!chmod +x %<CR>

colorscheme gruvbox
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#autoformat_config_present = 1
let g:prettier#config#config_precedence = 'prefer-file'
let g:gruvbox_contrast_dark = "hard"
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_tags_command = 'ctags -R'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.colnr = ' L:'
" Reverse to get git files on top
let $FZF_DEFAULT_OPTS='--reverse'

" coc.nvim config
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set background=dark

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Prettier & ESLint
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

lua << EOF
require("lp-mkdir.git_worktree")
EOF
