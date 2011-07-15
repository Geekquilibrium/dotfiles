alias _bfunctionslist="echo -e '${COLOR_LIGHT_PURPLE}Lista de funções:
${COLOR_RED}_add_alias  ${COLOR_GRAY}Exemplo: _add_alias {nome} {valor} {diretorio} >> Adiciona alias ao arquivos
${COLOR_RED}_extrair    ${COLOR_GRAY}Exemplo: _extrair {nome_arquivo.extensão}      >> Extrai arquivos
'"

# Função que adiciona alias aos arquivos
# Nome: _add_alias
# Uso: add_alias (nome) (valor) (diretorio)
_add_alias(){
  local name=$1 value="$2"
  echo alias $name=\'$value\' >> $3
  eval alias $name=\'$value\'
  alias $name
}

# Função que faz a extração de arquivos comprimidos
# Nome: _extrair
# Uso: extrair (nome_arquivo.extensao)
_extrair(){
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2)    tar xvjf $1   ;;
      *.tar.gz)     tar xvzf $1   ;;
      *.bz2)        bunzip2 $1    ;;
      *.rar)        unrar x $1    ;;
      *.gz)         gunzip $1     ;;
      *.tar)        tar xvf $1    ;;
      *.tbz2)       tar xvjf $1   ;;
      *.tgz)        tar xvzf $1   ;;
      *.zip)        unzip $1      ;;
      *.Z)          uncompress $1 ;;
      *.7z)         7z x $1       ;;
      *)            echo "'$1' não pode ser extraída pela função 'EXTRAIR'" ;;
    esac
  else
    echo "'$1' não é um arquivo válido"
  fi
}
