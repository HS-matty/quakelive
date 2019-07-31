#!/bin/bash
gameport=`expr $1 + 27965`
rconport=`expr $1 + 28965`
servernum=`expr $1 + 1`

exec /home/matty/steam/steamapps/common/qlds/run_server_x64.sh \
+set net_strict 1 \
+set net_port $gameport \
+set sv_hostname ">> FFA-$servernum @ [Frankfurt-1/DE] (ql.ebase.in)" \
+set fs_homepath /home/matty/.quakelive/$gameport \
+set zmq_rcon_enable 1 \
+set zmq_rcon_password "123456byqdescent123456" \
+set zmq_rcon_port $rconport \
+set zmq_stats_enable 1 \
+set zmq_stats_password "byqdescent123456" \
+set zmq_stats_port $gameport \
+set g_voteFlags "11272" \
+set sv_tags "helloy,Frankfurt,DE,ql.ebase.in,[de-1]" \
+set basegt "ffa" \
+set factory "ffa" \
+set fraglimit "100" \
+set sv_mapPoolFile "mappool_ffa.txt" \
+set serverstartup "map bloodrun ffa" \
+set sv_fps "40" \
+set com_hunkMegs "75" \
+set sv_altEntDir "noHMG" \

