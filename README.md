apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-get update -y
apt-get install docker.io -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' | sudo tee /etc/apt/sources.list.d/kubernetes.list
apt-get update -y
apt-get install kubelet kubeadm kubectl -y
swapoff -a
kubeadm init
###########################################################
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
###########################################################
mkdir -p /root/.kube
sudo cp -i /etc/kubernetes/admin.conf /root/.kube/config
sudo chown $(id -u):$(id -g) /root/.kube/config
###########################################################
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl taint nodes --all node-role.kubernetes.io/master-
##########################################################
echo 3 > /proc/sys/vm/drop_caches

dockerd --config-file /etc/docker/daemon.json

curl http://localhost:8001/api/v1/namespaces/default/pods/dapi-envars-fieldref

docker --insecure-registry xxxxx.com 8 login xxxxx.com 8

====================================================================
 kubeadm join 10.0.2.15:6443 --token dcrj0w.f70848elqwiwepym --discovery-token-ca-cert-hash sha256:123b126df08b16affa847d11313eedd778d00d7d58093edb85b68cb2f9d07619
 
 kubectl create secret docker-registry regcred --docker-server=172.29.32.80:8123 --docker-username=admin --docker-password=admin123
 kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v1/ --docker-username=dockerdeepak --docker-password=docker123 --docker-email=deenadeepak123@gmail.com
 
 ==========================================================
 kind: Pod
apiVersion: v1
metadata:
  name: secretpod
spec:
  containers:
    - name: secretcontainer
      image: ubuntu
  restartPolicy: Never
root@ubuntu-VirtualBox:~# cat test.yaml
apiVersion: v1
kind: Pod
metadata:
  name: test
spec:
  containers:
  - name: test
    image: 172.29.32.80:8123/canvas:latest
  imagePullSecrets:
  - name: regcred

 ==========================================================
 {
        "insecure-registries": ["172.29.32.80:8123"]
}
================================================================
docker run --name redis-canvas -p 6379:6379 -d redis redis-server --appendonly yes
=================================================================
docker run -d -p 8081:8081 -p 8443:8443 --name nexus sonatype/nexus3
==============================================================
http://172.19.29.253:8082/canvas/ --> Canvas Setup UI
=======================================================
http://127.0.0.1:9071/expertctstudio CTSTUD1:TEST123
http://127.0.0.1:9071/ctmodelhouse terrim:canvas
=================================================
mysql ctuser canvas
==============================================
 kubeadm alpha certs renew all
 ================================================
 Dashboard:
 
 kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
 
 kubectl create serviceaccount dashboard -n default
 
 kubectl create clusterrolebinding dashboard-admin -n default --clusterrole=cluster-admin --serviceaccount=default:dashboard
 
 kubectl get secret $(kubectl get serviceaccount dashboard -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode
 
 ===========================================================
 kubectl delete pod $(kubectl get --no-headers=true pods -o name | awk -F "/" '{print $2}')
=============================================================================================================
docker run -p 8084:8084 -p 9000:9000 \
    --name halyard --rm \
    -v ~/.hal:/home/spinnaker/.hal \
    -d \
    gcr.io/spinnaker-marketplace/halyard:stable
	
	
	
	kubectl apply -f https://spinnaker.io/downloads/kubernetes/service-account.yml
	
	
TOKEN=$(kubectl get secret $(kubectl get serviceaccount spinnaker-service-account \ -n spinnaker \  -o jsonpath='{.secrets[0].name}') \ -n spinnaker \-o jsonpath='{.data.token}' | base64 --decode)


docker run --name redis-canvas -p 6379:6379 -d redis redis-server --appendonly yes

Nambi - IT Team


mkdir -p /root/.kube
sudo cp -i /etc/kubernetes/admin.conf /root/.kube/config
sudo chown $(id -u):$(id -g) /root/.kube/config

sheeba - 9597540172
ashok Loan Agent - 9710254420
=======================================
spec:
  taints:
  - effect: NoSchedule
    key: node-role.kubernetes.io/master
============================================
