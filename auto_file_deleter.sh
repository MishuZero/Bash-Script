#!/bin/bash
read -p "Enter file type :" TYP
LST=$( ls | grep ".$TYP") 
WRD=$( ls | grep -ic ".$TYP")
####################################################
# read -p "Enter you destination :" PATH

# cd /../$PATH
# pwd

#############################################
echo "#List of the files#"
echo $LST

echo "#Total files#"
echo $WRD

if [ $? -eq 0 ]
then 
    echo "#Deleting files......#"
    rm -rf *.$TYP
    echo "#Successfully deleted#"
else
    echo "Operartion Failed!!!"
fi


