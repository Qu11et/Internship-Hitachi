#!/bin/bash

# Dừng script ngay lập tức nếu có bất kỳ lệnh nào bị lỗi
set -e

echo "Bắt đầu cài đặt các công cụ DevOps..."

# ==========================================
# 1. Cài đặt Terraform (Official HashiCorp)
# ==========================================
echo ">>> Đang cài đặt Terraform..."
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update
sudo apt-get install terraform -y

# ==========================================
# 2. Cài đặt Helm (Official Helm Script)
# ==========================================
echo ">>> Đang cài đặt Helm..."
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
rm get_helm.sh # Dọn dẹp sau khi cài xong

# ==========================================
# 3. Cài đặt Ansible (Official Ubuntu Repo)
# ==========================================
echo ">>> Đang cài đặt Ansible..."
sudo apt-get update
sudo apt-get install ansible -y

# ==========================================
# 4. Kiểm tra phiên bản (Check)
# ==========================================
echo "=========================================="
echo "Kiểm tra phiên bản cài đặt:"
echo "=========================================="
terraform version
echo "------------------------------------------"
helm version
echo "------------------------------------------"
ansible --version
echo "------------------------------------------"
echo "Cài đặt hoàn tất thành công!"
