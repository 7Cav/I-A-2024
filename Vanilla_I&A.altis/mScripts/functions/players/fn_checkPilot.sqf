_role = assignedVehicleRole player;
_vehicle = objectParent player;
_playerClass = typeOf player;

_allowedMC = ["JFO_F",_playerClass,true] call BIS_fnc_inString;
_allowedHeli = ["Helicopter",_playerClass,true] call BIS_fnc_inString;
_allowedPlane = ["Plane",_playerClass,true] call BIS_fnc_inString;
_teamspeak = if ([] call TFAR_fnc_getTeamSpeakServerName == "7th Cavalry Gaming") then {true} else {false};

_chuteException = ["chute",typeOf _vehicle] call BIS_fnc_inString;

if (_chuteException) exitWith {};

if (_vehicle isKindOf "Plane" || _vehicle  isKindOf "Helicopter") then {

	if (_role select 0 == "Cargo") exitWith {};

	if (_vehicle isKindOf "Plane") then {
		
		if ((_allowedMC && _teamspeak) || (_allowedPlane && _teamspeak)) exitWith {};
		moveOut player;
		titleText ["Pilots and Gunners must be in the appropriate slot and on Teamspeak to fly.","PLAIN",0.3];
		
	};
	if (_vehicle isKindOf "Helicopter") then {
		
		if ((_allowedMC && _teamspeak) || (_allowedHeli && _teamspeak)) exitWith {};
		moveOut player;
		titleText ["Pilots and Gunners must be in the appropriate slot and on Teamspeak to fly.","PLAIN",0.3];
		
	};

};
