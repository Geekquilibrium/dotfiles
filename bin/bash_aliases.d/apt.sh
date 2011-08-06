alias aptshowcommands="echo -e '${COLOR_LIGHT_PURPLE}Available commands:
${COLOR_BLUE}apt${COLOR_RED}search ${COLOR_GRAY} Equivalente: sudo apt-cache search \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}searchname ${COLOR_GRAY} Equivalente: sudo apt-cache search --names-only \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}install ${COLOR_GRAY} Equivalente: sudo apt-get install \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}yinstall ${COLOR_GRAY} Equivalente: sudo apt-get -y install \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}reinstall ${COLOR_GRAY} Equivalente: sudo apt-get install --reinstall \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}finstall ${COLOR_GRAY} Equivalente: sudo apt-get -f install
${COLOR_BLUE}apt${COLOR_RED}show ${COLOR_GRAY} Equivalente: sudo apt-cache show \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}showpkg ${COLOR_GRAY} Equivalente: sudo apt-cache showpkg \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}rm ${COLOR_GRAY} Equivalente: sudo apt-get remove \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}yrm ${COLOR_GRAY} Equivalente: sudo apt-get -y remove \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}rmpurge ${COLOR_GRAY} Equivalente: sudo apt-get remove --purge \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}update ${COLOR_GRAY} Equivalente: sudo apt-get update
${COLOR_BLUE}apt${COLOR_RED}yupdate ${COLOR_GRAY} Equivalente: sudo apt-get -y update
${COLOR_BLUE}apt${COLOR_RED}upgrade ${COLOR_GRAY} Equivalente: sudo apt-get upgrade \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}yupgrade ${COLOR_GRAY} Equivalente: sudo apt-get -y upgrade \"PACKAGE\"
${COLOR_BLUE}apt${COLOR_RED}dupgrade ${COLOR_GRAY} Equivalente: sudo apt-get dist-upgrade
${COLOR_BLUE}apt${COLOR_RED}pkgup ${COLOR_GRAY} Equivalente: sudo apt-get -s upgrade
${COLOR_BLUE}apt${COLOR_RED}check ${COLOR_GRAY} Equivalente: sudo apt-get check
${COLOR_BLUE}apt${COLOR_RED}stats ${COLOR_GRAY} Equivalente: sudo apt-cache stats

${COLOR_BLUE}dpkg${COLOR_RED}i ${COLOR_GRAY} Equivalente: sudo dpkg --install \"PACKAGE\"
${COLOR_BLUE}dpkg${COLOR_RED}r ${COLOR_GRAY} Equivalente: sudo dpkg --remove \"PACKAGE\"
${COLOR_BLUE}dpkg${COLOR_RED}P ${COLOR_GRAY} Equivalente: sudo dpkg --purge \"PACKAGE\"
${COLOR_BLUE}dpkg${COLOR_RED}p ${COLOR_GRAY} Equivalente: sudo dpkg --print-avall \"PACKAGE\"
${COLOR_BLUE}dpkg${COLOR_RED}l ${COLOR_GRAY} Equivalente: sudo dpkg --list \"PACKAGE\"
${COLOR_BLUE}dpkg${COLOR_RED}lgrep ${COLOR_GRAY} Equivalente: sudo dpkg --list | grep \"PACKAGE\"
${COLOR_BLUE}dpkg${COLOR_RED}s ${COLOR_GRAY} Equivalente: sudo dpkg --search \"PACKAGE\"
${COLOR_BLUE}dpkg${COLOR_RED}get ${COLOR_GRAY} Equivalente: sudo dpkg --get-selection > nome_do_arquivo.extensao
'"
alias aptsearch='sudo apt-cache search '
alias aptsearchname='sudo apt-cache search --names-only '
alias aptinstall='sudo apt-get install '
alias aptyinstall='sudo apt-get -y install '
alias aptreinstall='sudo apt-get install --reinstall '
alias aptfinstall='sudo apt-get -f install'
alias aptshow='sudo apt-cache show '
alias aptshowpkg='sudo apt-cache showpkg '
alias aptrm='sudo apt-get remove '
alias aptyrm='sudo apt-get -y remove'
alias aptrmpurge='sudo apt-get remove --purge '
alias aptupdate='sudo apt-get update'
alias aptyupdate='sudo apt-get -y update'
alias aptupgrade='sudo apt-get upgrade '
alias aptyupgrade='sudo apt-get -y upgrade '
alias aptdupgrade='sudo apt-get dist-upgrade'
alias aptpkgup='sudo apt-get -s upgrade'
alias aptcheck='sudo apt-get check'
alias aptstats='sudo apt-cache stats'

alias dpkgi='sudo dpkg --install '
alias dpkgr='sudo dpkg --remove '
alias dpkgP='sudo dpkg --purge '
alias dpkgp='sudo dpkg --print-avall '
alias dpkgl='sudo dpkg --list '
alias dpkglgrep='sudo dpkg --list | grep '
alias dpkgs='sudo dpkg --search '
alias dpkgget='sudo dpkg --get-selection > '
