# bifrost

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.0-beta2](https://img.shields.io/badge/AppVersion-2.0.0--beta2-informational?style=flat-square)

A Helm chart for Bifrost, the Topl blockchain node built for good.

**Homepage:** <https://topl.co>

## Source Code

* <https://github.com/Topl/helm-charts>
* <https://topl.github.io/helm-charts/>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| args[0] | string | `"--dataDir"` |  |
| args[1] | string | `"/bifrost/data"` |  |
| args[2] | string | `"--stakingDir"` |  |
| args[3] | string | `"/bifrost/staking"` |  |
| command | string | `nil` |  |
| configMap.content | string | `"bifrost:\n  big-bang:\n    type: public\n    genesis-id: b_6D8mXdqjsGrJbnXf6PqfWQrdTfKr3U5nbLGJGyYVgjqs\n    source-path: https://raw.githubusercontent.com/Topl/Genesis_Testnets/main/testnet0/\n"` |  |
| configMap.fileName | string | `"custom-config.yaml"` |  |
| configMap.mountPath | string | `"/config/bifrost-config"` |  |
| env[0].name | string | `"_JAVA_OPTIONS"` |  |
| env[0].value | string | `"-XX:MaxRAMPercentage=70.0 -XX:ActiveProcessorCount=4"` |  |
| image.imagePullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"toplprotocol/bifrost-node"` |  |
| image.tag | string | `""` |  |
| istio.annotations | object | `{}` |  |
| istio.corsPolicy.allowCredentials | bool | `true` |  |
| istio.corsPolicy.allowHeaders[0] | string | `"grpc-timeout"` |  |
| istio.corsPolicy.allowHeaders[10] | string | `"x-grpc-web"` |  |
| istio.corsPolicy.allowHeaders[1] | string | `"content-type"` |  |
| istio.corsPolicy.allowHeaders[2] | string | `"keep-alive"` |  |
| istio.corsPolicy.allowHeaders[3] | string | `"user-agent"` |  |
| istio.corsPolicy.allowHeaders[4] | string | `"cache-control"` |  |
| istio.corsPolicy.allowHeaders[5] | string | `"content-type"` |  |
| istio.corsPolicy.allowHeaders[6] | string | `"content-transfer-encoding"` |  |
| istio.corsPolicy.allowHeaders[7] | string | `"x-accept-content-transfer-encoding"` |  |
| istio.corsPolicy.allowHeaders[8] | string | `"x-accept-response-streaming"` |  |
| istio.corsPolicy.allowHeaders[9] | string | `"x-user-agent"` |  |
| istio.corsPolicy.allowMethods[0] | string | `"POST"` |  |
| istio.corsPolicy.allowMethods[1] | string | `"GET"` |  |
| istio.corsPolicy.allowMethods[2] | string | `"OPTIONS"` |  |
| istio.corsPolicy.allowMethods[3] | string | `"PUT"` |  |
| istio.corsPolicy.allowMethods[4] | string | `"DELETE"` |  |
| istio.corsPolicy.allowOrigins[0].regex | string | `".*"` |  |
| istio.corsPolicy.exposeHeaders[0] | string | `"grpc-status"` |  |
| istio.corsPolicy.exposeHeaders[1] | string | `"grpc-message"` |  |
| istio.corsPolicy.maxAge | string | `"24h"` |  |
| istio.createGrpcWebFilter | bool | `true` |  |
| istio.enabled | bool | `false` |  |
| istio.ingressGateway.host | string | `"tetra.testnet.torus.topl.tech"` |  |
| istio.ingressGateway.name | string | `"istio-gateways/bifrost-gateway"` |  |
| istio.outlierDetection | object | `{}` |  |
| istio.overallTimeout | string | `nil` |  |
| istio.retries | object | `{}` |  |
| istio.virtualServiceRoutes.http[0].matchPrefix | list | `[]` |  |
| istio.virtualServiceRoutes.http[0].port | int | `443` |  |
| istio.virtualServiceRoutes.http[0].targetPort | int | `9084` |  |
| istio.virtualServiceRoutes.tcp[0].matchPrefix | list | `[]` |  |
| istio.virtualServiceRoutes.tcp[0].port | int | `9085` |  |
| istio.virtualServiceRoutes.tcp[0].targetPort | int | `9085` |  |
| maxUnavailable | int | `1` |  |
| networkPolicy.enabled | bool | `true` |  |
| nodeSelector | list | `[]` |  |
| podSecurityContext.fsGroup | int | `0` |  |
| podSecurityContext.runAsGroup | int | `0` |  |
| podSecurityContext.runAsUser | int | `1001` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| ports[0].name | string | `"http2"` |  |
| ports[0].port | int | `9084` |  |
| ports[0].targetPort | int | `9084` |  |
| ports[1].name | string | `"tcp-p2p"` |  |
| ports[1].port | int | `9085` |  |
| ports[1].targetPort | int | `9085` |  |
| probes.readinessProbe.grpc.port | int | `9084` |  |
| probes.readinessProbe.timeoutSeconds | int | `20` |  |
| probes.startupProbe.failureThreshold | int | `30` |  |
| probes.startupProbe.grpc.port | int | `9084` |  |
| probes.startupProbe.timeoutSeconds | int | `20` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.ephemeral-storage | string | `"500Mi"` |  |
| resources.limits.memory | string | `"4000Mi"` |  |
| resources.requests.cpu | string | `"1000m"` |  |
| resources.requests.memory | string | `"4000Mi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| service | string | `"bifrost-node"` |  |
| serviceAccount.automountToken | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"bifrost-node"` |  |
| serviceType | string | `"ClusterIP"` |  |
| system | string | `"bifrost-node"` |  |
| version | int | `1` |  |
| volume.mountDirectory | string | `"/mnt/bifrost/"` |  |
| volume.storageClass | string | `nil` |  |
| volume.storageSize | string | `"10Gi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.12.0](https://github.com/norwoodj/helm-docs/releases/v1.12.0)
