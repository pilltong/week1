if [ $# -eq 0 ]
then
	for i in *
	do 
		mv $i `echo $i | tr '[a-z|A-Z]' '[A-Z|a-z]'`
	done
elif [ $# -gt 0 ]
then 
	for i in $*
	do 
		cd $i
		for i in *
		do 
			mv $i `echo $i | tr '[a-z|A-Z]' '[A-Z|a-z]'`
		done
	done
fi
