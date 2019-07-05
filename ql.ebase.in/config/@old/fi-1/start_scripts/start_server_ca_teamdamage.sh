#!/bin/bash
gameport=`expr $1 + 27963`
rconport=`expr $1 + 28963`
servernum=`expr $1 + 1`

exec /home/steam/steamcmd/steamapps/common/qlds/run_server_x64.sh \
+set net_strict 1 \
+set net_port $gameport \
+set sv_hostname ">> ClanArena-Custom-$servernum @ [Helsinki-1/FI] (ql.ebase.in)" \
+set fs_homepath /home/steam/.quakelive/$gameport \
+set zmq_rcon_enable 1 \
+set zmq_rcon_password "byqdescent123456" \
+set zmq_rcon_port $rconport \
+set zmq_stats_enable 1 \
+set zmq_stats_password "byqdescent123456" \
+set zmq_stats_port $gameport \
+set g_voteFlags "11272" \
+set sv_tags "helloy,Helsinki,FI,custom,TeamDamageOn,ql.ebase.in" \
+set basegt "ca" \
+set factory "ca" \
+set dmflags "0" \
+set sv_mapPoolFile = "mappool_ca.txt" \
+set serverstartup "map almostlost duel" \
+set sv_fps "125" \



