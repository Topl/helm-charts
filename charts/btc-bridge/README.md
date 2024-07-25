# btc-bridge

![Version: 0.1.7](https://img.shields.io/badge/Version-0.1.7-informational?style=flat-square) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat-square)

Helm Chart for deploying the Apparatus BTC Bridge.

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
| backend.args[0] | string | `"--topl-host"` |  |
| backend.args[10] | string | `"--topl-wallet-db"` |  |
| backend.args[11] | string | `"/mnt/btc-bridge/topl-wallet.db"` |  |
| backend.args[12] | string | `"--topl-wallet-seed-file"` |  |
| backend.args[13] | string | `"/mnt/btc-bridge/topl-keyfile.json"` |  |
| backend.args[1] | string | `"localhost"` |  |
| backend.args[2] | string | `"--topl-port"` |  |
| backend.args[3] | string | `"9084"` |  |
| backend.args[4] | string | `"--topl-secure"` |  |
| backend.args[5] | string | `"false"` |  |
| backend.args[6] | string | `"--topl-network"` |  |
| backend.args[7] | string | `"private"` |  |
| backend.args[8] | string | `"--btc-network"` |  |
| backend.args[9] | string | `"regtest"` |  |
| backend.autoscaling.enabled | bool | `false` |  |
| backend.autoscaling.maxReplicas | int | `10` |  |
| backend.autoscaling.minReplicas | int | `1` |  |
| backend.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| backend.command | string | `nil` |  |
| backend.env[0].name | string | `"_JAVA_OPTIONS"` |  |
| backend.env[0].value | string | `"-XX:MaxRAMPercentage=70.0 -XX:ActiveProcessorCount=4"` |  |
| backend.env[1].name | string | `"TOPL_WALLET_PASSWORD"` |  |
| backend.env[1].value | string | `"password"` |  |
| backend.image.imagePullPolicy | string | `"Always"` |  |
| backend.image.repository | string | `"ghcr.io/topl/topl-btc-bridge"` |  |
| backend.image.tag | string | `""` |  |
| backend.initWallet.enabled | bool | `false` |  |
| backend.initWallet.image | string | `"dacr/coursier-launcher:openjdk-11"` |  |
| backend.istio.enabled | bool | `false` |  |
| backend.istio.ingress.gateways[0] | string | `"istio-gateways/gateway"` |  |
| backend.istio.ingress.host | string | `"bridge.example.com"` |  |
| backend.istio.ingress.matchPrefix[0] | string | `"/"` |  |
| backend.istio.ingress.redirectHosts | list | `[]` |  |
| backend.istio.outlierDetection | object | `{}` |  |
| backend.istio.overallTimeout | string | `nil` |  |
| backend.istio.rateLimiting.tcp.enabled | bool | `true` |  |
| backend.istio.rateLimiting.tcp.fill_interval | string | `"60s"` |  |
| backend.istio.rateLimiting.tcp.max_tokens | int | `5000` |  |
| backend.istio.rateLimiting.tcp.tokens_per_fill | int | `5000` |  |
| backend.istio.retries | object | `{}` |  |
| backend.istio.virtualServiceRoutes.http[0].matchPrefix | list | `[]` |  |
| backend.istio.virtualServiceRoutes.http[0].port | int | `443` |  |
| backend.istio.virtualServiceRoutes.http[0].targetPort | int | `4000` |  |
| backend.maxUnavailable | int | `1` |  |
| backend.networkPolicy.enabled | bool | `false` |  |
| backend.nodeSelector | object | `{}` |  |
| backend.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| backend.persistence.enabled | bool | `true` |  |
| backend.persistence.finalizers[0] | string | `"kubernetes.io/pvc-protection"` |  |
| backend.persistence.matchLabels | bool | `false` |  |
| backend.persistence.mountPath | string | `"/mnt/btc-bridge/"` |  |
| backend.persistence.storageClassName | string | `nil` |  |
| backend.persistence.storageSize | string | `"10Gi"` |  |
| backend.podSecurityContext.fsGroup | int | `0` |  |
| backend.podSecurityContext.runAsGroup | int | `0` |  |
| backend.podSecurityContext.runAsUser | int | `1001` |  |
| backend.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| backend.podSecurityContext.supplementalGroups[0] | int | `0` |  |
| backend.ports[0].name | string | `"https-svc"` |  |
| backend.ports[0].port | int | `4000` |  |
| backend.ports[0].targetPort | int | `4000` |  |
| backend.probes.livenessProbe.httpGet.path | string | `"/"` |  |
| backend.probes.livenessProbe.httpGet.port | int | `4000` |  |
| backend.probes.livenessProbe.initialDelaySeconds | int | `30` |  |
| backend.probes.readinessProbe.httpGet.path | string | `"/"` |  |
| backend.probes.readinessProbe.httpGet.port | int | `4000` |  |
| backend.probes.readinessProbe.timeoutSeconds | int | `10` |  |
| backend.replicaCount | int | `1` |  |
| backend.resources.limits.ephemeral-storage | string | `"500Mi"` |  |
| backend.resources.limits.memory | string | `"3Gi"` |  |
| backend.resources.requests.cpu | string | `"50m"` |  |
| backend.resources.requests.memory | string | `"3Gi"` |  |
| backend.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| backend.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| backend.securityContext.readOnlyRootFilesystem | bool | `false` |  |
| backend.service | string | `"btc-bridge"` |  |
| backend.serviceAccount.automountToken | bool | `false` |  |
| backend.serviceAccount.create | bool | `true` |  |
| backend.serviceAccount.name | string | `"btc-bridge"` |  |
| backend.serviceType | string | `"NodePort"` |  |
| service | string | `"btc-bridge"` |  |
| system | string | `"btc-bridge"` |  |
| ui.autoscaling.maxReplicas | int | `5` |  |
| ui.autoscaling.minReplicas | int | `1` |  |
| ui.autoscaling.targetAverageCpuUtilization | int | `80` |  |
| ui.configMap.content | string | `"worker_processes  auto;\nerror_log  /tmp/nginx/error.log warn;\npid        /tmp/nginx/nginx.pid;\nevents {\n    worker_connections  1024;\n}\nhttp {\n    default_type  application/octet-stream;\n    log_format  main  '$remote_addr - $remote_user [$time_local] \"$request\" '\n                      '$status $body_bytes_sent \"$http_referer\" '\n                      '\"$http_user_agent\" \"$http_x_forwarded_for\"';\n    access_log  /var/log/nginx/access.log  main;\n    sendfile        on;\n    #tcp_nopush     on;\n    keepalive_timeout  65;\n    #gzip  on;\n    include /etc/nginx/conf.d/*.conf;\n    server {\n      listen 9999;\n      root /usr/share/nginx/html;\n      location /healthz {\n        access_log          off;\n        return              200;\n      }\n    }\n}\n"` |  |
| ui.configMap.fileName | string | `"nginx.conf"` |  |
| ui.configMap.mountPath | string | `"/etc/nginx"` |  |
| ui.enabled | bool | `true` |  |
| ui.image.imagePullPolicy | string | `"IfNotPresent"` |  |
| ui.image.repository | string | `"ghcr.io/topl/bridge-ui"` |  |
| ui.image.tag | string | `"0.0.0-9046a70"` |  |
| ui.istio.annotations | object | `{}` |  |
| ui.istio.enabled | bool | `false` |  |
| ui.istio.ingress.gateways[0] | string | `"istio-gateways/gateway"` |  |
| ui.istio.ingress.host | string | `"annulus.example.com"` |  |
| ui.istio.ingress.redirectHosts | list | `[]` |  |
| ui.istio.outlierDetection | object | `{}` |  |
| ui.istio.overallTimeout | string | `nil` |  |
| ui.istio.rateLimiting.http.enabled | bool | `false` |  |
| ui.istio.rateLimiting.http.fill_interval | string | `"60s"` |  |
| ui.istio.rateLimiting.http.max_tokens | int | `5000` |  |
| ui.istio.rateLimiting.http.tokens_per_fill | int | `5000` |  |
| ui.istio.retries | object | `{}` |  |
| ui.istio.virtualServiceRoutes.http[0].matchPrefix | list | `[]` |  |
| ui.istio.virtualServiceRoutes.http[0].port | int | `443` |  |
| ui.istio.virtualServiceRoutes.http[0].targetPort | int | `9999` |  |
| ui.maxUnavailable | int | `1` |  |
| ui.networkPolicy.enabled | bool | `true` |  |
| ui.podSecurityContext.fsGroup | int | `101` |  |
| ui.podSecurityContext.runAsGroup | int | `101` |  |
| ui.podSecurityContext.runAsUser | int | `101` |  |
| ui.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| ui.podSecurityContext.supplementalGroups[0] | int | `101` |  |
| ui.ports[0].name | string | `"https-svc"` |  |
| ui.ports[0].port | int | `9999` |  |
| ui.ports[0].targetPort | int | `9999` |  |
| ui.probes.livenessProbe.httpGet.path | string | `"/healthz"` |  |
| ui.probes.livenessProbe.httpGet.port | int | `9999` |  |
| ui.probes.livenessProbe.initialDelaySeconds | int | `30` |  |
| ui.probes.readinessProbe.httpGet.path | string | `"/healthz"` |  |
| ui.probes.readinessProbe.httpGet.port | int | `9999` |  |
| ui.probes.readinessProbe.timeoutSeconds | int | `10` |  |
| ui.replicaCount | int | `1` |  |
| ui.resources.limits.cpu | string | `"250m"` |  |
| ui.resources.limits.ephemeral-storage | string | `"500Mi"` |  |
| ui.resources.limits.memory | string | `"500Mi"` |  |
| ui.resources.requests.cpu | string | `"200m"` |  |
| ui.resources.requests.memory | string | `"32Mi"` |  |
| ui.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| ui.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| ui.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| ui.service | string | `"bridge-ui"` |  |
| ui.serviceAccount.automountToken | bool | `false` |  |
| ui.serviceAccount.create | bool | `true` |  |
| ui.serviceAccount.name | string | `"bridge-ui"` |  |
| ui.serviceType | string | `"NodePort"` |  |
| ui.system | string | `"bridge-ui"` |  |
| ui.version | int | `1` |  |
| version | int | `1` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
