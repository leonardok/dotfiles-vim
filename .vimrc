" .vimrc config file


" let Vundle manage Vundle
" https://github.com/gmarik/vundle
" $ vim +BundleInstall +qall
" (or from vim) :BundleInstall
"
" Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

set nocompatible               " be iMproved
filetype off                   " required!


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"
" PUT BUNDLES HERE
"
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'chazy/cscope_maps'

filetype plugin indent on     " required!


" configurations for bundles
let g:acp_enableAtStartup = 0				" Disable AutoComplPop.
let g:neocomplcache_enable_at_startup = 1		" Use neocomplcache.
let g:neocomplcache_enable_camel_case_completion = 1	" Use camel case completion.
let g:neocomplcache_enable_underbar_completion = 1	" Use underbar completion.
let g:neocomplcache_min_syntax_length = 3		" Set minimum syntax keyword length.
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_max_list = 5			" Maximum displayed items

let g:Powerline_colorscheme = 'skwp'

" Shell like behavior(not recommended) (but I like it!).
set completeopt+=longest
inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"


" custom vimrc configuration here
set t_Co=256

set hlsearch " Highlight searches
set number   " show line numbers

set autoindent
set noexpandtab
set tabstop=8
set shiftwidth=8

set list
set listchars=tab:→\ ,trail:.,extends:#,nbsp:.


" Highlight extra white spaces
" Those lines to:
"   - Create the ExtraWhitespace hl group
"   - Match trailing spaces
"   - This will ensure all themes get it
"   - Makes sure that trailing spaces are highlighted once out of insert mode
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+\%#\@<!$/
" match ErrorMsg '\%>80v.\+'
" au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * redraw!

" This are to move the divisions around for split sessions
noremap <silent> ] <C-W>++
noremap <silent> [ <C-W>-
noremap <silent> } <C-W>>
noremap <silent> { <C-W><
noremap <silent> <C-J> <C-W>j<C-W>_
noremap <silent> <C-K> <C-W>k<C-W>_

set wmh=0			" sets the minimum window height to 0

" NERDTree configuration
au VimEnter * NERDTree
au VimEnter * NERDTreeToggle

noremap <silent> <F10> :NERDTreeToggle<CR>


" To replace spaces with tabs :set noet|retab!
" Following commands are to set filetype specifics like ruby files to be
" indented with tabs of 2 spaces.
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead *.js,*.js.rb,*.js.erb set filetype=javascript noexpandtab shiftwidth=4 tabstop=4
au BufNewFile,BufRead *.less set filetype=less noexpandtab shiftwidth=4 tabstop=4
au BufNewFile,BufRead *.haml set filetype=haml expandtab shiftwidth=2 tabstop=2
au BufNewFile,BufRead *.py,*.pm set filetype=python expandtab shiftwidth=4 tabstop=4

" Enable omni completion.
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType c set omnifunc=ccomplete#Complete

au FileType ruby set omnifunc=rubycomplete#Complete
au FileType ruby let g:rubycomplete_buffer_loading=1
au FileType ruby let g:rubycomplete_classes_in_global=1


" use solarized by default
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Rewrite bg color for the set list
hi SpecialKey ctermbg=234

