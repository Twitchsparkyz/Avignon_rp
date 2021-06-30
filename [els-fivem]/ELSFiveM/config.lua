outputLoading = false
playButtonPressSounds = true
printDebugInformation = true

--[[
    READ!
      This developer mode grants access to specific features which may result in complete breaking of the script,
      you should only use this if you want to provide feedback on a feature (which may require certain environments
      to be able to test effectively)

      You will likely see comments linking to an issue on the GitHub repository (https://github.com/MrDaGree/ELS-FiveM)
      which ask for feedback and testing for a feature. Which, by the way, is voluntarily enabled of course. Support
      will not be granted for those who enable this without knowing what it does or what the consequences of using it
      are.
]]
developerMode = false

vehicleSyncDistance = 150
environmentLightBrightness = 0.006
lightDelay = 10 -- Time in MS
flashDelay = 15

panelEnabled = true
panelType = "original"
panelOffsetX = 0.0
panelOffsetY = 0.0

allowedPanelTypes = {
    "original",
    "old"
}

vcf_files = {
    "AMBULANCE.xml",
    "ARSAMU.xml",
    "BATI.xml",
    "burrito4.xml",
    "ccf74.xml",
    "ccgc.xml",
    "dailypcc13.xml",
    "DINGHY.xml",
    "FBI2.xml",
    "FIRETRUK.xml",
    "FLATBED.xml",
    "fptl12.xml",
    "POLICE.xml",
    "POLICE2.xml",
    "POLICE3.xml",
    "POLICE4.xml",
    "POLICE5.xml",
    "POLICEB.xml",
    "POLICEOLD1.xml",
    "POLICEOLD2.xml",
    "POLICET.xml",
    "pranger.xml",
    "RIOT.xml",
    "SHERIFF.xml",
    "SHERIFF2.xml",
    "T6SAMU.xml",
    "VLCG.xml",
    "VLMSP.xml",
    "VLU.xml",
    "vsav.xml",
    "vsav752.xml",
    "vsavcube.xml",
    "vsavsp1.xml",
    "sleoneri.xml",
    "5008gn.xml",
    "polmun.xml",
    "polmun2.xml",
    "motopmo.xml",
    "vripeugeot.xml",
    "dust14gn.xml",
    "riftgn.xml",
    "fordrangergn.xml",
    "rangergn.xml",
    "epa.xml",
    "cliogn.xml",
    "cliobspp.xml",
    "bdf.xml",
    "c4bana.xml",
    "meganers.xml",
    "17silv.xml",
    "masterdir.xml",
    "flatbed3.xml",
    "STUARTE1528.xml",
    "peug3008.xml",
    "towtruck.xml",
    "mastergm.xml",
    "vsharanpsig.xml",
    "meganeivpsig.xml",
    "FBI.xml",
      -- ne pas mettre de virgule sur le dernier
}

-- https://docs.fivem.net/game-references/controls

shared = {
    horn = 86,
}

keyboard = {
    modifyKey = 132,
    stageChange = 85, -- E
    guiKey = 199, -- P
    takedown = 83, -- =
    siren = {
        tone_one = 157, -- 1
        tone_two = 158, -- 2
        tone_three = 160, -- 3
    },
    pattern = {
        primary = 163, -- 9
        secondary = 162, -- 8
        advisor = 161, -- 7
    },
    warning = 246, -- Y
    secondary = 303, -- U
    primary = 7, -- ?? 
}

controller = {
    modifyKey = 73,
    stageChange = 80,
    takedown = 74,
    siren = {
        tone_one = 173,
        tone_two = 85,
        tone_three = 172,
    },
}