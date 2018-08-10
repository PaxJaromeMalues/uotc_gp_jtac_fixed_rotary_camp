/*
================================================== ================================================== ==============
Simple Vehicle Respawn Script v1.81 for Arma 3
by Tophe of Ã-stgÃ¶ta Ops [OOPS]
Updated by SPJESTER
Updated by CCG Cyborg

vehicle.sqf is an example of the name of the file, name it whatever you would like

Put this in the vehicles init line:
veh = [this] execVM "vehicle.sqf"


Options:
There are some optional settings. The format for these are:
veh = [object, Delay, Deserted timer, Respawns, Effect, Dynamic] execVM "vehicle.sqf"

Default respawn delay is 30 seconds, to set a custom respawn delay time, put that in the init as well.
Like this:
veh = [this, 15] execVM "vehicle.sqf"

Default respawn time when vehicle is deserted, but not destroyed is 120 seconds. To set a custom timer for this
first set respawn delay, then the deserted vehicle timer. (0 = disabled)
Like this:
veh = [this, 15, 10] execVM "vehicle.sqf"

By default the number of respawns is infinite. To set a limit first set preceding values then the number of respawns you want (0 = infinite).
Like this:
veh = [this, 15, 10, 5] execVM "vehicle.sqf"

Set this value to TRUE to add a special explosion effect to the wreck when respawning.
Default value is FALSE, which will simply have the wreck disappear.
Like this:
veh = [this, 15, 10, 5, TRUE] execVM "vehicle.sqf"

By default the vehicle will respawn to the point where it first was when the mission started (static).
This can be changed to dynamic. Then the vehicle will respawn to the position where it was destroyed.
First set all preceding values then set TRUE for dynamic or FALSE for static.
Like this:
veh = [this, 15, 10, 5, TRUE, TRUE] execVM "vehicle.sqf"

If you you want to set the INIT field of the respawned vehicle, first set all other values, then set init commands.
Those must be inside quotations.
Like this:
veh = [this, 15, 10, 5, TRUE, FALSE, "this setDammage 0.5"] execVM "vehicle.sqf"

Default values of all settings are:
veh = [this, 30, 120, 0, FALSE, FALSE] execVM "vehicle.sqf"


Contact & Bugreport: [email protected]
Ported for new update "call compile" by SPJESTER: [email protected]

================================================== ================================================== ============== */

if (!isServer) exitWith {};
["_unit","_delay","_deserted","_respawns","_explode ","_dynamic","_unitinit","_haveinit","_hasname","_ unitname","_noend","_run","_rounds","_ship","_kind ","_dir","_position","_type","_dead","_nodelay","_ timeout","_explode","_eng","_hull","_vrot","_hrot" ,"_fuel","_avio","_alld","_w1","_w2","_w3","_w4"," _w5","_w6","_body","_ltr","_rtr","_gun","_tur","_i mob","_counter","_deserted2","_exp2","_timer","_oh no","_counter2"];
_unit = _this select 0;
_delay = if (count _this > 1) then {_this select 1} else {30};
_deserted = if (count _this > 2) then {_this select 2} else {120};
_respawns = if (count _this > 3) then {_this select 3} else {0};
_exp2 = if (count _this > 4) then {_this select 4} else {false};
_dynamic = if (count _this > 5) then {_this select 5} else {false};
_unitinit = if (count _this > 6) then {_this select 6} else {};
_haveinit = if (count _this > 6) then {true} else {false};

_hasname = false;
_unitname = vehicleVarName _unit;
if (isNil _unitname) then {_hasname = false;} else {_hasname = true;};
_noend = true;
_run = true;
_rounds = 0;
_kind = 0;
_counter = 0;
_counter2 = 0;


if (_delay < 0) then {_delay = 0};
if (_deserted < 0) then {_deserted = 0};
if (_respawns <= 0) then {_respawns= 0; _noend = true;};
if (_respawns > 0) then {_noend = false};

_dir = getDir _unit;
_position = getPosASL _unit;
_type = typeOf _unit;
_dead = false;
_nodelay = false;
_ship = true;
_imob = true;
_deserted2 = _deserted / 6;
_delay2 = _delay / 6;
_explode = false;
_ohno = false;


if (_unit isKindOf "Helicopter") then {_kind = 1};
if (_unit isKindOf "Plane") then {_kind = 2};
if (_unit isKindOf "Ship") then {_kind = 3;_ship = false;};
if (_unit isKindOf "Car") then {_kind = 4};
if (_unit isKindOf "Tank") then {_kind = 5};
sleep (2 + random 10);

while {_run} do
{
sleep 5;
switch (_kind) do {
case 1: {
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
_hrot = _unit getHitPointDamage "HitHRotor";
sleep 0.05;
_vrot = _unit getHitPointDamage "HitVRotor";
sleep 0.05;
_fuel = _unit getHitPointDamage "HitFuel";
sleep 0.05;
_alld = getDammage _unit;
if ((_eng >= 0.91) or (_hrot >= 0.91) or (_vrot >= 0.91)) then {_dead = true;_explode = true;};
sleep 0.05;
if (_fuel >= 0.7) then {_dead = true;_explode = true;};
};
case 2: {
_alld = getDammage _unit;
sleep 0.05;
if (_alld >= 0.8) then {_dead = true;_explode = true;};
};
case 3: {
_ohno = false;
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
_body = _unit getHitPointDamage "HitBody";
sleep 0.05;
if (_eng >= 0.9) then {_dead = true;};
sleep 0.05;
if (_body >= 0.6) then {_dead = true;_ohno = true;_unit sethitpointdamage ["Hitengine", 0.92];};
};
case 4: {
_ship = true;
_imob =true;
_w1 = _unit getHitPointDamage "HitLFWheel";
sleep 0.05;
_w3 = _unit getHitPointDamage "HitRFWheel";
sleep 0.05;
_w2 = _unit getHitPointDamage "HitLF2Wheel";
sleep 0.05;
_w4 = _unit getHitPointDamage "HitRF2Wheel";
sleep 0.05;
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
_fuel = _unit getHitPointDamage "HitFuel";
sleep 0.05;
_body = _unit getHitPointDamage "HitBody";
sleep 0.05;
_alld = getDammage _unit;
if ((_eng >= 0.91) or (_fuel >= 0.7) or (_body >= 0.95)) then {_dead = true;_explode = true;};
sleep 0.05;
if ((_w1 >= 0.95) or (_w3 >= 0.95) or (_w2 >= 0.95) or (_w4 >= 0.95)) then {_dead = true;_ship = false,_imob = false;};
sleep 0.05;
if (((_eng >= 0.91) or (_fuel >= 0.7) or (_body >= 0.95)) and not (_imob))then {_dead = true;_explode = true;_ship = true};
};
case 5: {
_ship = true;
_imob =true;
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
_ltr = _unit getHitPointDamage "HitLTrack";
sleep 0.05;
_rtr = _unit getHitPointDamage "HitRTrack";
sleep 0.05;
_tur = _unit getHitPointDamage "HitTurret";
sleep 0.05;
_gun = _unit getHitPointDamage "HitGun";
sleep 0.05;
_hull = _unit getHitPointDamage "HitHull";
sleep 0.05;
_alld = getDammage _unit;
if ((_eng >= 0.91) or (_gun >= 0.91) or (_tur >= 0.91) or (_hull >= 0.91)) then {_dead = true;_explode = true;};
sleep 0.05;
if ((_ltr >= 0.95)or (_rtr >= 0.95)) then {_dead = true;_ship = false;_imob = false;};
sleep 0.05;
if (((_eng >= 0.91) or (_gun >= 0.91) or (_tur >= 0.91) or (_hull >= 0.91)) and not (_imob)) then {_dead = true;_explode = true;_ship = true};
};
default {
if (_alld >= 0.8) then {_dead = true};
};
};
if (_dead) then
{
if (_ohno) then {_dead = true; _nodelay = true;_explode = true} else {
_counter2 = _counter2 + 1;
sleep 0.1;
if ({alive _x} count crew _unit > 0) then {_dead = false;_counter2 = 0;};
if (({alive _x} count crew _unit == 0) and (_counter2 < _delay2)) then {_dead = false;} else {_nodelay =true;_counter2 = 0;};
if !(alive _unit) then {_dead = true; _nodelay = false;_counter2 = 0;};
switch (_kind) do {
case 1: {
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
_hrot = _unit getHitPointDamage "HitHRotor";
sleep 0.05;
_vrot = _unit getHitPointDamage "HitVRotor";
sleep 0.05;
_fuel = _unit getHitPointDamage "HitFuel";
sleep 0.05;
if ((_eng < 0.91) and (_hrot < 0.91) and (_vrot < 0.91) and (_fuel < 0.7)) then {_dead = false;_explode = false;};
sleep 0.05;
};
case 2: {
_alld = getDammage _unit;
sleep 0.05;
if (_alld < 0.8) then {_dead = false;_explode = false;};
};
case 3: {
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
if (_eng < 0.9) then {_dead = false;};
};
case 4: {
_w1 = _unit getHitPointDamage "HitLFWheel";
sleep 0.05;
_w3 = _unit getHitPointDamage "HitRFWheel";
sleep 0.05;
_w2 = _unit getHitPointDamage "HitLF2Wheel";
sleep 0.05;
_w4 = _unit getHitPointDamage "HitRF2Wheel";
sleep 0.05;
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
_fuel = _unit getHitPointDamage "HitFuel";
sleep 0.05;
_body = _unit getHitPointDamage "HitBody";
sleep 0.05;
_alld = getDammage _unit;
if ((_w1 < 0.95) and (_w3 < 0.95) and (_w2 < 0.95) and (_w4 < 0.95)) then {_imob = true;};
sleep 0.05;
if ((_eng < 0.91) and (_body < 0.91) and (_fuel < 0.5) and (_imob)) then {_dead = false;_explode = false;};
};
case 5: {
_eng = _unit getHitPointDamage "HitEngine";
sleep 0.05;
_ltr = _unit getHitPointDamage "HitLTrack";
sleep 0.05;
_rtr = _unit getHitPointDamage "HitRTrack";
sleep 0.05;
_tur = _unit getHitPointDamage "HitTurret";
sleep 0.05;
_gun = _unit getHitPointDamage "HitGun";
sleep 0.05;
_hull = _unit getHitPointDamage "HitHull";
sleep 0.05;
_alld = getDammage _unit;
if ((_ltr < 0.95) and (_rtr < 0.95)) then {_imob = true;};
sleep 0.05;
if ((_eng < 0.91) and (_hull < 0.91) and (_gun < 0.91) and (_tur < 0.91) and (_imob)) then {_dead = false;_explode = false;};
};
default {
if (_alld < 0.8) then {_dead = false;_explode = false;};
};
};
};

} else {

if ((getPosASL _unit distance _position > 10) and ({alive _x} count crew _unit == 0) and (_deserted > 0)) then
{
_counter = _counter + 1;
sleep 1;
if ({alive _x} count crew _unit > 0) then {_dead = false;_explode = false;_counter = 0;};
if (({alive _x} count crew _unit == 0) and (_counter >= _deserted2)) then {_explode = false;_nodelay =true;_dead = true;_counter = 0;};
if !(alive _unit) then {_dead = true; _nodelay = false;_explode = false;_counter = 0;};
};
};

if (_dead) then
{
sleep 0.05;
if (_nodelay) then {sleep 0.1; _nodelay = false;} else {sleep _delay;};
if (_dynamic) then {_position = getPosASL _unit; _dir = getDir _unit;};
if ((_explode) and (_ship) and (_exp2)) then {_effect = "M_AT" createVehicle getPosASL _unit; _effect setPosASL getPosASL _unit;};
sleep 0.1;

if (_kind == 3) then {
sleep 10;
_timer = 0;
_anker = "Land_ClutterCutter_small_F" createVehicle [getpos _unit select 0,getpos _unit select 1,getpos _unit select 2];
_anker attachto [_unit,[0,0,-1]];
detach _anker;
while {_timer < 500} do
{
if (_timer > 100) then {{doGetOut _x} forEach crew _unit};
_unit attachto [_anker,[0,0,0]];
_timer = _timer + 1;
sleep 0.08;
_anker setposASL [getposASL _anker select 0,getposASL _anker select 1,(getposASL _anker select 2) - 0.02]
};
deleteVehicle _unit;
deleteVehicle _anker;
} else {if (getPosASL _unit distance _position > 20) then {
if (_explode) then {_unit setdamage 1;_explode = false;} else {deleteVehicle _unit;};
} else {deleteVehicle _unit;};
};

sleep 2;
_unit = _type createVehicle _position;
_unit setPosASL _position;
_unit setDir _dir;

if (_haveinit) then
{
_unit call compile format ["%1=_This; PublicVariable '%1'",_unitinit];
};

if (_hasname) then
{
_unit setVehicleVarName _unitname;
_unit call compile format ["%1=_This; PublicVariable '%1'",_unitname];
};
_dead = false;

if !(_noend) then {_rounds = _rounds + 1};
if ((_rounds == _respawns) and !(_noend)) then {_run = false;};

};
};