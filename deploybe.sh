kubectl apply -f secrets
kubectl apply -f deployments/deployment-api-feed.yaml
kubectl apply -f services/service-api-feed.yaml
kubectl apply -f deployments/deployment-api-user.yaml
kubectl apply -f services/service-api-user.yaml
kubectl apply -f deployments/deployment-reverseproxy.yaml
kubectl apply -f services/service-reverseproxy.yaml

kubectl expose deployment udagram-reverseproxy --type=LoadBalancer --name=publicreverseproxy --port=8080 --target-port=8080