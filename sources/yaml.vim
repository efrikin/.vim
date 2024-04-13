autocmd FileType yaml,yml call SetYamlOptions()

function SetYamlOptions()
  setlocal colorcolumn=80
  setlocal cursorcolumn
endfunction
