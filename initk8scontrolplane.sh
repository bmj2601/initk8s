export CONTROLPLANE_IP=$(hostname -I | awk '{print $1}')

sudo kubeadm init --config kubeadm-config.yaml