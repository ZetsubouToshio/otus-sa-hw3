# Подготовка среды
## Вырубить валидацию для ingress
```
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
```

# Порядок установки
* app
* prometheus
* nginx-ingress

# Подергать дашборды сервисов мониторинга:
## Prometheus
```
kubectl --namespace monitoring port-forward --address 0.0.0.0 svc/prometheus-kube-prometheus-prometheus 39090:9090
```
## Grafana
```
kubectl --namespace monitoring port-forward --address 0.0.0.0 svc/prometheus-grafana 30080:80 
```
user: admin
pass: prom-operator
# Импорт дашборда в Grafana
