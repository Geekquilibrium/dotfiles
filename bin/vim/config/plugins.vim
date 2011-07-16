" Configuração plugins
  " Gundo
    map ,<F3> :GundoToggle<CR>
    let g:gundo_right = 1
    let g:gundo_width = 45
  " NERDTreeToggle
    map <F3> :NERDTreeToggle<CR>
    let g:NERDTreeHijackNetrw = 0
    let g:NERDTreeWinPos = 'right'
    let g:NERDTreeWinSize = 45
  " Command-T
    nnoremap <F2> :CommandT<CR>
    nnoremap ,<F2> :CommandTFlush<CR>
    let g:CommandTMaxHeight = 10
    let g:CommandTMatchWindowAtTop = 1
  " Ack
    nmap <A-a> <Esc>:Ack!
  " Solarized
    call togglebg#map("<F8>")
  " MiniBufExpl
    let g:miniBufExplForceSyntaxEnable = 1
    map <A-m> :CMiniBufExplorer<CR>
  " Surround
    let g:surround_{char2nr('-')} = "<% \r %>"
    let g:surround_{char2nr('=')} = "<% \r %>"
    let g:surround_{char2nr('8')} = "/* \r */"
    let g:surround_{char2nr('s')} = " \r "
    let g:surround_{char2nr('^')} = "/^\r$/"
    let g:surround_indent = 1
  " Easymotion
    let g:EasyMotion_leader_key = ',m'
    let g:EasyMotion_mapping_t = '_t'
    let g:EasyMotion_mapping_gE = '_gE'
  " Tabular
    nmap ,a= :Tabularize /=<CR>
    vmap ,a= :Tabularize /=<CR>
    nmap ,a: :Tabularize /:<CR>
    vmap ,a: :Tabularize /:<CR>
    nmap ,a:: :Tabularize /:\zs<CR>
    vmap ,a:: :Tabularize /:\zs<CR>
    nmap ,a, :Tabularize /,<CR>
    vmap ,a, :Tabularize /,<CR>
    
    inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
    function! s:align()
      let p = '^\s*|\s.*\s|\s*$'
      if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
      endif
    endfunction 
  " Taglist
    nmap <F4> :TlistToggle<CR>
    let Tlist_Exit_OnlyWindow = 1
    let Tlist_WinWidth = 40
    let Tlist_GainFocus_On_ToggleOpen = 1
    let Tlist_Ctags_Cmd = 'ctags'
    let Tlist_Auto_Highlight_Tag = 1
    let Tlist_Auto_Update = 1
    let Tlist_File_Fold_Auto_Close = 1
    let Tlist_Highlight_Tag_On_BufEnter = 1
    let Tlist_Use_SingleClick = 1
    let Tlist_Use_Right_Window = 1
    let Tlist_Use_Horiz_Window = 0
    let Tlist_Show_One_File = 1
    let g:ctags_statusline = 1 
  " LustyExplorer
    " <leader>lf - Opens filesystem explorer.
    " <leader>lr - Opens filesystem explorer at the directory of the current file.
    " <leader>lb - Opens buffer explorer.
    " <leader>lg - Opens buffer grep.
    " <leader>lj - Lustjuggler
  " Ragtag
    let g:ragtag_global_maps = 1
  " Zencoding
    let g:user_zen_expandabbr_key = '<c-e>'
    let g:user_zen_complete_tag = 1
    let g:user_zen_settings = {
      \ 'php' : {
      \   'extends' : 'html',
      \   'filters' : 'c',
      \ },
      \ 'xml' : {
      \   'extends' : 'html',
      \ },
      \ 'haml' : {
      \   'extends' : 'html',
      \ },
      \ 'erb' : {
      \   'extends' : 'html',
      \ },
      \}
  " SCSS
    au BufRead,BufNewFile *.scss set filetype=scss

" Mapeamentos
  " Limpa highlight das pesquisas
    nmap <leader>/ :nohls<CR>

  map <c-j><c-w>j
  map <c-k><c-w>k
  map <c-l><c-w>l
  map <c-h><c-w>h

  " Autocomplete
  imap <C-Space> <C-X><C-O>

  " Tab
    nmap <C-UP> :tabnew<CR>
    imap <esc><c-up> :tabnew<CR>
    nmap <C-down> :tabclose<CR>
    imap <esc><c-down> :tabclose<CR>
    nmap <C-right> :tabnext<CR>
    imap <esc><c-right> :tabnext<CR>
    nmap <C-left> :tabprev<CR>
    imap <esc><c-left> :tabprev<CR>
