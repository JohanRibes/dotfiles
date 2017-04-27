#EXTRACT
function extract(){ 			# Handy extract programm
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# SSH HOSTS
 function ssh-hosts(){
	if [ .ssh/config ] ; then
		cat .ssh/config | grep "^Host " | cut -d" " -f2 | nl;
	else
		echo "No .ssh/config file."
	fi
}


function kill-ssh-agent(){
	export pid=`ps aux | grep 'ssh-agent' | awk 'NR==1{print $1}' | cut -d' ' -f1`
	kill $pid
}
