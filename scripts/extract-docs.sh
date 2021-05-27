#!/bin/sh

WANT_MULTIVALUE=null

while getopts m ch; do
	case $ch in
	(m)	WANT_MULTIVALUE=true
		;;
	esac
done
shift $(( OPTIND - 1 ))

yq -s -r --argjson WANT_MULTIVALUE $WANT_MULTIVALUE '
.[]|select(.multivalue == $WANT_MULTIVALUE)|(
"#### \(.name)\n\n\(.description)\n",
(.labels[]|"- `\(.name)`: \(.description)"),
"\n"
)
' "$@" | sed 's/: null//'
