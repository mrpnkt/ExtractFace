#!/usr/bin/perl
# Perl - v: 5.16.3
#------------------------------------------------------------------------------#
# ExtractFaceLang.pl    : Strings for ExtractFace
# Website               : http://le-tools.com/
# GitHub		            : https://github.com/arioux/ExtractFace
# Creation              : 2015-08-01
# Modified              : 2015-12-09
# Author                : Alain Rioux (admin@le-tools.com)
#
# Copyright (C) 2015  Alain Rioux (le-tools.com)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# Modules
#------------------------------------------------------------------------------#

use strict;
use warnings;

#------------------------------------------------------------------------------#
sub loadStr
#------------------------------------------------------------------------------#
{
  # Local variables
  my ($refSTR, $LANG_FILE) = @_;
  
  # Open and load string values
  open(LANG, "<:encoding(UTF-8)", $LANG_FILE);
  my @tab = <LANG>;
  close(LANG);
  
  # Store values  
  foreach (@tab) {
    chomp($_);
    s/[^\w\=\s\.\!\,\-\)\(\']//g;
    my ($key, $value) = split(/ = /, $_);
    $value = encode("iso-8859-1", $value); # Revaluate with different language encoding
    if ($key) { $$refSTR{$key}  = $value; }
  }
  
}  #--- End loadStr

#------------------------------------------------------------------------------#
sub loadDefaultStr
#------------------------------------------------------------------------------#
{
  # Local variables
  my $refSTR = shift;
  
  # Set default strings
  
  # General strings
  $$refSTR{'file'}        = 'Filename';
  $$refSTR{'dir'}         = 'Directory';
  $$refSTR{'remDir'}      = 'Remember this dir';
  $$refSTR{'selDir'}      = 'Select a folder';
  $$refSTR{'dump'}        = 'Dump';
  $$refSTR{'openXLSX'}    = 'Open output XLSX file';
  $$refSTR{'downIcons'}   = 'Download profile icons';
  $$refSTR{'save'}        = 'Save';
  $$refSTR{'cancel'}      = 'Cancel';
  $$refSTR{'cancel2'}     = 'Cancelled';
  $$refSTR{'opening'}     = 'Opening';
  $$refSTR{'scrolling'}   = 'Scrolling';
  $$refSTR{'downloading'} = 'Downloading';
  $$refSTR{'wait'}        = 'Wait';
  $$refSTR{'createXLSX'}  = 'Creating XLSX file';
  $$refSTR{'profilID'}    = 'Profile ID';
  $$refSTR{'image'}       = 'Image';
  $$refSTR{'url'}         = 'URL';
  $$refSTR{'name'}        = 'Name';
  $$refSTR{'details'}     = 'Details';
  $$refSTR{'imgPath'}     = 'Image Path';
  $$refSTR{'imgPath2'}    = 'Image Path or URL';
  $$refSTR{'originURL'}   = 'Origin URL';
  $$refSTR{'eventURL'}    = 'Event URL';
  $$refSTR{'date'}        = 'Date';
  $$refSTR{'message'}     = 'Message';
  $$refSTR{'warn1T'}      = 'Process running';
  $$refSTR{'warn1'}       = 'A process is already running. Wait until it stops or restart the program.';
  $$refSTR{'warn2T'}      = 'Warning';
  $$refSTR{'warn2'}       = 'You must select at least one option.';
  $$refSTR{'warn3'}       = 'You are not in the right page.';
  $$refSTR{'err1T'}       = 'Error';
  $$refSTR{'err1'}        = 'You must start Firefox MozRepl add-on.';
  $$refSTR{'err2'}        = 'Process crash ! Try to increase the loading time in settings.';
  $$refSTR{'err3'}        = 'Process crash ! Retry.';
  $$refSTR{'err4'}        = 'Select a valid folder.';
  $$refSTR{'err5'}        = 'Invalid parameters.';
  $$refSTR{'err6'}        = 'Unable to find the event data.';
  $$refSTR{'err7'}        = 'Error connection';
  $$refSTR{'err8'}        = 'have not been found in the program folder.';
  $$refSTR{'crash'}       = 'Crashed, ExtractFace will try to resume';
  
  # About
  $$refSTR{'author'}          = 'Author';
  $$refSTR{'translatedBy'}    = 'Translated by';
  $$refSTR{'website'}         = 'Website';
  $$refSTR{'translatorName'}  = '-';
  $$refSTR{'lblText4'}        = 'Use taskbar icon to access functions';
  
  # Taskbar menu
  $$refSTR{'menu1'}    = 'Scroll and Expand';
  $$refSTR{'menu2'}    = 'Scroll';
  $$refSTR{'menu3'}    = 'Expand';
  $$refSTR{'menu4'}    = 'Cancel';
  $$refSTR{'menu5'}    = 'Dump Albums';
  $$refSTR{'menu6'}    = 'Dump Friends';
  $$refSTR{'menu7'}    = 'Dump Event Members';
  $$refSTR{'menu8'}    = 'Scroll Chat';
  $$refSTR{'menu9'}    = 'Load Older Messages';
  $$refSTR{'menu10'}   = 'Load Newer Messages';
  $$refSTR{'menu11'}   = 'Dump Chat';
  $$refSTR{'menu12'}   = 'Settings';
  $$refSTR{'menu13'}   = 'Check for update';
  $$refSTR{'menu14'}   = 'Help';
  $$refSTR{'menu15'}   = 'About';
  $$refSTR{'menu16'}   = 'Quit';
  
  # Scroll and Expand
  $$refSTR{'scrollTaskC'}    = 'Scrolling cancelled';
  $$refSTR{'scrollTaskP'}    = 'Scrolling in progress';
  $$refSTR{'scrollTaskF'}    = 'Scrolling finished';
  $$refSTR{'expandTaskC'}    = 'Expanding cancelled';
  $$refSTR{'expandTaskP'}    = 'Expanding in progress';
  $$refSTR{'expandTaskF'}    = 'Expanding finished';
  $$refSTR{'scrExpTaskC'}    = 'Scroll and expand cancelled';
  
  # Dump albums
  $$refSTR{'winAlbums'} = 'Dump albums';
  $$refSTR{'albumNames'} = 'Album name';
  $$refSTR{'albumURLs'}  = 'Album url';
  $$refSTR{'loadAlbum'}  = 'Loading the album page';
  $$refSTR{'dumpAlbumC'} = 'Dumping albums cancelled';
  $$refSTR{'dumpAlbumP'} = 'Dumping albums in progress';
  $$refSTR{'dumpAlbumF'} = 'Dumping albums finished';
  
  # Dump friends
  $$refSTR{'winFriends'}     = 'Dump friends';
  $$refSTR{'friends'}        = 'Friends';
  $$refSTR{'friends2'}       = 'friends';
  $$refSTR{'chIncludeIcons'} = 'Include profile icons';
  $$refSTR{'friendsExtract'} = 'Extracting info for profile ID';
  $$refSTR{'dumpFriendsC'}   = 'Dumping friends cancelled';
  $$refSTR{'dumpFriendsP'}   = 'Dumping friends in progress';
  $$refSTR{'dumpFriendsF'}   = 'Dumping friends finished';
  
  # Dump Event members  
  $$refSTR{'winEvent'}      = 'Dump event members';  
  $$refSTR{'lblEventDetailsT'} = 'Event Details';
  $$refSTR{'lblEventID'}    = 'Event ID';
  $$refSTR{'lblAuthorID'}   = 'Author ID';
  $$refSTR{'lblDataURL'}    = 'Data URL';
  $$refSTR{'lblGuestLists'} = 'Lists';
  $$refSTR{'gatherEvent'}   = 'Gathering event details';
  $$refSTR{'checkIcons'}    = 'Verifying profile icons integrity';
  $$refSTR{'dumpEventC'}    = 'Dumping event members cancelled';
  $$refSTR{'dumpEventP'}    = 'Dumping event members in progress';
  $$refSTR{'dumpEventF'}    = 'Dumping event members finished';
  
  # Dump Chat
  $$refSTR{'scrollChatC'}   = 'Scrolling chat cancelled';
  $$refSTR{'scrollChatP'}   = 'Scrolling chat in progress';
  $$refSTR{'scrollChatF'}   = 'Scrolling chat finished';
  $$refSTR{'scrollChat2C'}  = 'Loading newer messages cancelled';
  $$refSTR{'scrollChat2P'}  = 'Loading newer messages in progress';
  $$refSTR{'scrollChat2F'}  = 'Loading newer messages finished';
  $$refSTR{'scrollChat3C'}  = 'Loading older messages cancelled';
  $$refSTR{'scrollChat3P'}  = 'Loading older messages in progress';
  $$refSTR{'scrollChat3F'}  = 'Loading older messages finished';
  $$refSTR{'winChat'}       = 'Dump chat';
  $$refSTR{'chDownloadAD'}  = 'Download attached document (files, audio, video)';
  $$refSTR{'chDownloadImg'} = 'Download image in full size';
  $$refSTR{'chHideMe'}      = 'Hide me';
  $$refSTR{'chSearched'}    = 'Searched part only';
  $$refSTR{'video'}         = 'Video';
  $$refSTR{'videoURL'}      = 'Video link';
  $$refSTR{'videoErr'}      = 'Unable to gather video image, link below';
  $$refSTR{'vocalMsg'}      = 'Vocal message, last';
  $$refSTR{'vocalJoin'}     = 'Use this filename to join';
  $$refSTR{'attached'}      = 'Attached document';
  $$refSTR{'saveChat'}      = 'Saving chat in html file';
  $$refSTR{'dumpChatC'}     = 'Dumping chat cancelled';
  $$refSTR{'dumpChatP'}     = 'Dumping chat in progress';
  $$refSTR{'dumpChatF'}     = 'Dumping chat finished';
  $$refSTR{'zoomImg'}       = 'Viewing image in full size';
  
  # Config
  $$refSTR{'winConfig'}       = 'Settings';
  $$refSTR{'lblGenOpt'}       = 'General';
  $$refSTR{'lblTimeToWait'}   = 'Time for loading';
  $$refSTR{'tfTimeToWaitTip'} = 'When loading page or scrolling, time to wait before any action. Increase this time for more stability. Default is 2.';
  $$refSTR{'lblTimeToWait2'}  = 'seconds';
  $$refSTR{'lblNbrResume'}    = 'Number of resumes';
  $$refSTR{'tfNbrResumeTip'}  = 'When a function crash, ExtractFace to resume this number of times. Default is 10.';
  $$refSTR{'chOptScrollTop'}  = 'When page loaded, scroll back to top';
  $$refSTR{'chAutoUpdate'}    = 'Check for update at startup';
  $$refSTR{'chDelTempFiles'}  = 'Delete temp files when finished';
  $$refSTR{'btnExportLang'}   = 'Export Lang.ini';
  $$refSTR{'lblExpOpt'}       = 'Expand options';
  $$refSTR{'lblChatOpt'}      = 'Chat options';
  $$refSTR{'lblMaxLoading'}   = 'Maximum scrolling';
  $$refSTR{'tfMaxLoadingTip'} = 'Maximum number of times ExtractFace will scroll chat. Default is 0 (No maximum).';
  $$refSTR{'lblTextLink'}     = 'Text of scrolling link';
  $$refSTR{'lblRegular'}      = 'Regular';
  $$refSTR{'lblOlder'}        = 'Older';
  $$refSTR{'lblNewer'}        = 'Newer';
  $$refSTR{'lblTextLinkTip'}  = 'Depend on the language set in the profil.';
  
  # Misc
  $$refSTR{'winPb'}   = 'Progress';
  $$refSTR{'update1'} = 'You have the latest version installed.';
  $$refSTR{'update2'} = 'Check for update';
  $$refSTR{'update3'} = 'Update';
  $$refSTR{'update4'} = 'Version';
  $$refSTR{'update5'} = 'is available. Download it';
  $$refSTR{'update6'} = 'Returned code';
  $$refSTR{'update7'} = 'Returned error';

}  #--- End loadStrings


#------------------------------------------------------------------------------#
1;