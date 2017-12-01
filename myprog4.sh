mkdir smallest #create smallest direcotry
mkdir largest #create largest directory

ls -l # list of current directory
bigfile="$(find . -type f -exec du -Sh {} + | sort -rh | head -n 1)" # biggest file
smallfile="$(find . -type f -exec du -Sh {} + | sort -rh | tail -n 1 )" #smallest file
echo "Largest file size and file name: " $bigfile #print biggest
echo "smallest file size and file name: " $smallfile #print smallest


mv $smallfile smallest #move smallfile to directory
mv $bigfile largest #move bigfile to directory
