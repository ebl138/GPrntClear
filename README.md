# GPrntClear app

## The problem

One of the most common issues plaguing our service desk occurs when users attempt to print on Mac after having recently changed their password. They are typically presented with a print job window displaying an error message of either 'Authentication required' or 'Hold for authentication'.

Print job window in the dock:

![Print job in print job window in dock](images/print_job_in_window_in_dock.png?raw=true)


'Authentication required' error:




'Hold for authentication' error:

![Hold for authentication printing error](images/hold_for_authentication.png?raw=true)


This happens when an incorrect password (whether it has been recently changed or not) is held in the Keychain. This Keychain-stored password is compared with the correct password on the server, authentication fails and one of the above errors is produced.


## The solution

GPrntClear is a wee application that clears the Keychain of the stored credential matching the server address 'rdprint03.gsa.ac.uk'. Before launching it, however, you will need to clear the print job window of the failed print job(s) (click the wee 'x' at the end of the print job):




Then double click GPrntClear:

![GPrntClear icon](images/GPrntClear_icon.png?raw=true)


If successful in clearing the Keychain of the GSAPrint or GSAPrint-Colour credential, you'll be greeted with the following:

![Credential found in Keychain](images/credential_found_in_keychain?raw=true)


If not, then the following message will appear:

![Credential not found in Keychain](images/credential_not_found_in_keychain.png?raw=true)


## Testing


## How to use it
