#!/bin/sh

MAILDIR="/Users/mario/Library/Mail/V2/IMAP-private@eMeidi.com@server41.cyon.ch/INBOX.mbox/16D842F2-1102-4BA0-B411-702069117A9E"

grep -h -R "tutti.ch/ml/ai/QM/id/" "$MAILDIR" > tutti-urls.txt

exit 0