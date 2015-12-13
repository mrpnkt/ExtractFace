ExtractFace
Description : Dump Facebook stuff for analysis or reporting purposes
Author 		: Alain Rioux (admin@le-tools.com)
WebSite		: http://le-tools.com/ExtractFace.html
GitHub		: https://github.com/arioux/ExtractFace


What is it
----------

Investigators, researchers or other analysts often have to get local 
copies of Facebook data. It can be for a lot of reasons like submitting 
Facebook data as evidence, doing advanced offline analysis, etc. But 
Facebook interface has not been designed for that and does not provide 
printing or saving functions. Even for a user that want a copy of a 
conversation in his profile, there is no simple solution.

ExtractFace has been designed to help people to collect data from 
Facebook. It provides usefull functions to automate a lot of tasks 
that have to be done manually otherwise. See documentation for more 
details.


How it works
------------

ExtractFace doesn't require any installation. In order to start using it, just 
run the executable file. While running, you can access ExtractFace functions 
from the taskbar menu.

ExtractFace uses MozRepl add-on* to automate Mozilla Firefox browser. So 
you can crawl Facebook as normal with Firefox and use ExtractFace to automate 
some annoying things like scrolling or clicking in order to get additional 
content. When the content is fully loaded in your browser, you can print to 
PDF, capture screen, or use ExtractFace again to collect the data in a usefull 
way.

*See link below


What do you need
----------------

- 	Windows XP or newer
- 	Mozilla Firefox (https://www.mozilla.org)
- 	MozRepl add-on* (https://github.com/bard/mozrepl, to install: 
	https://addons.mozilla.org/en-US/firefox/addon/mozrepl/)
	
* When using ExtractFace, be sure that MozRepl is enabled. You can check the 
"Activate on startup" option so it's enabled by default when you use Firefox;

Important: If you connect to a Facebook account while using ExtractFace 
(which it is recommended by the way), you should set the langage to "english".


Versions History
----------------
* Version 2.0
	- First public release.
	- Now licensed under GPLv3
* Version 1.5
	- Dump Albums
		- Video Albums are now supported
	- Dump Friends
		- New option: Include profile icons
	- Dump Chat
		- Fixed an issue in report when the last column contains 
		  long word: last column is now wrapped to fit available 
		  space
		- Fixed an issue in report when image in full size is the 
		  same file as the one in chat: Original width and height 
		  are now preserved in the chat
		- Fixed an issue in report for encoding problem with 
		  notification
		- Better support of notifications
	- Settings
		- New option: Delete temp files when finished
* Version 1.4
	- Dump Chat
		- Fixed some issues related to code change on Facebook.
* Version 1.3
	- Dump Chat
		- Download image in full size
* Version 1.1
	- Can now be translated
	- Dump Chat
		- New option "Searched part only"
		- Emoticon images is now supported
	- Configuration
		- New tab Chat options
			- Maximum scrolling value
			- Text of scrolling link
* Version 1.0	
	- First release. Limited distribution.

	
Translation
-----------

To translate ExtractFace to other languages:
1. 	In "Settings" window, use the "Export Lang.ini" function. The file will be 
	saved in the same directory of the tool;
2. 	Open the file in any text editor like Notepad;
3. 	Translate each expression at the right of the "=" symbol;
	-	The expression on the left side is used by the tool to identify the 
		expression 	so don't change it. Also, be sure to have a space between 
		the "=" symbol and your expression (ex. Key = Value);
	- 	Authorized characters are alphanumerics, spaces and these symbols: ",", 
		".", "-", "!", "'", "(" and ")". Any other character will be deleted;
	-	For some controls, String length must be the same as original. A longer 
		string could be truncated if it doesn't match the length of the field;
	- 	The value associated with the "translatorName" will be used in the 
		"About" window to identify you as translator (if you want). You can 
		also add your email or a short 	url (ex. YourName (youraddress@email.com));
4. 	Restart the tool so the strings in "Lang.ini" will be used instead of the 
	default language.

* If you translate the tool and you want to share, contact the author.

Available translations:
See Website for available translations.


Known Problems
--------------

- 	ExtractFace is an experimental tool. It has to be updated often to follow 
	any change in Facebook code.
- 	ExtractFace may also be affected by any updates to Mozilla Firefox or the 
	MozRepl add-on.
- 	ExtractFace support utf8 but some encoding problems can happen anyway.


Licence
-------

Copyright (C) 2015  Alain Rioux (le-tools.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.


Feedback
--------

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message at http://le-tools.com/about.php.


Credits
-------

The main logo of ExtractFace have been created by Land-of-Web 
(http://www.land-of-web.com) and distributed as freeware.
Most of other icons have been created by Icojam (http://www.icojam.com/) 
and are licensed as "Public Domain", except for small Open folder icon 
which has been created by PixelMixer and distributed as freeware.
