fx_version "adamant"

game "gta5"

this_is_a_map "yes"

data_file "DLC_ITYP_REQUEST" "stream/*.ytyp"


client_scripts {
    "@PolyZone/client.lua",
	"@PolyZone/BoxZone.lua",
    "client/client.lua",
    "client/main.lua",
}

data_file "GTXD_PARENTING_DATA" "client/mph4_gtxd.meta"

files {
    "client/mph4_gtxd.meta",
}