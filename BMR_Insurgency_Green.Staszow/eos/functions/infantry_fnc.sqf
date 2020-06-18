HCPresent = if (isNil "Any_HC_present") then {False} else {True};

if ((!isServer && hasInterface) || (HCPresent && isServer)) exitWith{};

// SINGLE INFANTRY GROUP
params ["_pos","_grpSize","_faction","_side"];
_grpSize params ["_grpMin","_grpMax"];

_d=_grpMax-_grpMin;
_r=floor(random _d);
//if (_r isEqualTo 0) then {_r=ceil(random _d);};//Aprox 12 to 22 percent increase to current lobby parameter probability?
_grpSize=_r+_grpMin;

private _pool=if (surfaceiswater _pos) then {[_faction,1] call eos_fnc_getunitpool;}else{[_faction,0] call eos_fnc_getunitpool;};

_grp=createGroup _side;

private "_unit";
for "_x" from 1 to _grpSize step 1 do {
	_unitType=selectRandom _pool;
	_unit = _grp createUnit [_unitType, _pos, [], 6, "FORM"];
	if !(side _unit isEqualTo INS_Op4_side) then {[_unit] joinSilent _grp};
	(group _unit) setVariable ["zbe_cacheDisabled",true];
	if (_unitType in ["fow_s_ija_rifleman_at","fow_s_ija_f_rifleman_at","fow_s_ija_snlf_rifleman_at"]) then {
		_unit addBackpack "fow_b_ija_backpack";
		for "_i" from 1 to 2 step 1 do {_unit addItemToBackpack "fow_1Rnd_m6a1";};
		[_unit,"fow_w_m1a1_bazooka",1] call BIS_fnc_AddWeapon;
	};
};

_grp