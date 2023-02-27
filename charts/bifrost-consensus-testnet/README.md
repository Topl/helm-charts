# Usage
1. Copy file `override-example.yaml` into `override.yaml`.  Update values accordingly.
1. Install the helm chart: `helm install -f /path/to/override.yaml --create-namespace --namespace scenario1 scenario1 ./bifrost-consensus-testnet`
   1. To capture output from the orchestrator: `(DEMO_NAME=your-demo-name; helm upgrade --install -f ./charts/bifrost-consensus-testnet/examples/testnet-simple.yaml --namespace $DEMO_NAME --create-namespace $DEMO_NAME ./charts/bifrost-consensus-testnet/ &&  kubectl wait --timeout=-1s --for=condition=Ready pod/$DEMO_NAME-bifrost-consensus-testnet-orchestrator -n $DEMO_NAME && kubectl logs --follow $DEMO_NAME-bifrost-consensus-testnet-orchestrator -n $DEMO_NAME)`
2. Observe the logs of each node the Kubernetes cluster in the `your-demo-name` namespace
3. Terminate the scenario using  `helm delete -n your-demo-name your-demo-name`
