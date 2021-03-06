alias yshowcommands="echo -e '${COLOR_LIGHT_PURPLE}Available commands:
${COLOR_BLUE}y${COLOR_RED}search ${COLOR_GRAY} Equivalente: sudo yum search \"PACKAGE\"
${COLOR_BLUE}y${COLOR_RED}install ${COLOR_GRAY} Equivalente: sudo yum install \"PACKAGE\"
${COLOR_BLUE}yy${COLOR_RED}install ${COLOR_GRAY} Equivalente: sudo yum -y install \"PACKAGE\"
${COLOR_BLUE}y${COLOR_RED}info ${COLOR_GRAY} Equivalente: sudo yum info \"PACKAGE\"
${COLOR_BLUE}y${COLOR_RED}rm ${COLOR_GRAY} Equivalente: sudo yum remove \"PACKAGE\"
${COLOR_BLUE}yy${COLOR_RED}rm ${COLOR_GRAY} Equivalente: sudo yum -y remove \"PACKAGE\"
${COLOR_BLUE}y${COLOR_RED}update ${COLOR_GRAY} Equivalente: sudo yum update
${COLOR_BLUE}yy${COLOR_RED}update ${COLOR_GRAY} Equivalente: sudo yum -y update
${COLOR_BLUE}y${COLOR_RED}upgrade ${COLOR_GRAY} Equivalente: sudo yum upgrade
${COLOR_BLUE}yy${COLOR_RED}upgrade ${COLOR_GRAY} Equivalente: sudo yum -y upgrade
${COLOR_BLUE}y${COLOR_RED}checkupdate ${COLOR_GRAY} Equivalente: sudo yum check-update
${COLOR_BLUE}y${COLOR_RED}list ${COLOR_GRAY} Equivalente: sudo yum list
${COLOR_BLUE}y${COLOR_RED}listgrep ${COLOR_GRAY} Equivalente: sudo yum list | grep
${COLOR_BLUE}y${COLOR_RED}listinstalled ${COLOR_GRAY} Equivalente: sudo yum list installed
${COLOR_BLUE}y${COLOR_RED}listavailable ${COLOR_GRAY} Equivalente: sudo yum list available
${COLOR_BLUE}y${COLOR_RED}listupdates ${COLOR_GRAY} Equivalente: sudo yum list updates
${COLOR_BLUE}y${COLOR_RED}builddep ${COLOR_GRAY} Equivalente: sudo yum-builddep
${COLOR_BLUE}y${COLOR_RED}repolist ${COLOR_GRAY} Equivalente: sudo yum repolist
'"
alias ysearch='sudo yum search'
alias yinstall='sudo yum install'
alias yyinstall='sudo yum -y install'
alias yinfo='sudo yum info'
alias yrm='sudo yum remove'
alias yyrm='sudo yum -y remove'
alias yupdate='sudo yum update'
alias yyupdate='sudo yum -y update'
alias yupgrade='sudo yum upgrade'
alias yyupgrade='sudo yum -y upgrade'
alias ycheckupdate='sudo yum check-update'
alias ylist='sudo yum list'
alias ylistgrep='sudo yum list | grep'
alias ylistinstalled='sudo yum list installed'
alias ylistavailable='sudo yum list available'
alias ylistupdates='sudo yum list updates'
alias ybuilddep='sudo yum-builddep'
alias yrepolist='sudo yum repolist'
