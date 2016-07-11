ExtractFace
Description 	: Dump Facebook stuff for analysis or reporting purposes.
Author 				: Alain Rioux (admin@le-tools.com)
WebSite				: http://le-tools.com/ExtractFace.html
Documentation	: http://le-tools.com/ExtractFaceDoc.html
GitHub				: https://github.com/arioux/ExtractFace
FossHub       : http://code.fosshub.com/ExtractFace


Development
-----------

ExtractFace has been developped using ActivePerl 5.16.3 with the 
following modules installed:

- Encode (v2.56)
- Excel-Writer-XLSX (v0.83)
- File-Copy-Recursive (v0.38)
- File-Path (v2.09)
- HTML-Parser (v3.71)
- Image-Info (v1.36)
- LWP (v6.05)
- Module-Pluggable-Fast (v0.19)
- MozRepl (v0.06)
- MozRepl-RemoteObject (v0.39)
- threads (v1.96)
- threads-shared (v1.46)
- Time-HiRes (v1.9726)
- URI-Escape-JavaScript (v0.04)
- Win32-API (v0.75)
- Win32-GUI (v1.08)
- Win32-Process (v0.16)
- WWW-Mechanize-Firefox (v0.78)


To do
-----

- Dump friends
	- Keep bigger profile icon (when duplicate filename) except for following/followers
- Dump event members: 
	- Add possibility to exceed the 500 members limit
- Dump chat:
	- Add support for animated image (animation code)
	- Gather Sent from Mobile, Sent from Messenger near date
- Dump Visitor Posts (posts, not contributors)
- Report in other formats: HTML, CSV, TSV, or XLSX



Packaging
---------

Executable has been packaged using PerlApp v.9.2.1 (ActiveState). For 
alternative to PerlApp, see 
http://www.nicholassolutions.com/tutorials/perl-PAR.htm.

Some additional modules may be required or manually added before 
packaging.
