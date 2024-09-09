tts_cloak_uniforms = [""];
tts_cloak_headgear = [""];
tts_cloak_requireHolstered = false;
tts_cloak_decloakOnFired = true;
tts_cloak_playSounds = true;
tts_cloak_playVoice = true;
tts_cloak_useUI = true;
tts_cloak_useUIVehicle = true;

[] spawn tts_cloak_fnc_initCloak;

tts_emission_playerEffect = 0;
tts_emission_aiEffect = 1;
tts_emission_vehicleEffect = 3;
tts_emission_aircraftEffect = 0;
tts_emission_useSirenObject = false;
tts_emission_sirenType = 0;
tts_emission_protectionEquipment = ["G_AirPurifyingRespirator_02_black_F", "U_O_R_Gorka_01_F"];
tts_emission_shelterTypes = ["Building", "Car", "Tank", "Air", "Ship"];
tts_emission_immuneUnits = [];
tts_emission_waveSpeed = 125;
tts_emission_approachDirection = "N";
tts_emission_showEmissionOnMap = true;
tts_emission_disableRain = true;