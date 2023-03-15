#include "paramDefault.hpp"
#include "\A3\ui_f_curator\ui\defineResinclDesign.inc"

private _is_curator = (str player == "bis_curatorUnit");

// mission params init
private _respawnDelay = ["PlayerRespawnDelay", DEFAULT_PLAYER_RESPAWN_DELAY] call BIS_fnc_getParamValue;
if(_respawnDelay != DEFAULT_PLAYER_RESPAWN_DELAY) then {setPlayerRespawnTime _respawnDelay};

if (_is_curator) then
{
	// set random position for curator camera
	waitUntil {not isNull curatorCamera and {not isNil {bis_curator getVariable "CAM_POS_ATL"}}};
	private _cam_pos = bis_curator getVariable "CAM_POS_ATL";
	_cam_pos set [2, 50];
	curatorCamera setPosATL _cam_pos;
	curatorCamera setDir random 360;
	disableSerialization;
	private _curatorMapCtrl = ((findDisplay IDD_RSCDISPLAYCURATOR) displayCtrl IDC_RSCDISPLAYCURATOR_MAINMAP);
	_curatorMapCtrl ctrlMapAnimAdd [0, 0.1, _cam_pos]; 
	ctrlMapAnimCommit _curatorMapCtrl;
};

[] execVM "scripts\rules.sqf";

// initialise beam laser custom modules for ZEN
[] spawn tts_beam_fnc_customZeusModules;

// initialise cloak module for ZEN
[] spawn tts_cloak_fnc_customZeusModules;

// Adding RAS sounds into the Crows Zeus Modules PlaySound module
crowsEW_sounds_soundAttributes set ["RAS_facilityalarm", [0, "sounds\RAS\alarm\RAS_facilityalarm.ogg", "[RAS] Facility Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_mediumalarm", [0, "sounds\RAS\alarm\RAS_mediumalarm.ogg", "[RAS] Medium Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_criticalalarm", [0, "sounds\RAS\alarm\RAS_criticalalarm.ogg", "[RAS] Critical Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_breachalarm", [0, "sounds\RAS\alarm\RAS_breachalarm.ogg", "[RAS] Breach Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_musicChannelCalm1", [0, "sounds\RAS\radio\RAS_musicChannelCalm1.ogg", "[RAS] Music Channel (Calm 1) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_musicChannelCalm2", [0, "sounds\RAS\radio\RAS_musicChannelCalm2.ogg", "[RAS] Music Channel (Calm 2) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_thedriller1", [0, "sounds\RAS\machinery\RAS_thedriller1.ogg", "[RAS] The Driller (1) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_thedriller2", [0, "sounds\RAS\machinery\RAS_thedriller2.ogg", "[RAS] The Driller (2) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_badelectricity", [0, "sounds\RAS\electronics\RAS_badelectricity.ogg", "[RAS] Electrical Sparks (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_radiosilence", [0, "sounds\RAS\radio\RAS_radiosilence.ogg", "[RAS] Radio Silence (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_radiofirefight", [0, "sounds\RAS\radio\RAS_radiofirefight.ogg", "[RAS] Radio Firefight [NATO] (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_radiofirefight2", [0, "sounds\RAS\radio\RAS_radiofirefight2.ogg", "[RAS] Radio Firefight [CSAT] (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_radiofirefight3", [0, "sounds\RAS\radio\RAS_radiofirefight3.ogg", "[RAS] Radio Firefight [AAF] (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_radiofirefightzom", [0, "sounds\RAS\radio\RAS_radiofirefightzom.ogg", "[RAS] Radio Firefight [Zombies] (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_radiozombietakeover", [0, "sounds\RAS\radio\RAS_radiozombietakeover.ogg", "[RAS] Radio Silence [Zombie Takeover] (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_smallfire", [0, "sounds\RAS\environment\RAS_smallfire.ogg", "[RAS] Small Fire (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_mediumfire", [0, "sounds\RAS\environment\RAS_mediumfire.ogg", "[RAS] Medium Fire (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_largefire", [0, "sounds\RAS\environment\RAS_largefire.ogg", "[RAS] Large Fire (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_fan", [0, "sounds\RAS\electronics\RAS_fan.ogg", "[RAS] Industrial Fan Loop (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_basealarm", [0, "sounds\RAS\alarm\RAS_basealarm.ogg", "[RAS] Base Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_ancients", [0, "sounds\RAS\environment\RAS_ancients.ogg", "[RAS] Ancient Whispers (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_housefirealarm", [0, "sounds\RAS\alarm\RAS_housefirealarm.ogg", "[RAS] House Fire Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_gasalarm", [0, "sounds\RAS\alarm\RAS_gasalarm.ogg", "[RAS] Gas Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_raidsiren", [0, "sounds\RAS\alarm\RAS_raidsiren.ogg", "[RAS] Raid Siren (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_echoalarm", [0, "sounds\RAS\alarm\RAS_echoalarm.ogg", "[RAS] Echo Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_basealarm2", [0, "sounds\RAS\alarm\RAS_basealarm2.ogg", "[RAS] Base Alarm 2 (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_supplycratebeep", [0, "sounds\RAS\alarm\RAS_supplycratebeep.ogg", "[RAS] Supply Crate Beep (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_perimeteralarm", [0, "sounds\RAS\alarm\RAS_perimeteralarm.ogg", "[RAS] Perimeter Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_ciwsalarm", [0, "sounds\RAS\alarm\RAS_ciwsalarm.ogg", "[RAS] CIWS Incoming Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_signal1", [0, "sounds\RAS\environment\RAS_signal1.ogg", "[RAS] Alien Signal 1 (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_signal2", [0, "sounds\RAS\environment\RAS_signal2.ogg", "[RAS] Alien Signal 2 (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_signal3", [0, "sounds\RAS\environment\RAS_signal3.ogg", "[RAS] Alien Signal 3 (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_brokenTerminal", [0, "sounds\RAS\electronics\RAS_brokenTerminal.ogg", "[RAS] Broken Terminal (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_brokenTerminal2", [0, "sounds\RAS\electronics\RAS_brokenTerminal2.ogg", "[RAS] Broken Terminal 2 (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_brokenTerminal3", [0, "sounds\RAS\electronics\RAS_brokenTerminal3.ogg", "[RAS] Broken Terminal 3 (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_hiveHeart", [0, "sounds\RAS\environment\RAS_hiveHeart.ogg", "[RAS] Alien Hive Heart (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_rockMusicLoopEcho", [0, "sounds\RAS\environment\RAS_rockMusicLoopEcho.ogg", "[RAS] Rock Music Loop (Echo) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_clubMusicLoopEcho", [0, "sounds\RAS\environment\RAS_clubMusicLoopEcho.ogg", "[RAS] Club Music Loop (Echo) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_clubMusicLoop", [0, "sounds\RAS\environment\RAS_clubMusicLoop.ogg", "[RAS] Club Music Loop (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_automatedMiningExtractorSmall", [0, "sounds\RAS\machinery\RAS_automatedMiningExtractorSmall.ogg", "[RAS] Automated Mining Extractor (Small) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_automatedMiningExtractorMedium", [0, "sounds\RAS\machinery\RAS_automatedMiningExtractorMedium.ogg", "[RAS] Automated Mining Extractor (Medium) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_automatedMiningExtractorLarge", [0, "sounds\RAS\machinery\RAS_automatedMiningExtractorLarge.ogg", "[RAS] Automated Mining Extractor (Large) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_atmosphericProcessor", [0, "sounds\RAS\machinery\RAS_atmosphericProcessor.ogg", "[RAS] Atmospheric Processor (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_modernPhoneVibration", [0, "sounds\RAS\electronics\RAS_modernPhoneVibration.ogg", "[RAS] Cell Phone Ringtone (Vibrating) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_nokiaRingtone", [0, "RAS\electronics\RAS_nokiaRingtone.ogg", "[RAS] Nokia Ringtone (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_countdownTimer", [0, "sounds\RAS\electronics\RAS_countdownTimer.ogg", "[RAS] Countdown Timer (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_musicChannelRock1", [0, "sounds\RAS\radio\RAS_musicChannelRock1.ogg", "[RAS] Music Channel (Rock 1) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_musicChannelRock2", [0, "sounds\RAS\radio\RAS_musicChannelRock2.ogg", "[RAS] Music Channel (Rock 2) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_heatAlarm", [0, "sounds\RAS\alarm\RAS_heatAlarm.ogg", "[RAS] Heat Alarm (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_stadiumMusic80Mix", [0, "sounds\RAS\environment\RAS_stadiumMusic80Mix.ogg", "[RAS] Stadium Music (80s Mix) (0s)"]];
crowsEW_sounds_soundAttributes set ["RAS_stadiumMusicElectronicMix", [0, "sounds\RAS\environment\RAS_stadiumMusicElectronicMix.ogg", "[RAS] Stadium Music (Electronic Mix) (0s)"]];




