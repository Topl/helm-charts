# vertx

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for Vertx, a NodeJS fast-gateway application for authenticating, rate-limiting, and routing to Topl services.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| backendConfig.checkIntervalSec | int | `60` |  |
| backendConfig.enabled | bool | `true` |  |
| backendConfig.requestPath | string | `"/healthz"` |  |
| backendConfig.type | string | `"HTTPS"` |  |
| common.maxSurge | int | `1` |  |
| common.maxUnavailable | int | `1` |  |
| common.updateStrategy | string | `"RollingUpdate"` |  |
| configMap.create | bool | `true` |  |
| configMap.data.HEALTH_CHECK_PORT | int | `8100` |  |
| configMap.data.LOGGING_HOST | string | `"log.topl.tech"` |  |
| configMap.data.LOGGING_PORT | int | `12201` |  |
| configMap.data.LOGGING_PROTOCOL | string | `"tcp"` |  |
| configMap.data.MAINNET_TARGET_URI | string | `"https://main.torus.topl.network"` |  |
| configMap.data.NODE_ENV | string | `"dev"` |  |
| configMap.data.PORT | int | `2376` |  |
| configMap.data.VALHALLA_TARGET_URI | string | `"https://valhalla.torus.topl.network"` |  |
| configMap.name | string | `"vertx-config-dev"` |  |
| fullnameOverride | string | `""` |  |
| healthCheck.livenessProbe.enabled | bool | `true` |  |
| healthCheck.livenessProbe.initialDelaySeconds | int | `150` |  |
| healthCheck.livenessProbe.path | string | `"/healthz"` |  |
| healthCheck.livenessProbe.periodSeconds | int | `60` |  |
| healthCheck.livenessProbe.timeoutSeconds | int | `30` |  |
| healthCheck.portName | string | `"health-check"` |  |
| healthCheck.readinessProbe.enabled | bool | `true` |  |
| healthCheck.readinessProbe.initialDelaySeconds | int | `150` |  |
| healthCheck.readinessProbe.path | string | `"/healthz"` |  |
| healthCheck.readinessProbe.periodSeconds | int | `60` |  |
| healthCheck.readinessProbe.timeoutSeconds | int | `30` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"us-central1-docker.pkg.dev/topl-shared-project-dev/topl-artifacts-dev/vertx"` |  |
| image.tag | string | `"latest-prod"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"dev.vertx.topl.services"` |  |
| ingress.hosts[0].paths[0].path | string | `"/*"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.hosts[0].paths[0].serviceName | string | `"vertx-svc-dev"` |  |
| ingress.hosts[0].paths[0].servicePort | int | `2376` |  |
| ingress.name | string | `"vertx-ingress"` |  |
| ingress.tls[0].hosts[0] | string | `"dev.vertx.topl.services"` |  |
| ingress.tls[0].secretName | string | `"vertx-tls-dev"` |  |
| nameOverride | string | `""` |  |
| networkPolicy.enabled | bool | `true` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| redis.configMap.conf | string | `"# Enable AOF https://redis.io/topics/persistence#append-only-file\nappendonly yes\nmaxclients 10000\n# Disable RDB persistence, AOF persistence already enabled.\nsave \"\""` |  |
| redis.configMap.create | bool | `true` |  |
| redis.configMap.name | string | `"redis-config-dev"` |  |
| redis.configMap.redisUrl | string | `"redis://vertx-redis-svc-dev:6379"` |  |
| redis.image.imagePullPolicy | string | `"IfNotPresent"` |  |
| redis.image.repository | string | `"redis"` |  |
| redis.image.tag | string | `"latest"` |  |
| redis.name | string | `"vertx-redis-dev"` |  |
| redis.port | int | `6379` |  |
| redis.replicaCount | int | `1` |  |
| redis.service.name | string | `"vertx-redis-svc-dev"` |  |
| redis.volume.accessModes[0] | string | `"ReadWriteOnce"` |  |
| redis.volume.mountPath | string | `"/opt/redis/data"` |  |
| redis.volume.storageClass | string | `"standard"` |  |
| redis.volume.storageSize | string | `"1Gi"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secret.create | bool | `false` |  |
| secret.name | string | `"vertx-secrets-dev"` |  |
| securityContext | object | `{}` |  |
| server.certificate.additionalHosts | list | `[]` | Certificate Subject Alternate Names (SANs) |
| server.certificate.domain | string | `"dev.vertx.topl.services"` | Certificate primary domain (commonName) |
| server.certificate.duration | string | `""` (defaults to 2160h = 90d if not specified) | The requested 'duration' (i.e. lifetime) of the certificate. # Ref: https://cert-manager.io/docs/usage/certificate/#renewal |
| server.certificate.enabled | bool | `true` | Deploy a Certificate resource (requires cert-manager) |
| server.certificate.issuer.group | string | `"cert-manager.io"` | Certificate issuer group. Set if using an external issuer. Eg. `cert-manager.io` |
| server.certificate.issuer.kind | string | `"ClusterIssuer"` | Certificate issuer kind. Either `Issuer` or `ClusterIssuer` |
| server.certificate.issuer.name | string | `"letsencrypt-prod"` | Certificate issuer name. Eg. `letsencrypt` |
| server.certificate.name | string | `"vertx-cert-dev"` |  |
| server.certificate.privateKey.algorithm | string | `"RSA"` | Algorithm used to generate certificate private key. One of: `RSA`, `Ed25519` or `ECDSA` |
| server.certificate.privateKey.encoding | string | `"PKCS1"` | The private key cryptography standards (PKCS) encoding for private key. Either: `PCKS1` or `PKCS8` |
| server.certificate.privateKey.rotationPolicy | string | `"Never"` | Rotation policy of private key when certificate is re-issued. Either: `Never` or `Always` |
| server.certificate.privateKey.size | int | `2048` | Key bit size of the private key. If algorithm is set to `Ed25519`, size is ignored. |
| server.certificate.renewBefore | string | `""` (defaults to 360h = 15d if not specified) | How long before the expiry a certificate should be renewed. # Ref: https://cert-manager.io/docs/usage/certificate/#renewal |
| server.certificate.secretName | string | `"vertx-tls-dev"` | The name of the Secret that will be automatically created and managed by this Certificate resource |
| service.annotations."cloud.google.com/neg" | string | `"{\"ingress\": true}"` |  |
| service.annotations.app-protocols | string | `"{\"https\":\"HTTPS\",\"http\":\"HTTP\"}"` |  |
| service.enabled | bool | `true` |  |
| service.http.port | int | `80` |  |
| service.http.portName | string | `"http"` |  |
| service.https.port | int | `443` |  |
| service.https.portName | string | `"https"` |  |
| service.name | string | `"vertx-svc-dev"` |  |
| service.port | int | `2376` |  |
| service.portName | string | `"vertx-dev"` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| volume.mountPath | string | `"/app/data"` |  |
| volume.tls.mountPath | string | `"/app/config/tls"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
