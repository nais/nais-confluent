{{- define "confluent.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "confluent.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if ne $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "confluent.schema_registry.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if ne $name .Release.Name -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.schema_registry.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" $name .Values.schema_registry.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "confluent.topics_ui.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if ne $name .Release.Name -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.topics_ui.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" $name .Values.topics_ui.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "confluent.rest_proxy.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if ne $name .Release.Name -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.rest_proxy.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" $name .Values.rest_proxy.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}


