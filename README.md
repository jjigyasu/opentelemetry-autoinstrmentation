# opentelemetry-autoinstrumentation

mvn spring-boot:build-image -Dspring-boot.build-image.imageName=sample-app -Dmaven.test.skip=true

kubectl create deployment zipkin --image openzipkin/zipkin
kubectl expose deployment zipkin --type ClusterIP --port 9411
