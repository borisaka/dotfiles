function watch_renta
	set -l pages (curl ftp://webroot:ZSAmwpB0mU@static.rentapay.ru/ | string split " " | grep ".*html")
    echo $pages
end
