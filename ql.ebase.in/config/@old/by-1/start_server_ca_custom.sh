#!/bin/bash
gameport=`expr $1 + 27972`
rconport=`expr $1 + 28972`
servernum=`expr $1 + 1`

exec /home/steam/steamcmd/steamapps/common/qlds/run_server_x64.sh \
+set net_strict 1 \
+set net_port $gameport \
+set sv_hostname ">> CA-Custom-$servernum @ [Minsk-1/BY] (ql.ebase.in)" \
+set fs_homepath /home/steam/.quakelive/$gameport \
+set zmq_rcon_enable 1 \
+set zmq_rcon_password "123456byqdescent123456" \
+set zmq_rcon_port $rconport \
+set zmq_stats_enable 1 \
+set zmq_stats_password "byqdescent123456" \
+set zmq_stats_port $gameport \
+set g_voteFlags "11272" \
+set sv_tags "helloy,Minsk,BY,custom,TeamDamageOn,ql.ebase.in" \
+set basegt "ca" \
+set g_factory "ca_custom" \
+set teamsize "5" \
+set sv_mapPoolFile =  "mappool_ca.txt" \
+set serverstartup "map almostlost ca_custom" \
+set dmflags "0" \
+set sv_fps  "40" \
+set g_spawnItemArmor "1" \
+set g_spawnItemAmmo "1" \
+set g_spawnItemHealth "1" \
+set g_spawnItemPowerup "1" \
+set g_startingAmmo_sg "20" \
+set g_startingAmmo_rl "20" \
+set g_startingAmmo_rg "25" \
+set g_startingAmmo_lg "200" \
+set g_startingAmmo_gl "20" \


