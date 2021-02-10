#!/bin/bash
# <py_contents.sh>
# - Place this file in /bin for use this shell program in any directories.
# - Bash shell script program to make contents file
# Writer: Han Jaesung
# 2021. 02. 09. (화) 23:32:19 KST

echo "Let's start!"
CURR=( $(pwd))
cd $CURR

ARR=( $(find -name "*.py" | sort ) )
for VALUE in "${ARR[@]}";do					# For all values in ARR, one by one order
	head -n 10 $VALUE | grep "# <\|# -" >> 'contents.txt'	# >> means redirection with 'Append mode'
	echo -e '\n\n' >> 'contents.txt'			# echo -e : To effect on the newline character 
done
