#!/bin/bash
gameport=`expr $1 + 27960`
rconport=`expr $1 + 28960`
servernum=`expr $1 + 1`

exec /home/matty/steam/steamapps/common/qlds/run_server_x64.sh \
+set net_strict 1 \
+set net_port $gameport \
+set sv_hostname ">> [Frankfrurt/DE] #$servernum (ql.ebase.in)" \
+set fs_homepath /home/matty/.quakelive/$gameport \
+set zmq_rcon_enable 1 \
+set zmq_rcon_password "byqdescent" \
+set zmq_rcon_port $rconport \
+set zmq_stats_enable 1 \
+set zmq_stats_password "byqdescent" \
+set zmq_stats_port $gameport \
+set g_voteFlags "13320" \
+set sv_tags "helloy" \
+set basegt "ca" \
+set factory "ca" \
+set sv_mapPoolFile = "mappool_ca.txt" \
+set serverstartup "map campgrounds ca" \

