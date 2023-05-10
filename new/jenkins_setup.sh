#Jekins
kubectl create namespace jenkins
kubectl apply -f ./jenkins/serviceAccount.yaml
kubectl create -f ./jenkins/volume.yaml
kubectl apply -f ./jenkins/deployment.yaml
kubectl apply -f ./jenkins/service.yaml
