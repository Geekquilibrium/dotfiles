" =============================================================
" INSERIR CABEÇALHOS EM ARQUIVOS NOVOS - NÃO INSERE DUAS VEZES
" =============================================================
" Esta função testa as 5 primeiras linhas do arquivo
" se nelas já houver "Last Change" ele passa batido
" ou seja não insere o cabeçalho
" usr_41.txt
fun! InsertChangeLog()
    let l:flag=0
    for i in range(1,5)
        if getline(i) !~ '.*Last Change.*'
            let l:flag = l:flag + 1
        endif
    endfor
    if l:flag >= 5
        normal(1G)
        call append(0, "Arquivo: <+Description+>")
        call append(1, "Criado: " . strftime("%a %d/%b/%Y hs %H:%M"))
        call append(2, "Last Change: " . strftime("%a %d/%b/%Y hs %H:%M"))
        call append(3, "Autor: <+digite seu nome+>")
        call append(4, "Site: <+digite o endereço de seu site+>")
        call append(5, "Twitter: <+your twitter here+>")
        normal gg
    endif
endfun
map <special> ,<F4> <esc>:call InsertChangeLog()<cr>

" =============================================================
"   ATUALIZA O CHANGE LOG INSERIDO NA FUNÇÃO ANTERIOR
" =============================================================
" update changefile log
" http://tech.groups.yahoo.com/group/vim/message/51005
" só atualiza o Change log se o arquivo tiver mais que 5 linhas
" e contiver a string "Last Change:"
fun! LastChange()
    let _s=@/
    let l = line(".")
    let c = col(".")
    if line("$") >= 5
        1,5s/\s*Last Change:\s*\zs.*/\="" . strftime("%Y %b %d %X")/ge
    endif
    let @/=_s
    call cursor(l, c)
endfun
" precedendo os comandos com keepjumps ele não adiciona o salto
" referente a alteração na lista de saltos, para mais detalhes veja :h keepjumps
autocmd BufWritePre * keepjumps call LastChange()

" =============================================================
"   Pula com <leader>j para marcas do tipo <+site+> 
" =============================================================
" place holders snippets
" File Templates
" --------------
"  <leader>j jumps to the next marker
" iabbr <buffer> for for <+i+> in <+intervalo+>:<cr><tab><+i+>
function! LoadFileTemplate()
    "silent! 0r ~/.vim/templates/%:e.tmpl
    syn match vimTemplateMarker "<+.\++>" containedin=ALL
    hi vimTemplateMarker guifg=#67a42c guibg=#112300 gui=bold
endfunction
function! JumpToNextPlaceholder()
    let old_query = getreg('/')
    echo search("<+.\\++>")
    exec "norm! c/+>/e\<CR>"
    call setreg('/', old_query)
endfunction
autocmd BufNewFile * :call LoadFileTemplate()
nnoremap <leader>j :call JumpToNextPlaceholder()<CR>a
inoremap <leader>j <ESC>:call JumpToNextPlaceholder()<CR>a
