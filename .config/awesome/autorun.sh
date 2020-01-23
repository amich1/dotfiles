function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

run wicd-client --tray
run pnmixer
