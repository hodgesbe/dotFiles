" vim-plug
call plug#begin('~/.vim/plugged')

" deep-space color scheme
Plug 'https://github.com/tyrannicaltoucan/vim-deep-space.git'

" Tender theme
Plug 'jacoborus/tender'

" Airline theme plugin
Plug 'vim-airline/vim-airline-themes'
Plug 'dikiaap/minimalist'

" air-line
Plug 'bling/vim-airline'
Plug 'https://github.com/powerline/fonts.git'

" Vim-Test
" Plug 'janko-m/vim-test'

" UndoTree
Plug 'https://github.com/mbbill/undotree.git'

" Nerd Tree
Plug 'https://github.com/scrooloose/nerdtree.git'

" Fugitive
Plug 'https://github.com/tpope/vim-fugitive.git'

" Indention Helper
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'

" Syntastic
Plug 'https://github.com/vim-syntastic/syntastic.git'

" Surround
Plug 'tpope/vim-surround'

" TagBar
Plug 'majutsushi/tagbar'

" Vim-Obsession (session manager)
Plug 'https://github.com/tpope/vim-obsession.git'

" Vim-Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" NerdCommenter
Plug 'scrooloose/nerdcommenter'

" delimitMate
Plug 'https://github.com/Raimondi/delimitMate.git'

" Twig
Plug 'https://github.com/beyondwords/vim-twig.git'

" Easy Align
Plug 'junegunn/vim-easy-align'

" Split-join
Plug 'https://github.com/AndrewRadev/splitjoin.vim.git'

" Linediff
Plug 'https://github.com/AndrewRadev/linediff.vim.git'

" VimWiki
Plug 'https://github.com/vimwiki/vimwiki.git'

" PHP PSR-2 style fixer
Plug 'stephpy/vim-php-cs-fixer'

" Symantic Highlighting
Plug 'jaxbot/semantic-highlight.vim'

" Supertab
Plug 'https://github.com/ervandew/supertab.git'

" Vdebug
Plug 'joonty/vdebug'

" GitGutter
Plug 'airblade/vim-gitgutter'

" EasyMotion
Plug 'https://github.com/easymotion/vim-easymotion.git'

" FZF Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Vim Multiple-cursors
Plug 'https://github.com/terryma/vim-multiple-cursors.git'

call plug#end()

" set color scheme
set background=dark
syntax on
colorscheme minimalist

" General configuration options
set ai
set autochdir
set backspace=indent,eol,start
set ruler
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set ts=4 sw=4 et
set spelllang=en_us
set showmatch
set title
set showcmd
set splitbelow
set splitright
set autoindent
set nocompatible
set t_Co=256
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

let mapleader="\<SPACE>"

" Insert mode mappings
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u

" Resize window
nmap <silent> <leader>- :res -5<CR>
nmap <silent> <leader>= :res +5<CR>
nmap <silent> <leader>> :vertical resize +5<CR>
nmap <silent> <leader>< :vertical resize -5<CR>

" Special Characters
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:•,extends:>,precedes:•,nbsp:+
endif
set list
"
" Also highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=lightblue guibg=lightblue
" match ExtraWhitespace /\s\+$\|\t/

" show whitespace characters
" set list listchars=tab:>-,trail:•,precedes:•

" enable filetype plugins
filetype on
filetype plugin on
filetype plugin indent on

" Search
set ignorecase
set smartcase
vnoremap // y/<C-R>"<CR>
set incsearch
set hlsearch
hi Search cterm=NONE ctermfg=91 ctermbg=74
hi Search guibg=peru guifg=wheat


" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>
map <silent> <leader>ss :setlocal spell spelllang=en_us<CR>
map <silent> <leader>S :setlocal nospell<CR>
" for MultipleSearch
let g:MultipleSearchMaxColors = 10


" Other Configurations
" nnoremap ; :
" nnoremap Q @q

" Set relative numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" call function with Ctrl+n
nmap <silent><leader>n :call NumberToggle()<cr>

if (has("termguicolors"))
 set termguicolors
endif

" air-line preferences
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1
let g:airline_theme ='minimalist'
let g:airline_detect_modified=1
let g:airline_detect_spell=1
set laststatus=2
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Vim-Test Configureation
" nmap <silent> <leader>t :TestNearest<CR>
" nmap <silent> <leader>T :TestFile<CR>
" nmap <silent> <leader>a :TestSuite<CR>
" nmap <silent> <leader>l :TestLast<CR>
" nmap <silent> <leader>g :TestVisit<CR>
" let test#php#phpunit#options = '-c src/tests/'


" NerdTree
map <silent> <leader>nt :NERDTreeToggle<CR>
map <silent> <leader>nc :NERDTreeFind<CR>
let g:NERDTreeShowHidden=1

"Indent Guide
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=2
let g:indent_guides_auto_colors = 1
let g:indent_guides_auto_colors = 0

" xmllint
map <leader>xl :%!xmllint --format -<CR>

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
nmap <silent> <leader>syn :SyntasticToggleMode<CR>

" TagBar
nmap <silent> <leader>tb :TagbarToggle<CR>

" Nerd Commenter Settings

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Vim easy align
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|->\|>' },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }

" LineDiff
nmap <silent> <leader>ldf :Linediff<CR>
nmap <silent> <leader>ldr :LinediffReset<CR>

" PHP PSR Settings
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)

let g:php_cs_fixer_php_path = "/usr/bin/php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0


" Symantic Highlighting
nnoremap <Leader>hl :SemanticHighlightToggle<cr>
autocmd FileType javascript setlocal iskeyword+=$
autocmd FileType php setlocal iskeyword+=$
" let g:semanticTermColors = [ 50, 85, 81, 70, 75, 69, 63, 57, 93, 99, 119, 157, 141, 135, 129, 208, 214, 203, 196, 197 ]
let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]
" let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19, 21, 26]

" EasyMotion
map <Leader><Leader> <Plug>(easymotion-prefix)

" UndoTree
nnoremap <leader>ht :UndotreeToggle<cr>

" FZF Fuzzy Finder
nmap <silent><leader>ff :FZF ~/gitrepos<CR>
