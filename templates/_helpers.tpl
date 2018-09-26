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

{{- define "confluent.schema_registry.servicename" -}}
{{- if .Values.schema_registry.service_name -}}
{{- .Values.schema_registry.service_name -}}
{{- else -}}
{{- template "confluent.schema_registry.fullname" . -}}
{{- end -}}
{{- end -}}

{{- define "confluent.schema_registry.serviceaccountname" -}}
{{- if .Values.schema_registry.serviceaccount_name -}}
{{- .Values.schema_registry.serviceaccount_name -}}
{{- else -}}
{{- template "confluent.schema_registry.fullname" . -}}
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

{{- define "confluent.rest_proxy.servicename" -}}
{{- if .Values.rest_proxy.service_name -}}
{{- .Values.rest_proxy.service_name -}}
{{- else -}}
{{- template "confluent.rest_proxy.fullname" . -}}
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


