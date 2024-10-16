# GPrntClear app

## The problem

One of the most common issues plaguing our service desk occurs when users attempt to print on Mac after having recently changed their password. They are typically presented with a print job window displaying an error message of either 'Stopped - Authentication required' or 'Hold for authentication'.

Print job window in the dock:

![Print job in print job window in dock](images/print_job_in_window_in_dock.png?raw=true)


'Authentication required' error:

![Stopped - Authentication required printing error](images/authentication_required.png?raw=true)


'Hold for authentication' error:

![Hold for authentication printing error](images/hold_for_authentication.png?raw=true)


This happens when an incorrect password (whether it has been recently changed or not) is held in the Keychain. This Keychain-stored password is compared with the correct password on the server, authentication fails and one of the above errors is produced.


## The solution

GPrntClear is a (very) small application that clears the Keychain of the stored credential matching the server address 'rdprint03.gsa.ac.uk'. Before launching it, however, you will need to clear the print job window of the failed print job(s) (click the wee 'x' at the end of the print job):

![Screenshot marking 'x' used to clear print job](images/clear_print_job.png?raw=true)


Then double click GPrntClear:

![GPrntClear icon](images/GPrntClear_icon.png?raw=true)


If successful in clearing the Keychain of the GSAPrint or GSAPrint-Colour credential, you'll be greeted with the following:

![Credential found in Keychain message](images/credential_found_in_keychain.png?raw=true)


If not, then the following message will appear:

![Credential not found in Keychain message](images/credential_not_found_in_keychain.png?raw=true)

If your printing credential wasn't found in the Keychain, then the error was caused by something else and will likely still appear when trying to print again.

If your printing credential was found in the Keychain (and subsequently cleared), then, upon printing your document again, you will be asked for your credentials:

![Window requesting re-entry of credentials](images/re_enter_credentials.png?raw=true)


## Testing

GPrntClear was tested on the following systems:  

Late 2012:  
	- DM000801, iMac, Catalina 10.15.7  

Late 2013:  
	- DM003187, Mac Pro, Big Sur 11.7.2  

2014:  
	- DM001294, Mac Mini, Big Sur 11.6.8  

Mid 2014:  
	- LM001083, MacBook Pro, Catalina 10.15.7  
	- DM002038, iMac, Mojave 10.14.3  
	- LM001366, MacBook Pro, Big Sur 11.5.1  

Late 2014:  
	- DM000652, iMac, Big Sur 11.4  

Early 2015:  
	- LM001061, MacBook Pro, High Sierra 10.13.6  
	- LM001858, MacBook Air, Big Sur 11.6.3  
	- LM001045, MacBook Air, Big Sur 11.6.4  
	- LM001527, MacBook Pro, High Sierra 10.13.6  

Mid 2015:  
	- LM000150, MacBook Pro, Big Sur 11.5.1  

2017:  
	- DM000451, iMac, Big Sur 11.6.8  
	- LM001463, MacBook Pro, Big Sur 11.7.1  
	- DM000479, iMac, Big Sur 11.6.8  
	- DM000056, iMac, Big Sur 11.6.3  
	- DM000450, iMac, Big Sur 11.6.8  
	- DM000474, iMac, Big Sur 11.6.8  
	- DM000453, iMac, Big Sur 11.6.8  
	- DM003326, iMac, Big Sur 11.7.1  

2019:  
	- DM000516, iMac, Big Sur 11.6.8  
	- DM000581, iMac, Big Sur 11.6.8  
	- DM000518, iMac, Big Sur 11.6.8  
	- DM000583, iMac, Big Sur 11.6.8  
	- DM000561, iMac, Big Sur 11.6.8  
	- DM000566, iMac, Big Sur 11.6.8  
	- DM000558, iMac, Big Sur 11.6.8  
	- DM000556, iMac, Big Sur 11.6.8  
	- DM000573, iMac, Big Sur 11.6.8  
	- DM000549, iMac, Big Sur 11.6.8  

2020:  
	- DM004934, Mac Mini, Monterey 12.2.1  

It has also since been tested (and works) on several Ventura machines.


## How to use it

Simply download and run GPrntClear.pkg; if you get the '“GPrntClear.pkg” cannot be opened because it is from an unidentified developer' message, just run the following Terminal command: 'sudo spctl --master-disable'. Once GPrntClear is installed, run 'sudo spctl --master-enable'. You should now have the GPrntClear application in your /Applications/ folder.