#exit out of screen
screen -S wart_miner -X quit
#download if necessary and run miner
wallet=walletaddress.'"$HOSTNAME"'
cd /home/user
wget -nc https://github.com/CoinFuMasterShifu/janusminer/releases/download/0.2.7/janusminer_hiveos-0.2.7.tgz
rm -r /home/user/janusminer_hiveos/*
tar xzvf janusminer_hiveos-0.2.7.tgz
/hive/sbin/amd-oc
screen -dmS wart_miner bash -c  "while true; do /home/user/janusminer_hiveos/wart-miner -u $wallet -h nodeipaddressvar -p nodeipport --threads=12 --gpus=0 2>&1 | tee /var/log/janusminer_hiveos.log; done"

