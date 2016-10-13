# Qradar-Saved-Search-Changes

The script has been created to check for changes in the Saved Searches present in Qradar.

Any Saved Search Deleted would reflect above the "---" in the mail
Any Saved Search created would reflect below the "---" in the mail

Please note I am making use of the diff command to verify the difference. 

Steps to Install

******USAGE*****

STEP 1: scp the file to the Qradar server.  Doesnt matter which directory


STEP 2: Logon to the server using SSH


STEP 3: Change Directory to the directory the file SavedSearch.sh has been saved


STEP 4: run the command chmod +x SavedSearch.sh


Now you are ready to go

Execute the bash file

STEP 5: ./SavedSearch.sh


The script will run and email you the difference


