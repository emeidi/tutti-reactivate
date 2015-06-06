# tutti-reactivate
Reactivates classified ads on Tutti.ch, automated

parse-mails.sh
--------------
This script parses your Apple Mail INBOX (please adjust the path to it) and extracts all reactivation links to Tutti.ch. All links found in emails are stored in the script directory in the file "tutti-urls.txt".

Reactivate Tutti.scpt
---------------------
Once the file "tutti-urls.txt" has been generated, launch "Reactivate Tutti.scpt". It will go through "tutti-urls.txt", open every URL in Google Chrome and submit the forms necessary to reactivate your classified ad.
