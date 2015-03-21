/**
 * fn_drawBFTIcons_CC.sqf
 * @Descr: N/A
 * @Author: Glowbal
 *
 * @Arguments: []
 * @Return:
 * @PublicAPI: false
 */

private ["_trackerInfo", "_icon", "_pos", "_text", "_unit", "_side", "_color", "_map"];
_trackerInfo = _this select 0;
_map = _this select 1;

_icon = _trackerInfo select 0;
_pos = _trackerInfo select 1;
_text = _trackerInfo select 2;
_unit = _trackerInfo select 5;
_side  = _trackerInfo select 6;

if (([([] call cse_fnc_getCurrentDeviceName_CC)] call cse_fnc_getDeviceSide_CC) == _side || ([] call cse_fnc_getCurrentDeviceName_CC) == "") then {
	if (!CSE_TOGGLE_CALLSIGNS_CC) then {
		_text = "";
	};
	_color = _trackerInfo select 3;
	if (_unit == player) then {
		_color = [0.78,0.8,0.1,1];
	};
	_map drawIcon [_icon,_color, _pos, 30, 30, 0, _text, 0, 0.05, 'PuristaMedium', 'right'];
};