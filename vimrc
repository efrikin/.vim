filetype plugin indent on
syntax on

let g:mapleader             = "\<Space>"
let g:netrw_banner          = 0
let g:netrw_fastbrowse      = 0     " https://github.com/tpope/vim-vinegar/issues/13#issuecomment-489440040
let g:netrw_use_errorwindow = 1     " https://github.com/vim/vim/issues/7828
let g:skip_defaults_vim     = 1

" Airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

nnoremap <Leader> <NOP>
nnoremap <Leader>b :set nomore<Bar>:buffers<Bar>:set more<CR>:buffer<Space>
nnoremap <Leader>e :Explore %:p:h<CR>
nnoremap <Leader>q :bwipeout<CR>:redraw<CR>
nnoremap <Leader>t <C-o>
nnoremap <Tab> :wincmd w<CR>

if has("clipboard")
  set clipboard^=unnamed        " On mac and Windows, use * register for copy-paste
  if has("unnamedplus")         " When possible use + register for copy-past.
    set clipboard^=unnamedplus  " Required vim with support +xterm_clipboard +clipboard
  endif
endif

set nocompatible
set encoding=utf-8 fileformats=unix fileencodings=utf-8,cp1251,koi8-r,cp866
set foldlevel=99 foldmethod=indent " za to toggle, opens all by default
set hidden
set hlsearch incsearch ignorecase smartcase showmatch
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖХЪ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:{},фисвуапршолдьтщзйкыегмцчняхъ;abcdefghijklmnopqrstuvwxyz[]
set laststatus=2 noruler statusline=\%M\%f%=\%l:\%c
set linebreak showbreak=¬
set list listchars=tab:•·,trail:•,nbsp:¤,extends:¦,precedes:¦
set matchtime=1
set mouse= sidescroll=1             " horizontal scroll by symbol (default half screen)
set nobackup noswapfile nowritebackup
set noeb vb t_vb=                   " https://vim.fandom.com/wiki/Disable_beeping
set notitle nowrap nomodeline
set nowildmenu wildmode=list:longest,full
set shortmess=aI
set splitright splitbelow
set synmaxcol=300 spelllang=
set ttimeout ttimeoutlen=50
set undolevels=200 viminfo=""

silent! colorscheme google_dark
silent! set completeopt=menuone,noinsert,noselect

" let g:EditorConfig_preserve_formatoptions = 1
" let g:easygit_enable_command = 1
let g:lsc_popup_syntax = v:false
let g:lsc_reference_highlights = v:false
let g:lsc_server_commands = {
  \"go":              {"log_level": -1, "command": "gopls"},
  \"python":          {"log_level": -1, "command": "pyls"},
  \"javascript":      {"log_level": -1, "command": "typescript-language-server --stdio"},
  \"javascriptreact": {"log_level": -1, "command": "typescript-language-server --stdio"},
  \"typescript":      {"log_level": -1, "command": "typescript-language-server --stdio"},
  \"typescriptreact": {"log_level": -1, "command": "typescript-language-server --stdio"},
  \"php": {
  \  "log_level": -1,
  \  "command": "intelephense --stdio",
  \  "message_hooks": {
  \    "initialize": {
  \      "initializationOptions": {"storagePath": "/tmp/intelephense"},
  \     },
  \  },
  \  "workspace_config": {
  \    "intelephense.files.exclude": ["**/node_modules/**"]
  \  },
  \},
\}
let g:lsc_auto_map = {
  \"defaults": v:true,
  \"ShowHover": "<leader>k",
  \"GoToDefinition": "<leader>]",
  \"FindReferences": "<leader>[",
  \"FindImplementations": "<leader>i",
\}

" Delete trailing spaces before saving.
" Use ":autocmd!" to disable this temporary
autocmd BufWrite * silent! %s/[ \t\r]\+$//

" Restore position cursor after open file
autocmd BufLeave,BufWinLeave * silent! mkview
autocmd BufReadPost * silent! loadview

augroup go
  autocmd!
  autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4
  autocmd FileType go setlocal makeprg=golangci-lint\ run
  autocmd FileType go autocmd BufWritePre <buffer> execute "normal! mz:mkview\<esc>:%!goimports-safe.sh\<esc>:loadview\<esc>`z"
" autocmd BufWritePost *.go silent make! <afile> | silent redraw!
  autocmd QuickFixCmdPost [^l]* cwindow
augroup END

" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END
