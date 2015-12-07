#!/bin/csh

set md5sum_new=" "
set md5sum_new=" "

while (1)
        set md5sum_old=$md5sum_new
        set md5sum_new=`md5sum nie | awk '{print $1}'`
	if ($md5sum_old =~ $md5sum_new) then
		echo "nie1"
	else 
		echo "nie2"
	endif
	sleep 2
end
