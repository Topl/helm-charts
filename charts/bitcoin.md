1. When bitcoin node restarts, it needs to reload the wallet. 
    1. `init-container`needs to check if the wallet exists, if not create it. Otherwise, reload the wallet.
    2. RCP command, probably use `init-container`. 
2. `CronJob` needs to packaged with the `bitcoin-node` helm deployment.

