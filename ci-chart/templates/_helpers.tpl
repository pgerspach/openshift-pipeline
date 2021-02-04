{{- define "chart.appName" -}}
{{ $prefix := printf "%s" .Values.sourceRepository | regexFind "^.+/"}}
{{- printf "%s" .Values.sourceRepository | trimPrefix $prefix | replace "_" "-" | trimSuffix ".git" -}}
{{- end -}}
