export CONTROLPLANE_IP=$(hostname -I | awk '{print $1}')

envsubst < kubeadm-config.yaml | sudo kubeadm init --config=-
