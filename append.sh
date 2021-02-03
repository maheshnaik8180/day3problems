Date=$(date +"%d%m%Y");
echo "$Date"

for x in $(ls *.log.1);
do
	extension=$(echo $x | awk -F. '{print $2}')
	echo "extension: $extension"

	baseName=$(echo $x | awk -F. '{print $1}')
	echo "baseName: $baseName"

	newFileName="$baseName-$Date.$extension"
	echo "newFileName: $newFileName"

	mv $x $newFileName
done
