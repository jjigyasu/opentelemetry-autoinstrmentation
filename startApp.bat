set OTEL_METRICS_EXPORTER=otlp
set OTEL_TRACES_EXPORTER=none
set OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4317
set OTEL_METRIC_EXPORT_INTERVAL=5000
java -javaagent:opentelemetry-javaagent.jar -jar ./target/rest-service-complete-0.0.1-SNAPSHOT.jar --debug=true