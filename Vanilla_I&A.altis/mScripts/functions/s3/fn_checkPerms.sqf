params ["_uid"];

#include "whitelist.sqf"

_playerClass = typeOf player;

_mp = "B_Officer_Parade_Veteran_F";
_mc = "B_officer_F";

if (_playerClass isEqualTo _mp || _playerClass IsEqualTo _mc) then {
	if !(_uid in mScripts_whitelist) then {
		endMission "RESTRICTED_SLOT";
	};
};
