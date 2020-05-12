eval $(minikube docker-env)
minikube addons enable ingress
docker build -t kibanav1 -f kibanadockerfile .
docker build -t appv1 -f appdockerfile .
docker build -t dbv1 -f dbdockerfile .
docker build -t elstv1 -f elasticdockerfile .
minikube ssh 'sudo sysctl -w vm.max_map_count=262144'
