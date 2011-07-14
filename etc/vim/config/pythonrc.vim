set ai et sta sw=4 sts=4 tw=78 ts=4 st=4 cc=+2 
set smartindent cinwords=if,elit,else,for,while,try,except,finally,def,class
set smarttab
set omnifunc=pythoncomplete#Complete
set completeopt=menuone,longest,preview

autocmd BufRead *.py highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead *.py match BadWhitespace /^\t\+/
autocmd BufRead *.py match BadWhitespace /\s\+$/
autocmd BufRead *.py inoremap # X^H#
autocmd BufWritePost *.py !python -c "import py_compile; py_compile.compile(r'<afile>')"

" Plugins
  " Pyflakes
    let g:pyflakes_use_quickfix = 0
    if has("gui_running")
      highlight SpellBad term=underline gui=undercurl guisp=Orange
    endif

  " Pydoc
    if has('win32') || has('win64')
      let g:pydoc_cmd = "C:\\Python\\Lib\\pydoc.py"
    else
      let g:pydoc_cmd = "/usr/bin/pydoc"
    endif
    nmap ,pd :Pydoc

  " Pylint
    compiler pylint
    let g:pylin_onwrite = 0

  " Pydiction
    set complete+=k/path/to/pydiction iskeyword+=.,(
    let g:pydiction_location = "~/.vim/bundle/pydiction/complete-dict"
    let g:pydiction_menu_height = 15

  " Pep8
    let g:pep8_map = '<leader>8'

  " PyTest
    " Execute the tests
      nmap <silent><leader>pf <Esc>:Pytest file<CR>
      nmap <silent><leader>pc <Esc>:Pytest class<CR>
      nmap <silent><leader>pm <Esc>:Pytest method<CR>
    " cycle through test errors
      nmap <silent><leader>pn <Esc>:Pytest next<CR>
      nmap <silent><leader>pp <Esc>:Pytest previous<CR>
      nmap <silent><leader>pe <Esc>:Pytest error<CR>

  " Ropevim
    map <leader>rg :RopeGotoDefinition<CR>
    map <leader>rr :RopeRename<CR>

  " Makegreen
    map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
