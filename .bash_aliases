# .bash_aliases

# User specific aliases and functions
alias aptitude='/usr/bin/aptitude -P'
alias cb='/usr/bin/xclip -selection clipboard'
alias cp='/bin/cp -i'
alias flashpids="(ps aux | grep npviewer.bin | grep -v grep | awk '{print \$2}' ; ps aux | grep flashplayer | grep -v grep | awk '{print \$2}') | xargs"
alias fortune='fortune -ac'
alias git-out-range='git push --dry-run 2>&1 | perl -nE '\''/(\w+\.\.\w+)/ && say $1'\'
alias iperl="/usr/bin/perl -Mstrict -Mwarnings -MData::Dumper <<-'EOF'"
alias less='/usr/bin/less -S'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'
alias rot13='/home/bamccaig/bin/rot --13'
alias rot47='/home/bamccaig/bin/rot --47'
alias scheme='/usr/bin/guile'
alias sls='/usr/bin/screen -ls'
alias todo='/usr/bin/todo -G'

if [ -f ~/.bash_aliases_ex ]; then
    source ~/.bash_aliases_ex;
fi;

