{{/*
Expand the name of the chart.
*/}}
{{- define "bifrost.daml.broker.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "bifrost.daml.broker.config.name" -}}
{{- include "bifrost.daml.broker.name"  . | printf "%s-config" -}}
{{- end -}}
{{- define "bifrost.daml.broker.secret.name" -}}
{{- include "bifrost.daml.broker.name"  . | printf "%s-secret" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "bifrost.daml.broker.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "bifrost.daml.broker.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "bifrost.daml.broker.labels" -}}
helm.sh/chart: {{ include "bifrost.daml.broker.chart" . }}
{{ include "bifrost.daml.broker.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "bifrost.daml.broker.selectorLabels" -}}
app.kubernetes.io/name: {{ include "bifrost.daml.broker.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "bifrost.daml.broker.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "bifrost.daml.broker.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the parameters to use
*/}}
{{- define "bifrost.daml.broker.daml.settings" -}}
{{- if eq .Values.damlEnv "damlhub" -}}
daml-host: {{ printf "%s.daml.app" .Values.damlDamlHubEnvConfig.ledgerId}}
daml-port: "{{ .Values.damlDamlHubEnvConfig.damlPort }}"
daml-secure: "{{ .Values.damlDamlHubEnvConfig.damlSecure }}"
is-daml-hub: "true"
{{- else -}}
daml-host: {{ .Values.damlClusterEnvConfig.damlHost}}
daml-port: "{{ .Values.damlClusterEnvConfig.damlPort }}"
daml-secure: "{{ .Values.damlClusterEnvConfig.damlSecure }}"
is-daml-hub: "false"
{{- end -}}
{{- end -}}

{{- define "bifrost.daml.broker.topl.settings" -}}
 {{- if eq .Values.toplEnv "valhalla" -}}
network: {{ .Values.toplValhallaNetworkConfig.network }}
bifrost-url: {{ .Values.toplValhallaNetworkConfig.bifrostUrl }}
{{- else -}}
network: {{ .Values.toplClusterNetworkConfig.network}}
bifrost-url: {{ .Values.toplClusterNetworkConfig.bifrostUrl }}
{{- end -}}   
{{- end -}}