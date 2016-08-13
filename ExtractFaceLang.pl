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
  $$refSTR{'download'}    = 'Download';
  $$refSTR{'lblOptions'}  = 'Options';
  $$refSTR{'openXLSX'}    = 'Open output XLSX file';
  $$refSTR{'chOpenOutput'} = 'Open when finished';
  $$refSTR{'save'}        = 'Save';
  $$refSTR{'cancel'}      = 'Cancel';
  $$refSTR{'cancel2'}     = 'Cancelled';
  $$refSTR{'opening'}     = 'Opening';
  $$refSTR{'writing'}     = 'Writing';
  $$refSTR{'scrolling'}   = 'Scrolling';
  $$refSTR{'downloading'} = 'Downloading';
  $$refSTR{'saving'}      = 'Saving';
  $$refSTR{'saveTab'}     = 'Saving current tab';
  $$refSTR{'parsing'}     = 'Parsing';
  $$refSTR{'wait'}        = 'Wait';
  $$refSTR{'createOutput'} = 'Creating output file';
  $$refSTR{'createXLSX'}  = 'Creating XLSX file';
  $$refSTR{'createSheet'} = 'Creating sheet';
  $$refSTR{'createPage'}  = 'Creating page';
  $$refSTR{'createTXT'}   = 'Creating text file';
  $$refSTR{'profilID'}    = 'Profile ID';
  $$refSTR{'image'}       = 'Image';
  $$refSTR{'url'}         = 'URL';
  $$refSTR{'name'}        = 'Name';
  $$refSTR{'details'}     = 'Details';
  $$refSTR{'imgPath'}     = 'Image Path';
  $$refSTR{'imgPath2'}    = 'Image Path or URL';
  $$refSTR{'originURL'}   = 'Origin URL';
  $$refSTR{'eventURL'}    = 'Event URL';
  $$refSTR{'count'}       = 'Count';
  $$refSTR{'date'}        = 'Date';
  $$refSTR{'dates'}       = 'Dates';
  $$refSTR{'start'}       = 'Start';
  $$refSTR{'end'}         = 'End';
  $$refSTR{'message'}     = 'Message';
  $$refSTR{'warn1T'}      = 'Process running';
  $$refSTR{'warn1'}       = 'A process is already running. Wait until it stops or restart the program.';
  $$refSTR{'warn2T'}      = 'Warning';
  $$refSTR{'warn2'}       = 'You must select at least one option.';
  $$refSTR{'warn3'}       = 'You are not in the right page.';
  $$refSTR{'warn4'}       = 'You are not on Facebook.';
  $$refSTR{'err1T'}       = 'Error';
  $$refSTR{'err1'}        = 'You must start Firefox MozRepl add-on.';
  $$refSTR{'err2'}        = 'Process crash ! Try to increase the loading time in settings.';
  $$refSTR{'err3'}        = 'Process crash ! Retry.';
  $$refSTR{'err4'}        = 'Select a valid folder and title for the album.';
  $$refSTR{'err5'}        = 'Invalid parameters.';
  $$refSTR{'err6'}        = 'Unable to find the event data.';
  $$refSTR{'err7'}        = 'Error connection';
  $$refSTR{'err8'}        = 'have not been found in the program folder.';
  $$refSTR{'crash'}       = 'Crashed, ExtractFace will try to resume';
  $$refSTR{'errorOpening'} = 'Error opening';
  $$refSTR{'browseFolder'} = 'Browse folder in Explorer';
  
  # About
  $$refSTR{'author'}            = 'Author';
  $$refSTR{'translatedBy'}      = 'Translated by';
  $$refSTR{'website'}           = 'Website';
  $$refSTR{'translatorName'}    = '-';
  $$refSTR{'chStartMinimized'}  = "Don't show this window on startup";
  $$refSTR{'lblText4'}          = 'Use taskbar icon to access functions';
  
  # Taskbar menu
  $$refSTR{'menu1'}    = 'Scroll and Expand';
  $$refSTR{'menu2'}    = 'Scroll';
  $$refSTR{'menu3'}    = 'Expand';
  $$refSTR{'menu5'}    = 'Dump Albums';
  $$refSTR{'menu6'}    = 'Dump Friends';
  $$refSTR{'menu7'}    = 'Dump Event Members';
  $$refSTR{'menu17'}   = 'Dump Contributors';
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
  $$refSTR{'scrExpTaskF'}    = 'Scroll and expand finished';
  
  # Dump albums
  $$refSTR{'winAlbums'}     = 'Dump albums';
  $$refSTR{'albumNames'}    = 'Album name';
  $$refSTR{'albumURLs'}     = 'Album url';
  $$refSTR{'loadAlbum'}     = 'Loading the album page';
  $$refSTR{'dumpAlbumC'}    = 'Dumping albums cancelled';
  $$refSTR{'dumpAlbumP'}    = 'Dumping albums in progress';
  $$refSTR{'dumpAlbumF'}    = 'Dumping albums finished';
  $$refSTR{'chPublishDate'} = 'Include publication date';
  $$refSTR{'openHTML'}      = 'Open output HTML file';
  $$refSTR{'openAlbumDir'}  = 'Open album folder';
  $$refSTR{'errorDate'}     = 'Fail to get date!';
  
  # Dump friends
  $$refSTR{'winFriends'}     = 'Dump friends';
  $$refSTR{'friends'}        = 'Friends';
  $$refSTR{'friends2'}       = 'friends';
  $$refSTR{'chIncludeIcons'} = 'Include profile icons';
  $$refSTR{'chSafeMode'}     = 'Safe mode';
  $$refSTR{'btnRefreshTip'}  = 'Use this to reload the page';
  $$refSTR{'friendCat'}      = 'Category';
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
  
  # Dump Contributors
  $$refSTR{'contributors'}      = 'Contributors';
  $$refSTR{'lblContribTypes'}   = 'Types';
  $$refSTR{'chContribComments'} = 'Comments';
  $$refSTR{'chContribLikes'}    = 'Likes';
  $$refSTR{'chContribVPosts'}   = 'Visitor Posts';
  $$refSTR{'dontScrollVPosts'}  = "Don't scroll Visitor Posts";
  $$refSTR{'dumpContribC'}      = 'Dumping contributors cancelled';
  $$refSTR{'dumpContribP'}      = 'Dumping contributors in progress';
  $$refSTR{'dumpCommentsP'}     = 'Dumping Comments in progress';
  $$refSTR{'dumpLikesP'}        = 'Dumping Likes in progress (per group)';
  $$refSTR{'dumpVPostsP'}       = 'Dumping Visitor Posts in progress';
  $$refSTR{'dumpContribF'}      = 'Dumping contributors finished';
  
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
  $$refSTR{'chat'}          = 'Chat';
  $$refSTR{'rbChatNormalMode'} = 'Normal mode';
  $$refSTR{'rbChatDatesAll'}   = 'All';
  $$refSTR{'rbChatDatesRange'} = 'Range';
  $$refSTR{'chDownloadAD'}  = 'Attached document';
  $$refSTR{'chDownloadImg'} = 'Pictures';
  $$refSTR{'chFullSize'}    = 'Full size';
  $$refSTR{'chDownloadVid'} = 'Videos';
  $$refSTR{'chDownloadVM'}  = 'Vocal messages';
  $$refSTR{'chHideMe'}      = 'Hide me';
  $$refSTR{'chSearched'}    = 'Searched part only';
  $$refSTR{'sharedLink'}    = 'Shared link';
  $$refSTR{'video'}         = 'Video';
  $$refSTR{'videoURL'}      = 'Video link';
  $$refSTR{'videoErr'}      = 'Unable to gather video image, link below';
  $$refSTR{'vocalMsgLast'}  = 'Vocal message, last';
  $$refSTR{'vocalMsgFile'}  = 'Vocal message, file';
  $$refSTR{'vocalJoin'}     = 'Use this filename to join';
  $$refSTR{'attached'}      = 'Attached document';
  $$refSTR{'saveChat'}      = 'Saving chat in html file';
  $$refSTR{'dumpChatC'}     = 'Dumping chat cancelled';
  $$refSTR{'dumpChatP'}     = 'Dumping chat in progress';
  $$refSTR{'dumpChatF'}     = 'Dumping chat finished';
  $$refSTR{'zoomImg'}       = 'Viewing image in full size';
  $$refSTR{'openMobile'}    = 'Searching chat on Facebook mobile';
  $$refSTR{'searchVMLinks'} = 'Searching vocal messages urls';
  
  # Config
  $$refSTR{'winConfig'}       = 'Settings';
  $$refSTR{'lblGenOpt'}       = 'General';
  $$refSTR{'Tool'}            = 'Tool';
  $$refSTR{'Functions'}       = 'Functions';
  $$refSTR{'chRememberPos'}   = 'Remember position of all windows';
  $$refSTR{'lblTimeToWait'}   = 'Time for loading';
  $$refSTR{'tfTimeToWaitTip'} = 'When loading page or scrolling, time to wait before any action. Increase this time for more stability. Default is 2.';
  $$refSTR{'lblTimeToWait2'}  = 'seconds';
  $$refSTR{'lblNbrResume'}    = 'Number of resumes';
  $$refSTR{'tfNbrResumeTip'}  = 'When a function crash, ExtractFace to resume this number of times. Default is 10.';
  $$refSTR{'chOptScrollTop'}  = 'When page loaded, scroll back to top';
  $$refSTR{'chAutoUpdate'}    = 'Check for update at startup';
  $$refSTR{'chDelTempFiles'}  = 'Delete temp files when finished';
  $$refSTR{'chDebugLogging'}  = 'Enable debug logging';
  $$refSTR{'OpenLog'}         = 'Open the log';
  $$refSTR{'btnExportLang'}   = 'Export Lang.ini';
  $$refSTR{'lblCharset'}      = 'Charset';
  $$refSTR{'lblScrollOpt'}    = 'Scroll options';
  $$refSTR{'lblExpOpt'}       = 'Expand options';
  $$refSTR{'chOptSeemore'}    = 'See more';
  $$refSTR{'chOptComments'}   = 'View more comments, replies';
  $$refSTR{'chOptPosts'}      = 'More posts';
  $$refSTR{'chOptTranslate'}  = 'See translation';
  $$refSTR{'lblMaxLoading'}   = 'Maximum scrolling (chat)';
  $$refSTR{'lblMaxScroll'}    = 'Maximum scrolling (other)';
  $$refSTR{'rbMaxScrollByPage'}     = 'By page';
  $$refSTR{'rbMaxScrollByDate'}     = 'By date';
  $$refSTR{'tfMaxScrollByPageTip'}  = 'Stop scrolling after a maximum of pages displayed. Default is 0 (No maximum).';
  $$refSTR{'tfMaxScrollByDateTip'}  = 'Stop scrolling when the given date is reached.';
  
  # Misc
  $$refSTR{'winPb'}           = 'Progress';
  $$refSTR{'returnedCode'}    = 'Returned code';
  $$refSTR{'returnedError'}   = 'Returned error';
  
  # Update Window
  $$refSTR{'winUpdate'}       = 'Update';
  $$refSTR{'update1'}         = 'You have the latest version installed.';
  $$refSTR{'update2'}         = 'Check for update';
  $$refSTR{'update3'}         = 'Update';
  $$refSTR{'update4'}         = 'Version';
  $$refSTR{'update5'}         = 'is available. Download it';

}  #--- End loadStrings


#------------------------------------------------------------------------------#
1;