#!/bin/bash
gameport=`expr $1 + 27963`
rconport=`expr $1 + 28963`
servernum=`expr $1 + 1`

exec /home/matty/steam/steamapps/common/qlds/run_server_x64.sh \
+set net_strict 1 \
+set net_port $gameport \
+set sv_hostname ">> Duel-$servernum @ [Frankfurt-1/DE] (ql.ebase.in)" \
+set fs_homepath /home/matty/.quakelive/$gameport \
+set zmq_rcon_enable 1 \
+set zmq_rcon_password "123456byqdescent123456" \
+set zmq_rcon_port $rconport \
+set zmq_stats_enable 1 \
+set zmq_stats_password "byqdescent123456" \
+set zmq_stats_port $gameport \
+set g_voteFlags "11272" \
+set sv_tags "helloy,Frankfurt,DE,ql.ebase.in,[de-1]" \
+set basegt "duel" \
+set factory "duel" \
+set sv_mapPoolFile =   "mappool_duel.txt" \
+set serverstartup "map aerowalk duel" \
+set sv_fps "40" \



