#include "core\briefingCore.sqf"
 
switch (side player) do {
 
    case west:
    {
	
		NEWTAB("Sites:")
		<br/>There are some sites marked on the map containing BLUFOR/OPFOR and NEUTRAL Units (unmanned) as well as some immersive structures. These can/should be used for scenarios.
		ENDTAB;
		
		NEWTAB("Course Notes:")
		<br/>- All slide board inactive until ressource slides are provided to me
		<br/>- All units are equiped with somewhat different radio types.
		<br/>- When destroyed, vehicles of any kind will respawn at their start position within 10sec
		<br/>- When abandoned vehicles will respawn at their start position within 10mins
		<br/>- All units have damag enabled to prevent weird lost in desert scenarios
		<br/>- Players will respawn with their initial gear at the indicated respawn position
		ENDTAB;

		NEWTAB("Command & Signal:")
		<br/><font color='#d21111' size='15'>1. Signal Operating Instructions Index in effect:</font>
		<br/>
		<br/><font size='14'>Short Range Radio Nets:</font>
		<br/>
		<br/>JTACs:
		<br/> SR 1 Block 6 - JTAC Team 1
		<br/> SR 2 Block 6 - JTAC Team 2
		<br/> SR 3 Block 6 - JTAC Team 3
		<br/> SR 4 Block 6 - JTAC Team 4
		<br/> SR 5 Block 6 - JTAC Team 5
		<br/> SR 6 Block 6 - JTAC Instructors (exclusive!)
		<br/>
		<br/>Fixed Wing:
		<br/> NO SHORT RANGE RADIOS AVAILABLE!
		<br/>
		<br/>Rotary Wing:
		<br/> NO SHORT RANGE RADIOS AVAILABLE!
		<br/>
		<br/><font size='14'>Long Range Radio Nets:</font> 
		<br/>
		<br/> LR 1 - Ground 1
		<br/> LR 2 - Ground 2
		<br/> LR 3 - Ground 3
		<br/> LR 4 - Fixed Wing 1
		<br/> LR 5 - Fixed Wing 2
		<br/> LR 6 - Fixed Wing 3
		<br/> LR 7 - Rotary Wing 1
		<br/> LR 8 - Rotary Wing 2
		<br/> LR 9 - Rotary Wing 3
		<br/>
		<br/><font color='#d21111' size='15'>Number Combination:</font>
		<br/>DEFINE WHEN WORKING WITH AIRCRAFTS AND MARK ON MAP!
		<br/>
		<br/><font color='#d21111' size='15'>Authentication Password:</font>
		<br/>DEFINE WHEN WORKING WITH AIRCRAFTS AND MARK ON MAP!
		<br/>
		<br/><font color='#d21111' size='15'>8. Recognition Signals:</font>
		<br/>Red/Orange Smoke = enemy position (applied towards enemy units)
		<br/>White Smoke = concealment 
		<br/>Green Smoke = friendly position (applied towards friendly units)
		<br/>Yellow Smoke = Urgent Medical (applied towards friendly units)
		<br/>Blue Smoke = Broken Comms/COC (applied towards friendly units)
		ENDTAB;
 
    }; //End of west case
 
}; //End of switch

		NEWTAB("VI. Mission notes:") //This is shown for everyone
		<br/><font color='#FFA500' size='15'>RESPAWN</font>
		<br/>
		<br/>Respawn enabled - endless
		<br/>
		<br/><font color='#FFA500' size='15'>REVIVE</font>
		<br/>
		<br/>Disabled
		<br/>
		<br/><font color='#FFA500' size='15'>JIP</font>
		<br/>
		<br/><font size='14'>Blufor</font>
		<br/>JIP Transport
		<br/>
		<br/><font color='#FFA500' size='15'>END CONDITION</font>
		<br/>
		<br/><font size='14'>OPFOR VICTORY:</font>
		<br/>none
		<br/>
		<br/><font size='14'>BLUFOR VICTORY:</font>
		<br/>none
		<br/>
		<br/><font color='#FFA500' size='15'>USE OF ENEMY VEHICLE ASSETS</font>
		<br/>
		<br/>Prohibited. Following exceptions remain when in a survival-style situation: Jeeps and other non-special vehicles can be manned and operated for tactical advantage. This includes the usage of mounted standard weapon systems like M2/miniguns.
		<br/>
		<br/><font color='#FFA500' size='15'>ACE MEDICAL</font>
		<br/>
      	<br/>- Instructors are doctors
		<br/>
		<br/><font color='#FFA500' size='15'>TECHNICAL ASPECT</font>
		<br/>
        <br/>- View Distance:
        <br/>-- Player: 12000.
        <br/>-- AI: 2500.
        <br/>- ACRE Signal loss is turned on.
        <br/>- ACRE Occlusion is turned on.
        <br/>- ACRE radio interference is turned on.
        <br/>- ACRE AI HEARING PLAYERS IS ENABLED.
		<br/>
		<br/><font color='#FFA500' size='15'>CREDITS</font>
		<br/>
		<br/>Olsen Framework
		<br/>
		<br/>Briefing Layout Source: Perfk
		<br/>Altered by Pax
		<br/>
		<br/><font color='#FFA500' size='15'>Mission by:</font>
		<br/>PaxJaromeMalues
		<br/>
		ENDTAB;

		NEWTAB("Game Mastering")
		<br/> This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
		<br/> Please DO NOT go into zeus, unless you REALLY have to.
		ENDTAB;
 
DISPLAYBRIEFING();
