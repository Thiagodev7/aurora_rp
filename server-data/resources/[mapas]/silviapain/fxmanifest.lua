fx_version 'adamant'
game 'gta5' 
lua54 'on'

files {
    'common/**/*.meta',
    'common/**/*.xml',
    'common/**/*.dat',
    'common/**/*.ytyp',
	'audio/*',
	'audio/**/'
}

data_file 'HANDLING_FILE'            'common/**/handling*.meta'
data_file 'VEHICLE_LAYOUTS_FILE'    'common/**/vehiclelayouts*.meta'
data_file 'VEHICLE_LAYOUTS_FILE'    'common/**/vehiclelayouts_1*.meta'
data_file 'VEHICLE_METADATA_FILE'    'common/**/vehicles*.meta'
data_file 'CARCOLS_FILE'            'common/**/carcols*.meta'
data_file 'VEHICLE_VARIATION_FILE'    'common/**/carvariations*.meta'
data_file 'CONTENT_UNLOCKING_META_FILE' 'common/**/*unlocks.meta'
data_file 'PTFXASSETINFO_FILE' 'common/**/ptfxassetinfo.meta'


data_file "AUDIO_WAVEPACK" "audio/elegyx/dlc_elegyx"
data_file "AUDIO_GAMEDATA" "audio/elegyx/elegyx_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/elegyx/elegyx_sounds.dat"

data_file "AUDIO_WAVEPACK" "audio/hemisound/dlc_hemisound"
data_file "AUDIO_GAMEDATA" "audio/hemisound/hemisound_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/hemisound/hemisound_sounds.dat"

data_file "AUDIO_WAVEPACK" "audio/r35sound/dlc_r35sound"
data_file "AUDIO_GAMEDATA" "audio/r35sound/r35sound_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/r35sound/r35sound_sounds.dat"

data_file "AUDIO_WAVEPACK" "audio/r34sound/dlc_r34sound"
data_file "AUDIO_GAMEDATA" "audio/r34sound/r34sound_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/r34sound/r34sound_sounds.dat"

data_file "AUDIO_WAVEPACK" "audio/v8sultanrs/dlc_v8sultanrs"
data_file "AUDIO_GAMEDATA" "audio/v8sultanrs/sultanrsv8_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/v8sultanrs/sultanrsv8_sounds.dat"

data_file "AUDIO_WAVEPACK" "audio/cw2019/dlc_cw2019"
data_file "AUDIO_GAMEDATA" "audio/cw2019/cw2019_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/cw2019/cw2019_sounds.dat"

data_file "AUDIO_WAVEPACK" "audio/s15sound/dlc_s15sound"
data_file "AUDIO_GAMEDATA" "audio/s15sound/s15sound_game.dat"
data_file "AUDIO_SOUNDDATA" "audio/s15sound/s15sound_sounds.dat"

client_scripts {
    'vehicle_names.lua',
}