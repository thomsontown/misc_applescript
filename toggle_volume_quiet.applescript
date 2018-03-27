#!/usr/bin/osascript


property SAVED_VOLUME : 30


--	This script was written so that I can listen to free Spotify and be able
--	to easily 'quiet' the volume during commercials without muting; muting will 
--	only pause commericals until the volume is restored. After a couple of 
--	minutes this toggle script can easily restore the volume to its pervious setting.
--

--	Author:		Andrew Thomson
--	Date:		01-08-2017


--	get the current output volume
set CURRENT_VOLUME to the output volume of (get volume settings)

--	adjust output volume
if CURRENT_VOLUME is greater than 1 then
	
	--	save the current output volume level for later restoration
	set SAVED_VOLUME to CURRENT_VOLUME
	
	--	adjust the output volume to lowest setting without muting
	set volume output volume 1
else
	
	--	restore ouput volume to saved level
	set volume output volume SAVED_VOLUME
end if