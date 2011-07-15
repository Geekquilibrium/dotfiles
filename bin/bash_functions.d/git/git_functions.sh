alias _gtfunctions="echo -e '${COLOR_LIGHT_PURPLE}Lista de funções para o git:
${COLOR_BLUE}_gitcommit                ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtcommit MENSAGEM
${COLOR_BLUE}_gitcommitall             ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtcommitall MENSAGEM
${COLOR_BLUE}_gtpushorigin             ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtpushorigin BRANCH
${COLOR_BLUE}_gtcheckout               ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtcheckout BRANCH
${COLOR_BLUE}_gtcheckouttrackingbranch ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtcheckouttrackingbranch MENSAGEM
${COLOR_BLUE}_gtclone                  ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtclone USUARIO ARQUIVO DIRETORIO
${COLOR_BLUE}_gtclonerecursive         ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtclonerecursive USUARIO ARQUIVO DIRETORIO
${COLOR_BLUE}_gtsubmodule              ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtsubmodule USUARIO ARQUIVO DIRETORIO
${COLOR_BLUE}_gtsubint                 ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtsubinit
${COLOR_BLUE}_gtlogforuser             ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtlogforuser USUARIO
${COLOR_BLUE}_gtloggrep                ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtloggrep PESQUISA
${COLOR_BLUE}_gtgrep                   ${COLOR_NC}>>  ${COLOR_GRAY}Uso: _gtgrep PESQUISA
'"


# Função _gtcommit
# Equivalente: git commint -m "Mensagem"
# Uso: _gtcommit "Mensagem"
_gtcommit(){
  gt commit -m "$@"
}

# Função _gtcommitall
# Equivalente: git commint -a -v -m "Mensagem"
# Uso: _gtcommitall "Mensagem"
_gtcommitall(){
  gt commit -a -v -m "$@"
}

# Função _gtpushorigin
# Equivalente: git push origin "Branch"
# Uso: _gtpushorigin "Branch" 
_gtpushorigin(){
  gt push origin $@
}

# Função _gtcheckout
# Equivalente: git checkout "Branch"
# Uso: _gtcheckout "Branch"
_gtcheckout (){
  gt checkout $1
}

# Função _gtcheckouttrackingbranch
# Equivalente: git checkout -tlb "Mensagem" origin/"Branch"
# Uso: _gtcheckouttrackingbranch "Mensagem"
_gtcheckouttrackingbranch (){
  gt checkout -tlb $1 origin/$1
}

# Função _gtclone
# Equivalente: git clone git://github.com/{USUARIO}/{ARQUIVO}.git {DIRETORIO}
# Uso: _gtclone USUARIO ARQUIVO DIRETORIO
_gtclone (){
	git clone git://github.com/$1/$2.git $3
}

# Função _gtclonerecursive
# Equivalente: git clone --recursive git://github.com/{USUARIO}/{ARQUIVO}.git {DIRETORIO}
# Uso: _gtclonerecursive USUARIO ARQUIVO DIRETORIO
_gtclonerecursive (){
  git clone --recursive git://github.com/$1/$2.git $3
}

# Função _gtsubmodule
# Equivalente: git submodule add git://github.com/USUARIO/ARQUIVO.git DIRETORIO
# Uso: _gtsubmodule USUARIO ARQUIVO DIRETORIO
_gtsubmodule (){
  git submodule add git://github.com/$1/$2.git $3
}

# Função _gtsubinit
# Equivalente: git submodule update --init
# Uso: _gtsubinit
_gtsubinit(){
	git submodule update --init
}

# Função _gtlogforuser
# Equivalente: git log --author=USUARIO
# Uso: _gtlogforuser USUARIO
_gtlogforuser(){
  gtlog --author=$1
}

# Função gtloggrep
# Equivalente: git log | grep PESQUISA -B20 -A20
# Uso: _gtloggrep PESQUISA
_gtloggrep(){
  gtlog | grep $@ -B20 -A20
}

# Função _gtgrep
# Equivalente: git grep -n --ignore-case -e "PESQUISA" | highlight green "PESQUISA" blue "^.*\:"
# Uso: _gtgrep PESQUISA
_gtgrep(){
  gt grep -n --ignore-case -e "$@" | highlight green "$@" blue "^.*\:"
}
