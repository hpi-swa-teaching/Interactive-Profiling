documentation
history

"
7 Jan 2007  
!Installer fixBug: <aBugNo>

aBugNo can now be a number or a string, beginning with a number. 
This allows the mantis bug report summary to be used verbatim.
It also provides more infomarion for Installer to support self documentation.

!Install fix if not already installed
 Installer ensureFix: <aBugNoOrString>
 Installer ensureFixes: #(1 2 3 4)

Installer now keeps a list of fix <aBugNoOrString> that have been installed up to this point.
#ensureFix: will only install the fix if it has not already been loaded.
note that only the bugNumber not the description is significant in the check.

8 Jan 2007
!Installer view: <webPageNameOrUrl>

Provided that web page based scripts follow some simple rules, installer can collate the scripts from 
web pages into a single workspace where you can manually 'doit' portions as you wish.

The report generation is not very clever, it only matches on:
 'Installer install:' ,  'Installer installUrl:', and 'Installer mantis fixBug:'
 note these lines must be properly completed with an ending $. (period).

also invoked by commandline option VIEW=<webPageNameOrUrl>

10 Jan 2007
!Now matches simpler html

Check for an html page, now matches
'<!DOCTYPE HTML' and <html> 
the allows use of pbwiki's raw=bare option which returns iframe 
embeddable html without the usual headers.

8 May 2007
Modified bug:fix:date: so that the fixesApplied history does not contain unnecessary duplicate entries.
Fixed changeset naming for mantis bugs.

25 July 2007
Added Universes  Support
"