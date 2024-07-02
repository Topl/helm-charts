{{/*
ui fullname
*/}}
{{- define "btc-bridge.ui.fullname" -}}
{{ include "btc-bridge.fullname" . }}-ui
{{- end }}

{{/*
ui common labels
*/}}
{{- define "btc-bridge.ui.labels" -}}
{{ include "btc-bridge.labels" . }}
app.kubernetes.io/component: ui
{{- end }}

{{/*
ui selector labels
*/}}
{{- define "btc-bridge.ui.selectorLabels" -}}
{{ include "btc-bridge.selectorLabels" . }}
app.kubernetes.io/component: ui
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "btc-bridge.ui.serviceAccountName" -}}
{{- if .Values.ui.serviceAccount.create }}
{{- default (include "btc-bridge.ui.fullname" .) .Values.ui.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.ui.serviceAccount.name }}
{{- end }}
{{- end }}
