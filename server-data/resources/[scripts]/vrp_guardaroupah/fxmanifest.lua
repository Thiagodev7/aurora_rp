

fx_version 'bodacious'
game 'gta5'

version '1.0.0'

ui_page 'nui/badland.html'

client_scripts {
	'@vrp/lib/utils.lua',
	'client-side/*.lua'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'ellie.lua'
}

files {
	'nui/badland.html',
	'nui/badland.js',
    'nui/badland.css',
    
	'nui/media/img/*.png',
}
