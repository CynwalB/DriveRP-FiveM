fx_version "bodacious"
game "gta5"

client_scripts {
    "client.lua",
	"main.lua"
}

server_scripts {
	'@es_extended/server/async.lua',
	'@mysql-async/lib/MySQL.lua',
	"server.lua"
}

exports {
	"getRessource"
}