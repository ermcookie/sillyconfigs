exec dbus-launch i3
polybar &


















































f[ -d "$xinitdir"/xinitrc.d ] ; then
	for f in "$xinitdir/xinitrc.d"/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

"$twm" &
"$xclock" -geometry 50x50-1+1 &
"$xterm" -geometry 80x50+494+51 &
"$xterm" -geometry 80x20+494-0 &
exec "$xterm" -geometry 80x66+0+0 -name login
