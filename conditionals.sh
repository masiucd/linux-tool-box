 if [[ $USER = 'marcis' ]]; then
	 echo "hello master"
 else
	 echo "you are not the master"
 fi


if [[ 10 -eq 10 ]]; then
	echo "true"
else
	echo "false"
fi

check_status() {
    local status = $(curl -ILs https://example.org | head -n 1 | cut -d ' ' -f 2)
    if [[ $status -lt 200 ]] || [[ $status -gt 299 ]]; then
        echo "$1 failed with a $status"
        return 1
    else
        echo "$1 succeeded with a $status"
    fi
}

check_status
