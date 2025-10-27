# Linux machine base tools
sudo apt update && sudo apt install -y unzip jq net-tools tree

# declaring variables
A=10
B=20
C=30

# Access or print varibles on screen
 echo $A
 echo ${B}
 echo "${C}"

 # how to check particular package is instaled or not
  # !/bin/bash
  PACKAGE=$1
  $PACKAGE -h 
  if [ $($PACKAGE -h) -eq 0]
  then
  echo "$PACKAGE is installed"
  else
  echo "$PACKGE is not installed"
  fi 
# cheking multiple apps with single script
#!/bin/bash
for item in unzip megastar jq superstar tree rebelstar
do
bash package.sh $item
echo "----------"
done 