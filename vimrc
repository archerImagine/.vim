" http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
" call pathogen#runtime_append_all_bundles() This doesnot work, used the next link.
call pathogen#helptags()

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" https://github.com/altercation/vim-colors-solarized
syntax enable
" set background=dark
colorscheme solarized

" Setting if gui is running or in terminal
if has('gui_running')
    set background=dark
else
    set background=light "Seting light in termial is not working for non-gui
endif

" http://www.alexeyshmalko.com/2014/using-vim-as-c-cpp-ide/
" set indentation rules

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" File-type detection
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

