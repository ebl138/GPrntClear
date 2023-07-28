#!/bin/sh

# Grabs logged-in user - must use this and not 'whoami' as this actually gets current logged in user and not effective user ID
USER=$(/usr/sbin/scutil <<< "show State:/Users/ConsoleUser" | /usr/bin/awk -F': ' '/[[:space:]]+Name[[:space:]]:/ { if ( $2 != "loginwindow" ) { print $2 }}')

# Move application to user's desktop
mv /Applications/GPrntClear.app/ /Users/$USER/Desktop/
