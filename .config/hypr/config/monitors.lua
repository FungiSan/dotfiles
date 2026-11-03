-- • ▌ ▄ ·.        ▐ ▄  ▪  ▄▄▄▄▄      ▄▄▄  .▄▄ · 
-- ·██ ▐███▪▪     •█▌▐█ ██ •██  ▪     ▀▄ █·▐█ ▀. 
-- ▐█ ▌▐▌▐█· ▄█▀▄ ▐█▐▐▌ ▐█· ▐█.▪ ▄█▀▄ ▐▀▀▄ ▄▀▀▀█▄
-- ██ ██▌▐█▌▐█▌.▐▌██▐█▌ ▐█▌ ▐█▌·▐█▌.▐▌▐█•█▌▐█▄▪▐█
-- ▀▀  █▪▀▀▀ ▀█▄▀▪▀▀ █▪ ▀▀▀ ▀▀▀  ▀█▄▀▪.▀  ▀ ▀▀▀▀ 
--
-- https://wiki.hypr.land/Configuring/Basics/Monitors/

local default_monitor = "DP-4"

hl.monitor({
    output   = default_monitor,
    mode     = "2560x1440@164",
    position = "0x0",
    scale    = "1",
    vrr      = 0,
})

-- Mirror default_monitor to all plugged monitors
hl.monitor({
    output   = "HDMI-A-2",
    mode     = "1920x1080",
    position = "2560x200",
    scale    = "1",
})
