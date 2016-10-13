#Bin/Bash

##This will create a file with the searches that are present.  
##Please note the first time you run this script it may send you a blank mail

#The below line lists down all the searches in the Qradar Box
/opt/qradar/bin/contentManagement.pl -a search -c 1 -r .*|grep -v RETENTION >/root/savedsearch.new

# The below lines will check the difference between yesterdays saved searches & todays saved searches & will ouput it to a file 
diff /root/savedsearch.new /root/savedsearch.old|grep -v Start > /root/savedsearchdiff.out

# this removes the old saved search result
rm -rf /root/savedsearch.old

# this renames the new saved search output to old
mv /root/savedsearch.new /root/savedsearch.old

###  !!!!PLEASE HASH OUT THE BELOW LINES IF YOU DO NOT WANT IT TO EMAIL THE OUTPUT TO YOU.!!!!
###  !!!!ALSO DELETE THE savedsearchdiff.out file manually else the script would throw an error

#The below line will email you the output
mail -s "Saved Search Difference" yourmail@male.cim </root/savedsearchdiff.out

#This will delete the output file so that the same filename can be used tomorrow
rm -rf /root/savedsearchdiff.out







