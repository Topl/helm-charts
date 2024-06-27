{{/*
Expand the name of the chart.
*/}}
{{- define "bitcoin.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "bitcoin.fullname" -}}
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
{{- define "bitcoin.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "bitcoin.labels" -}}
helm.sh/chart: {{ include "bitcoin.chart" . }}
{{ include "bitcoin.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "bitcoin.selectorLabels" -}}
app.kubernetes.io/name: {{ include "bitcoin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "bitcoin.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "bitcoin.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the wallet secret name, or use the one specified
*/}}
{{- define "bitcoin.walletSecretName" -}}
{{- if .Values.wallet.existingSecret }}
{{- (.Values.wallet.existingSecret | lower | quote) }}
{{- else }}
{{- ((print .Values.service "-wallet-secret") | lower | quote) }}
{{- end }}
{{- end }}

{{/*
Set the default rpc username, or generate one.
*/}}
{{- define "bitcoin.rpcUsername" -}}
{{- if .Values.rpc.username }}
{{- (.Values.rpc.username | b64enc) }}
{{- else }}
{{- (randAlphaNum 32 | lower | b64enc) }}
{{- end }}
{{- end }}

{{/*
Set the default rpc password, or generate one.
*/}}
{{- define "bitcoin.rpcPassword" -}}
{{- if .Values.rpc.password }}
{{- (.Values.rpc.password | b64enc) }}
{{- else }}
{{- (randAlphaNum 32 | lower | b64enc) }}
{{- end }}
{{- end }}

{{/*
Set the default wallet passphrase, or generate one.
*/}}
{{- define "bitcoin.walletPassphrase" -}}
{{- if .Values.wallet.passphrase }}
{{- (.Values.wallet.passphrase | b64enc) }}
{{- else }}
{{- (randAlphaNum 32 | lower | b64enc) }}
{{- end }}
{{- end }}

{{/*
Convert args to a space separated string. Used for the init container.
*/}}
{{- define "bitcoin.args" -}}
{{- $list := list }}
{{- $list = append $list "-daemonwait" }}
{{- range .Values.args }}
{{- $list = append $list (printf "\"%s\"" .) }}
{{- end }}
{{- join " " $list }}
{{- end }}
