#!/bin/bash
ADDRESS="B62qj5Mv8tyQ7BSmAEeoHcTR1dwYpwxVy2GXSoajgSfyM3uUDUAiR6R"
ID="485873863"
TOKEN_BOT="5509813677:AAHUX7kAMuW0aF1Zx3NDq5ZxzUx6yJWXHZM"

while true
do
clear
cd ~
global_block=$(cd && mina client status | grep "Global number of accounts" | awk '{ print $5 }')
block_node=${global_block}
block=$(cd && mina client status | grep "Block height" | awk '{ print $3 }')
block_height=${block}
status_node=$(cd && mina client status | grep "Sync status" | awk '{ print $3 }')
status=${status_node}
produce=$(cd && mina client status | grep "Next block will be produced in" | awk '{ print $13 }')
block_produce=${produce}
IP=$(cd && mina client status | grep " External IP" | awk '{ print $3 }')
IP_Eksternal=${IP}
AKTIF=" ✅ NODE STATUS MINA : $ADDRESS Aktif "\==" Global number of Accounts: $block_node "\==" Block height: $block_height "\==" Sync status: $status "\==" Next block will be produced in: $block_produce "\==" External IP: $IP_Eksternal "
        curl -s -X POST "https://api.telegram.org/bot$TOKEN_BOT/sendmessage" -d "chat_id=$ID" -d "parse_mode=html" -d "text=$AKTIF"
   printf "sleep"
       for((sec=0; sec<1800; sec++))
       do
              printf "."
               sleep 1
     done
       printf "\n"
done
