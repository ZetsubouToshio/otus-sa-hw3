# Добавить репозитории
```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update
```
# Установка Prometheus 
```
helm install prom prometheus-community/kube-prometheus-stack -f values.yaml --atomic
```
