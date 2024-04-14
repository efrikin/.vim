autocmd FileType go call SetGolangOptions()
autocmd QuickFixCmdPost [^l]* cwindow

let g:lsc_auto_map = {
  \"defaults": v:true,
  \"ShowHover": "<leader>k",
  \"GoToDefinition": "<leader>]",
  \"FindReferences": "<leader>[",
  \"FindImplementations": "<leader>i",
\}

function SetGolangOptions()
  nnoremap <F2> gg=G``
  setlocal shiftwidth=4 tabstop=4 softtabstop=4
  setlocal equalprg=goimports
endfunction

