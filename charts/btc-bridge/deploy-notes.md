## Make the node sleep so we can copy files:
command:
  - "sleep"
args:
  - "infinity"

## Copy the walletdb
kubectl cp -n bridge /home/rick-topl/dev/topl/topl-btc-bridge/topl-btc-bridge/src/universal/topl-wallet.db btc-bridge-0:/mnt/btc-bridge/topl-wallet.db

