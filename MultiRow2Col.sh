#!/bin/bash

#Convert a tabular list of multiple rows, duplicated entries  into single rows, multicolumn entries
#Eg: 
#This
 #red cherry
 #red apple
 #red strawberry
 #red cherry
 #green grape
 #green apple
 #green pear
 #green lime
#Becomes this
 #red cherry apple stawberry cherry
 #green apple pear lime

for i in `cat patternlist.txt`; do 
pattern=`echo $i`
echo `grep -iE $pattern target-file.txt`>>out.txt;
done

cp out.txt out2.txt

for i in `cat patternlist.txt`; do 
pattern=`echo $i`
sed -i -e "s/$pattern/$pattern\t/g" -e "s/$pattern//2g" -e "s/ \t/\t/g" -e "s/\t /\t/g" out2.txt;
done

rm out.txt
mv out2.txt out.txt
