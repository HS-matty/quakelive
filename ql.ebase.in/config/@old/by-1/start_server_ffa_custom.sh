#!/bin/bash
gameport=`expr $1 + 27970`
rconport=`expr $1 + 28970`
servernum=`expr $1 + 1`

exec /home/steam/steamcmd/steamapps/common/qlds/run_server_x64.sh \
+set net_strict 1 \
+set net_port $gameport \
+set sv_hostname ">> FFA-Custom-$servernum @ [Minsk-1/BY] (ql.ebase.in)" \
+set fs_homepath /home/steam/.quakelive/$gameport \
+set zmq_rcon_enable 1 \
+set zmq_rcon_password "byqdescent123456" \
+set zmq_rcon_port $rconport \
+set zmq_stats_enable 1 \
+set zmq_stats_password "byqdescent123456" \
+set zmq_stats_port $gameport \
+set g_voteFlags "11272" \
+set sv_tags "helloy,Minsk,BY,custom,CaWeaponsOn,ql.ebase.in" \
+set basegt "ffa" \
+set factory "ffa" \
+set fraglimit "50" \
+set g_startingWeapons  "255" \
+set g_startingHealth "200" \
+set g_startingArmor  "100" \
+set g_spawnItemArmor  "1" \
+set g_spawnItemAmmo  "1" \
+set g_spawnItemHealth "1" \
+set g_spawnItemHoldable  "0" \
+set g_spawnItemPowerup  "1" \
+set g_spawnItemRune  "0" \
+set g_spawnItemWeapons  "1" \
+set sv_mapPoolFile =  "mappool_ffa.txt" \
+set serverstartup "map campgrounds ffa" \
+set g_startingAmmo_sg "20" \
+set g_startingAmmo_rl "20" \
+set g_startingAmmo_rg "25" \
+set g_startingAmmo_lg "200" \
+set g_startingAmmo_gl "20" \
+set g_damage_g "80" \
+set g_damage_gl "120" \
+set g_damage_lg "7" \
+set g_damage_mg "5" \
+set g_damage_pg "25" \
+set g_damage_rg "100" \
+set g_damage_sg "7" \
+set g_damage_rl "120" \
+set sv_fps "40" \
+set g_forceDmgThroughSurface "1" \
+set g_motd "helloy" \
