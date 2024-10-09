kubectl apply -f deployments/deployment-frontend.yaml
kubectl apply -f services/service-frontend.yaml
kubectl expose deployment udagram-frontend --type=LoadBalancer --name=publicfrontend --port=80 --target-port=80