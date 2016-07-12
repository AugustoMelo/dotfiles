""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                       __             "
"   _____   __ __  ____  __ __  _______/  |_  ____     "
"   \__  \ |  |  \/ ___\|  |  \/  ___/\   __\/  _ \    " 
"    / __ \|  |  / /_/  >  |  /\___ \  |  | (  <_> )   "
"   (____  /____/\___  /|____//____  > |__|  \____/    "
"        \/     /_____/            \/                 " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- vim-plug begin.
call plug#begin()

" Global
Plug 'neomake/neomake'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'flazz/vim-colorschemes'
Plug 'wombat256.vim'
Plug 'xolox/vim-session'
Plug 'vim-misc'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'

"Plug 'godlygeek/tabular'

" ------- Web development.
"Plug 'pangloss/vim-javascript'
"Plug 'alvan/vim-closetag'

" ------- C# development.
"Plug 'scrooloose/syntastic' 
"Plug 'tpope/vim-dispatch'
"Plug 'omnisharp/omnisharp-vim'
"Plug 'oranget/vim-csharp'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
"Plug 'honza/vim-snippets'

" ------- Cosmetic
Plug 'ryanoasis/vim-devicons'
Plug 'equalsraf/neovim-gui-shim'
Plug 'vim-airline/vim-airline-themes'

" ------- University
call plug#end()
" --- vim-plug end.

" ------- EDITOR CONFIG
" be iMproved, required.

cd ~/workspace
set nocompatible
set termguicolors
filetype plugin indent on
set encoding=utf-8
set fileencoding=utf-8
set cursorline
set noswapfile
set number
set relativenumber
set linebreak
set showcmd
set spell spelllang=en_us
set equalalways
set listchars=eol:¬,trail:·,tab:▸\

" ------- COLOR
syntax on
set background=dark
colorscheme wombat256mod

" ------- INDENTATION
set ts=4 sts=4 sw=4 expandtab

" ------- SEARCH
set hlsearch
set ignorecase
set smartcase
set incsearch

" ------- MOVIMENT
nnoremap j gj
nnoremap k gk
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" ------- ABBREVIATION
cabbrev h vert h
cabbrev sb vert sb

" ------- BINDINGS
nnoremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l  

" ------- NETRW config
" Toggle Vexplore with Ctrl-E
"function! ToggleVExplorer()
"	if exists("t:expl_buf_num")
"		let expl_win_num = bufwinnr(t:expl_buf_num)
"		if expl_win_num != -1
"			let cur_win_nr = winnr()
"			exec expl_win_num . 'wincmd w'
"			close
"			exec cur_win_nr . 'wincmd w'
"			unlet t:expl_buf_num
"		else
"			unlet t:expl_buf_num
"		endif
"	else
"		exec '1wincmd w'
"		Vexplore
"		let t:expl_buf_num = bufnr("%")
"	endif
"endfunction
"map <silent> <C-E> :call ToggleVExplorer()<CR>
"
"" Hit enter in the file browser to open the selected
"" file with :vsplit to the right of the browser.
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"
"" Default to tree mode
"let g:netrw_liststyle=3


" ------- Plugin Config
" AIRLINE
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_spell=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_mode_map = {
            \ '__' : '-',
            \ 'n'  : 'N',
            \ 'i'  : 'I',
            \ 'R'  : 'R',
            \ 'c'  : 'C',
            \ 'v'  : 'V',
            \ 'V'  : 'VL',
            \ '' : 'VC',
            \ 's'  : 'S',
            \ 'S'  : 'S',
            \ '' : 'S',
            \ }
"let g:airline_left_sep=''
"let g:airline_right_sep=''

" NERDTREE
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIgnore = ['\.csproj$', '\.suo$']

"SUPERTAB
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>"]
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabCrMapping=1
autocmd FileType *
            \ if &omnifunc != '' |
            \   call SuperTabChain(&omnifunc, "<c-p>") |
            \ 	call SuperTabSetDefaultCompletionType("<c-x><c-o>") |
            \ endif

" SYNTASTIC
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = '≈'


" CTRL-P
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/][\._]?(bin|obj|references|svn|git)',
            \ 'file': '\v\.(exe|so|dll|csproj|sln|suo)$',
            \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_by_filename = 1

" NEOMAKE
autocmd! TextChanged,InsertLeave * Neomake
let g:neomake_warning_sign = {
            \ 'text': '!',
            \ 'texthl': 'WarningMsg',
            \ }
let g:neomake_error_sign = {
            \ 'text': '✗',
            \ 'texthl': 'ErrorMsg',
            \ }

" VIM-SESSION
set sessionoptions-=buffers
set sessionoptions-=options
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:session_lock_enabled = 0
nmap <C-S-o> :OpenSession <cr>

" TAGBAR
let g:tagbar_ctags_bin = '~\.vim\ctags58\ctags.exe'
nmap <F8> :TagbarToggle<CR>

" OMNISHARP
let g:OmniSharp_selector_ui = 'ctrlp'
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
let g:OmniSharp_timeout = 1
set noshowmatch
set foldmethod=syntax
set completeopt=menuone,preview
set splitbelow
set updatetime=500
set hidden
nnoremap <F2> :OmniSharpRename<cr>
nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
augroup omnisharp_commands
    autocmd!

    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
    autocmd TextChanged,InsertLeave *.cs SyntasticCheck
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    autocmd FileType cs nnoremap <F12> :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <S-A-F10>  :OmniSharpFixIssue<cr> :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up/down by method/property/field
    "autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>
augroup END
