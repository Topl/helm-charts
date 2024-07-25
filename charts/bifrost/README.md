# bifrost

![Version: 0.2.7](https://img.shields.io/badge/Version-0.2.7-informational?style=flat-square) ![AppVersion: 2.0.0-beta3](https://img.shields.io/badge/AppVersion-2.0.0--beta3-informational?style=flat-square)

A Helm chart for Bifrost, the Apparatus blockchain node built for good.

**Homepage:** <https://apparatus.live>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| apparatus |  | <https://github.com/Topl> |

## Source Code

* <https://github.com/Topl/helm-charts>
* <https://topl.github.io/helm-charts>

## Requirements

Kubernetes: `>=1.23.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
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
| image.imagePullPolicy | string | `"Always"` |  |
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
| istio.ingress.gateways[0] | string | `"istio-gateways/gateway"` |  |
| istio.ingress.host | string | `"bifrost.example.com"` |  |
| istio.ingress.redirectHosts | list | `[]` |  |
| istio.outlierDetection | object | `{}` |  |
| istio.overallTimeout | string | `nil` |  |
| istio.rateLimiting.p2p.enabled | bool | `false` |  |
| istio.rateLimiting.p2p.fill_interval | string | `"60s"` |  |
| istio.rateLimiting.p2p.max_tokens | int | `5000` |  |
| istio.rateLimiting.p2p.tokens_per_fill | int | `5000` |  |
| istio.rateLimiting.rpc.enabled | bool | `false` |  |
| istio.rateLimiting.rpc.fill_interval | string | `"60s"` |  |
| istio.rateLimiting.rpc.max_tokens | int | `5000` |  |
| istio.rateLimiting.rpc.tokens_per_fill | int | `5000` |  |
| istio.retries | object | `{}` |  |
| istio.virtualServiceRoutes.http[0].matchPrefix | list | `[]` |  |
| istio.virtualServiceRoutes.http[0].port | int | `443` |  |
| istio.virtualServiceRoutes.http[0].targetPort | int | `9084` |  |
| istio.virtualServiceRoutes.tcp[0].matchPrefix | list | `[]` |  |
| istio.virtualServiceRoutes.tcp[0].port | int | `9085` |  |
| istio.virtualServiceRoutes.tcp[0].targetPort | int | `9085` |  |
| maxUnavailable | int | `1` |  |
| metrics.enabled | bool | `false` |  |
| metrics.scrapeTimeout | string | `""` | Prometheus ServiceMonitor scrapeTimeout. If empty, Prometheus uses the global scrape timeout unless it is less than the target's scrape interval value in which the latter is used. |
| metrics.service.portName | string | `"http-metrics"` |  |
| metrics.service.servicePort | int | `9095` |  |
| metrics.service.type | string | `"ClusterIP"` |  |
| metrics.serviceMonitor.enabled | bool | `true` |  |
| metrics.serviceMonitor.interval | string | `"30s"` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.scheme | string | `""` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| networkPolicy.enabled | bool | `false` |  |
| nodeSelector | object | `{}` |  |
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
| ports[2].name | string | `"http-metrics"` |  |
| ports[2].port | int | `9095` |  |
| ports[2].targetPort | int | `9095` |  |
| probes.readinessProbe.grpc.port | int | `9084` |  |
| probes.readinessProbe.timeoutSeconds | int | `20` |  |
| probes.startupProbe.failureThreshold | int | `30` |  |
| probes.startupProbe.grpc.port | int | `9084` |  |
| probes.startupProbe.timeoutSeconds | int | `20` |  |
| replicaCount | int | `1` |  |
| resources.limits.ephemeral-storage | string | `"500Mi"` |  |
| resources.limits.memory | string | `"3Gi"` |  |
| resources.requests.cpu | string | `"25m"` |  |
| resources.requests.memory | string | `"3Gi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| service | string | `"bifrost-node"` |  |
| serviceAccount.automountToken | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"bifrost-node"` |  |
| serviceType | string | `"ClusterIP"` |  |
| system | string | `"bifrost-node"` |  |
| tolerations | list | `[]` |  |
| version | int | `1` |  |
| volume.mountDirectory | string | `"/mnt/bifrost/"` |  |
| volume.storageClass | string | `nil` |  |
| volume.storageSize | string | `"10Gi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
