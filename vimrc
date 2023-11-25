" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

"call plug#begin()
"    Plug 'preservim/NERDTree'
"    Plug 'junegunn/goyo.vim'
"call plug#end()

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" OPCOES PESSOAIS
set number
set relativenumber
set wildmenu
set tabstop=4
set shiftwidth=4
set t_Co=16
set laststatus=2

set cursorline
highlight CursorLine cterm=NONE ctermbg=0
highlight CursorLineNr cterm=NONE ctermfg=none ctermbg=0
highlight LineNr cterm=NONE ctermfg=8 ctermbg=none

" COISAS ESPECIFICAS DE FORTRAN
let fortran_have_tabs=1
