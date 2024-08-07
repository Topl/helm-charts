# bifrost-consensus-testnet

![Version: 0.1.5](https://img.shields.io/badge/Version-0.1.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: dev](https://img.shields.io/badge/AppVersion-dev-informational?style=flat-square)

Launches a private testnet using configurable nodes and artificial throttling.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| args | list | `[]` |  |
| bigBang.delayMs | string | `nil` |  |
| bigBang.timestamp | string | `nil` |  |
| command | string | `nil` |  |
| configs | object | `{}` |  |
| delayerImage.name | string | `"us-central1-docker.pkg.dev/topl-shared-project-dev/topl-artifacts-dev/network-delayer"` |  |
| delayerImage.tag | string | `nil` |  |
| image.name | string | `"ghcr.io/topl/bifrost-node"` |  |
| image.tag | string | `nil` |  |
| livenessProbe.enabled | bool | `false` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `60` |  |
| livenessProbe.timeoutSeconds | int | `30` |  |
| name | string | `"bifrost-consensus-testnet"` |  |
| orchestratorImage.name | string | `"us-central1-docker.pkg.dev/topl-shared-project-dev/topl-artifacts-dev/testnet-simulation-orchestrator"` |  |
| orchestratorImage.tag | string | `"latest"` |  |
| podSecurityContext.fsGroup | int | `0` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `1001` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| rbac.create | bool | `true` |  |
| readinessProbe.enabled | bool | `false` |  |
| readinessProbe.initialDelaySeconds | int | `30` |  |
| readinessProbe.periodSeconds | int | `60` |  |
| readinessProbe.timeoutSeconds | int | `30` |  |
| resources.networkDelayer.limits.cpu | string | `"800m"` |  |
| resources.networkDelayer.limits.memory | string | `"768Mi"` |  |
| resources.networkDelayer.requests.cpu | string | `"200m"` |  |
| resources.networkDelayer.requests.memory | string | `"768Mi"` |  |
| resources.node.limits.cpu | string | `"2000m"` |  |
| resources.node.limits.memory | string | `"1000Mi"` |  |
| resources.node.requests.cpu | string | `"1000m"` |  |
| resources.node.requests.memory | string | `"1000Mi"` |  |
| resources.orchestrator.limits.cpu | string | `"1500m"` |  |
| resources.orchestrator.limits.memory | string | `"1500Mi"` |  |
| resources.orchestrator.requests.cpu | string | `"500m"` |  |
| resources.orchestrator.requests.memory | string | `"1500Mi"` |  |
| results.bucket | string | `nil` |  |
| results.prefix | string | `"/simulation/results/"` |  |
| scenario.targetHeight | int | `30` |  |
| scenario.timeout | string | `"10 minutes"` |  |
| scenario.transactionsPerSecond | float | `2` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| service.ports.p2p | int | `9085` |  |
| service.ports.rpc | int | `9084` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"bifrost-orchestrator-account"` |  |
| shared-config | object | `{}` |  |
| volume.mountDirectory | string | `"/opt/docker/.bifrost"` |  |
| volume.storageClass | string | `nil` |  |
| volume.storageSize | string | `"1Gi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
