export CONTROLPLANE_IP=$(hostname -I | awk '{print $1}')

envsubst < kubeadm-config.yaml > kubeadm-init-config.yaml
sudo kubeadm init --config=kubeadm-init-config.yaml

mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config


kubectl apply -f calico.yaml
