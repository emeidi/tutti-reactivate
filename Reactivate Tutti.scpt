set UnixScriptDir to POSIX path of ((path to me as text) & "::")
set PathToTuttiUrls to UnixScriptDir & "tutti-urls.txt"

set allRecords to read PathToTuttiUrls using delimiter {linefeed}

repeat with aRecord in allRecords
	if length of aRecord is greater than 0 then
		set sUrl to aRecord
		
		goToWebPageChrome(sUrl)
	end if
end repeat

to goToWebPageChrome(theWebPage)
	tell application "Google Chrome"
		if not (exists window 1) then reopen
		activate
		tell window 1 to tell active tab
			set its URL to theWebPage
			delay 5
			execute javascript "document.getElementById('ai-form').submit();"
			delay 5
			execute javascript "document.getElementById('ai_opt_free_btn').click();"
			delay 5
		end tell
	end tell
end goToWebPageChrome