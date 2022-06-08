# MultiRow2Col

This script picks a tabular list of duplicated entries at the first column and converts it into single rows, multicolumn entries

This:


 red cherry
 
 red apple
 
 red strawberry
 
 red cherry
 
 green grape
 
 green apple
 
 green pear
 
 green lime


Becomes this:


 red cherry apple stawberry cherry
 
 green apple pear lime
 
 
 >> Note that it does not remove duplicated lines in the input
