## Provisioning tools for the cluster setup
sudo  apt update && sudo apt install wget zip unzip awscli -y

wget https://github.com/kubernetes/kops/releases/download/v1.28.4/kops-linux-arm64
sudo chmod +x kops-linux-arm64
sudo mv kops-linux-arm64 /usr/local/bin/kops

curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/linux/arm64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin

kubectl version --short --client
nslookup -type=ns kubevpro.andynze.com

