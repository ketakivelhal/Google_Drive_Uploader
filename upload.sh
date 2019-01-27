#! /bin/bash
echo "enter the suitable option number"
echo "0.exit 1.upload 2.download 3.list files"
read var
until [ $var -eq '0' ]
do
	if [ $var -eq '1' ]
	then
		echo "enter file name"
		read varname
		cd $(find / -name "$varname" 2>/dev/null | head -n 1|xargs dirname)
		gdrive upload "$varname"
		cd 
		cd Desktop
	elif [ $var -eq '2' ]
	then
		echo "enter file name"
		read varname
		gdrive download query "name contains '$varname'"
	elif [ $var = '3' ]
	then
		gdrive list
	fi
	echo "enter the suitable option number"
	echo "0.exit 1.upload 2.download 3.list files"
	read var
done
	
	




