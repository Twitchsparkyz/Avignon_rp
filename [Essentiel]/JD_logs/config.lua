Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = false  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "Avignon RP logs" 							-- Bot Username
Config.avatar = "https://via.placeholder.com/30x30"				-- Bot Avatar
Config.communtiyName = "AvignonLogs"					-- Icon top of the embed
Config.communtiyLogo = "https://via.placeholder.com/30x30"		-- Icon top of the embed
Config.FooterText = "2020 - 2021 © Prefech"						-- Footer text for the embed
Config.FooterIcon = "https://via.placeholder.com/30x30"			-- Footer icon for the embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.InlineFields = true			-- set to false if you don't want the player details next to each other

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs
Config.license = true				-- set to false to disable license in the logs
Config.IP = true					-- set to false to disable IP in the logs

-- Change color of the default embeds here
-- It used Decimal or Hex color codes. They will both work.
Config.BaseColors ={		-- For more info have a look at the docs: https://docs.prefech.com
	chat = "#A1A1A1",				-- Chat Message
	joins = "#3AF241",				-- Player Connecting
	leaving = "#F23A3A",			-- Player Disconnected
	deaths = "#000000",				-- Shooting a weapon
	shooting = "#2E66F2",			-- Player Died
	resources = "#EBEE3F",			-- Resource Stopped/Started	
}


Config.webhooks = {		-- For more info have a look at the docs: https://docs.prefech.com
	all = "https://discord.com/api/webhooks/843783457003929630/ppjy6Sb864rnlnffBXbzjEL6YW2peOLw5tUF_5zXm6NOgfkoJ7lpWr2xlr0R6nFRxQQ7",		-- All logs will be send to this channel
	chat = "https://discord.com/api/webhooks/843776801390329886/MhbN8xjw3kLd-YAbnwPv5Gi1PNTc5-fnoRHodtdXQ9M_phe1wuh7EYBEqLrXKM2TCGCR",		-- Chat Message
	joins = "https://discord.com/api/webhooks/843776710532005908/L9NF-oWXhOLbZTnKgOWqqBZJy-pXbJTeaUtoC7nOhhsQfLDbJHS_5bGCsdUDyBi6oeLo",		-- Player Connecting
	leaving = "https://discord.com/api/webhooks/843776628940734484/zdAypT8nnvV-00sYn1TLl02WHHnnXRO1pYapLMkiG3zCcSAeREr7T2djxpBi2_YmIGsd",	-- Player Disconnected
	deaths = "https://discord.com/api/webhooks/843776527724445706/QiK9scTKQ_TsCrfIRv1hyTwfZNCFIAsjpXzHGoWRZEziXTJyNADH3O0T4nJ5e2EPtTNv",	-- Player Died	
	shooting = "https://discord.com/api/webhooks/843776350643945483/5YiBTKAo_sj9wcoJjwhgJg2pIn74EPkYAHyRb-Ln7mlvsTEm0QJE6r6fEl5yNvvUhLc-",	-- Shooting a weapon
	resources = "https://discord.com/api/webhooks/843776229572345876/DHfLl-zZP3QLhuUgh8in62O58yHrBP8-9kglBoYXEC6o5SqNLAI3UMFF-udo4H7mRaps",	-- Resource Stopped/Started	
-- Custom WEBHOOK
	retrait_argent = "https://discord.com/api/webhooks/843782904747917322/rUvzJrdfhCrjrU8whZh-BdarFs4pfIuBqcFagz4nRopw192RArT9CMl4_Fo7SGGkJaTU",
	Depot_argent = "https://discord.com/api/webhooks/843783778426159125/7O96dai21nZhbnlOlKgZ_cVzr5AYW4cfG070xY1gts8EsJZlGNaSMokDwt10jGLLyzB5",
	transfer_argent = "https://discord.com/api/webhooks/843784781694369802/TBmKZao39VY0cy8IBiqTCSjbnRjYq8eW0X73KUPVfvASrJd79m7hCmdjMYukJ_Oa8jwZ",
	Bijouterie = "https://discord.com/api/webhooks/843839527721762869/BBYlkuXvsVNDkkRlv2glDpgp1k6eUyZtvxG031fcCrc5a3Y9wyPFQFGfI4L-x2eAlLix",
	BraquageBank = "https://discord.com/api/webhooks/843842812340600832/PHoA2M-52zLV-86oMMwUtVx-cX-RjtPmHflBxiC6LXrPK1OIykhlA89vA2awCJlmPJyO",
    BraquageSuperette = "https://discord.com/api/webhooks/843844662108487680/Qht8wIy-YY2vqtcF5Dvo-KC2PXYEuptaYyMoiCUbzAz5Bz0S0yAfpA0lBX0xmaT_FKzm",
	WeaponShop = "https://discord.com/api/webhooks/843856483962978314/AbHdz-yqF4Grt604CMvGqyEGDnrcT68wSbJlQ_s7CJooYq-SUcITCKHScgPSV3d0pHjg",
	Vigne_factures = "https://discord.com/api/webhooks/843934907348156488/dDe3YllHJyefY5GAUvQb-wAbKsFukYVi4B9-bee9RkPR4FLfzm-9o8ZYGnHymQ8ypNOb",
	Vigne_Coffre = "https://discord.com/api/webhooks/843938330093158410/23hsl3d8uuR3kt3cPsTsb2Zpvw2K-nk_7CAA8wBwbSTK8gUxpE7YvJzBM4d08YKVNGNp",
	annonce_tabac = "https://discord.com/api/webhooks/843942953839230986/uYlNmf_2aCTWmJPhupGmKm3Q6-I_huPOXSJpxJDI6mxKjwFDyCsr-sC1VevmsDsGbvF7",
	Tabac_factures = "https://discord.com/api/webhooks/843943612177317959/6anPxYG3xFzZMWcTh37tcvgx3pXuQsHanRr-BbAIXAPjQDzz8GzKdK49cHvky1HZsECO",
	Tabac_Coffre = "https://discord.com/api/webhooks/843944080392060930/drhkFk6HcpYp9ZlTtCxT_fKV55q7L05uajoFZNL5Xl9A1B6zyE4mf9ndfzrG4wevuB4R",
	Withdraw_society = "https://discord.com/api/webhooks/843946176024805468/9FT5m2cpyZFp6eF269kPpiO8DoKZBZ5aoguTpuShWSWPJoRzgSFhEJ24xDsk1n4CD2Sa",
	Deposit_society = "https://discord.com/api/webhooks/843946914415771689/3xFmV_GElZy2huPBF7SEAnCz0rlJVRFwRZ2jJODh9WNGPz8sSnAP4Y7spOrbf9NG2B41",
	GiveArgent = "https://discord.com/api/webhooks/843955249344806922/92T9w-Sjnx_Uy2ZFsLbXY8ATYZvKZw-N3tDfFYNIdqEkAUEDhdNs2ceIBJ6CmRof6qzm",
	DropArgent = "https://discord.com/api/webhooks/843956537882181692/UY1mDt_6DDRoxl0-jIXmGdRL7NKkCepS_BLXC-c1mj86J3YBepK7zK3GSdgydhz4S418",
	PPA = "https://discord.com/api/webhooks/845382857630285880/_q27llSPtK3BCYWlvxUyPyL6LEoYBZpm8T9zV3sJs-N42k9DXtRdIYWq_VyzibYpcLfG",
	concess_billing = "https://discord.com/api/webhooks/853678587290583080/_9V-gl30JKUWFGqV5ajPa3pOlXvpJqkBPr__THf_hfcFsdDkcYRlfGczwgW0DEaLxwmV",
	concess_sell = "https://discord.com/api/webhooks/853679476289961985/STqzTIRmRNuxGySd77wSOLgYhtyh-cAJOsYdu8rmKrGEJ6SIhITxelklYZw1LzuSHqn7",
	BijouterieServerSide = "https://discord.com/api/webhooks/853773435355529247/3WNgL3KJ6Sz87uz6cIRoJ_cARJa_rE-lf5gRYSCwiaaifjkK9lWRGft-BjMYAt--vYm6",
	MacDo_billing = "https://discord.com/api/webhooks/853695510346989579/4n63-Ct46KXwzRK5wOnMpO_uf7D-2S_y5PM5XwXb4DYANb3RX3ZvgHTbIRcSa3x74Wog",
	MacDo_coffre = "https://discord.com/api/webhooks/853694108073066527/yITc5cF6FQd_clXKZj3x1NkR8eZgbRugdsThNc9CmQp7w3y_GzJmpGXB89hRttlYyb25",
	MacDo_fridge = "https://discord.com/api/webhooks/853695510346989579/4n63-Ct46KXwzRK5wOnMpO_uf7D-2S_y5PM5XwXb4DYANb3RX3ZvgHTbIRcSa3x74Wog",
	MacDo_buy = "https://discord.com/api/webhooks/853696442240335872/h_S7uU1QJUjNXDfSR5EkXkThFTMN46CwoUBDuYt8CMF-0f6fuW9oJVDrdWjUZ2JKGcp-",
	Revive_admin = "https://discord.com/api/webhooks/855077867430871040/2hmXkWMXW3Ne4XI18ndoMVs4-ybnPaY3Vki-O9Ku7dgSEdAT3L3-JRUMwagriU1PK-O9",
	Revive_ambulancejob = "https://discord.com/api/webhooks/855078985938370590/vuTDdC2Ri5l_rhi2swTS6s3TZB--tQWVgJ_spmve4OS63-Gkhi2cdak9wZfSMcwcxBYC",
	Revive_early = "https://discord.com/api/webhooks/855082361309757452/WHlAj5meBvc1O68t-VVmlDAfOGzIeu0mT5nMRdWW3If5RBLW--i5h4E4XoC13dwh5Y3N",
	Revive_auto = "https://discord.com/api/webhooks/855086875420131361/cv_7B2llvAah0JwS-C8wbS6z0t7f5kzU27P4X_rFuJPZsiEZanuboOyP1U6WSDxHIkSa",
	Vigne_factures = "",
	Vigne_factures = "",
	Vigne_factures = "",
	Vigne_factures = "",
	Vigne_factures = "",
	
	
	
	
}
Config.TitleIcon = {		-- For more info have a look at the docs: https://docs.prefech.com
	chat = "💬",				-- Chat Message
	joins = "📥",				-- Player Connecting
	leaving = "📤",			-- Player Disconnected
	deaths = "💀",				-- Shooting a weapon
	shooting = "🔫",			-- Player Died
	resources = "🔧",			-- Resource Stopped/Started	
}


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.2.0"