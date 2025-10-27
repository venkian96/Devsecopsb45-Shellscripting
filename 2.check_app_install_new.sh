#writing a script to check if a particular package is installed pr not.
#!/bin/bash
PACKAGE=$1
$PACKAGE -h >> /dev/null
if [ $? -eq 0 ]; then
    echo "$PACKAGE is installed"
else
    echo "$PACKAGE is not installed"
fi

#checking multiple apps with single script
#!/bin/bash
for item in unzip megastar jq superstar tree rebelstar
do
bash package.sh $item
echo "----------"
done