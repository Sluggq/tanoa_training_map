/*
 * Author: yourstruly
 * Replace unit's loadout with the one required for BRM.
 *
 * Arguments:
 * 0: Unit to replace loadout for <OBJECT>
 *
 * Return Value:
 * -
 *
 * Example:
 * [player] call TFT_fnc_setBrmLoadount
 */
params ["_unit"];

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "desUniform_H";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addMagazine ["hlc_30rnd_556x45_EPR", 20];
_unit addMagazine ["hlc_30rnd_556x45_EPR", 10];
_unit addMagazine ["hlc_30rnd_556x45_EPR", 10];
_unit addVest "des_PlateCarrier1";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 7 do {_unit addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_morphine";};
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_quikclot";};
_unit addItemToVest "ACE_Flashlight_MX991";
_unit addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_CableTie";};
_unit addItemToVest "ACE_IR_Strobe_Item";
_unit addItemToVest "ItemcTabHCam";
_unit addHeadgear "H_HelmetSpecB_paint2";
_unit addWeapon "hlc_rifle_M4";
_unit addPrimaryWeaponItem "bipod_01_F_blk";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
