{{/*
backend fullname
*/}}
{{- define "btc-bridge.backend.fullname" -}}
{{ include "btc-bridge.fullname" . }}-backend
{{- end }}

{{/*
backend common labels
*/}}
{{- define "btc-bridge.backend.labels" -}}
{{ include "btc-bridge.labels" . }}
app.kubernetes.io/component: backend
{{- end }}

{{/*
backend selector labels
*/}}
{{- define "btc-bridge.backend.selectorLabels" -}}
{{ include "btc-bridge.selectorLabels" . }}
app.kubernetes.io/component: backend
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "btc-bridge.backend.serviceAccountName" -}}
{{- if .Values.backend.serviceAccount.create }}
{{- default (include "btc-bridge.backend.fullname" .) .Values.backend.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.backend.serviceAccount.name }}
{{- end }}
{{- end }}
