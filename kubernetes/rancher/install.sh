kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.12/deploy/manifests/00-crds.yaml

kubectl create namespace cert-manager

helm repo add jetstack https://charts.jetstack.io

helm repo update

helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --version v0.12.0

kubectl get pods --namespace cert-manager

helm install rancher rancher-stable/rancher \
  --namespace cattle-system \
  --set hostname=rancher.my.org

kubectl -n cattle-system rollout status deploy/rancher

kubectl -n cattle-system rollout status deploy/rancher

kubectl -n cattle-system get deploy rancher
