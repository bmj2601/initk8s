export CONTROLPLANE_IP=$(hostname -I | awk '{print $1}')

envsubst < kubeadm-config.yaml > kubeadm-init-config.yaml
sudo kubeadm init --config=kubeadm-init-config.yaml
