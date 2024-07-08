sudo apt update -y

# Install Code Server
curl -fsSL https://code-server.dev/install.sh | sh
sudo systemctl enable --now code-server@$USER

sleep 20

curl -O https://raw.githubusercontent.com/cachac/azure-labs/main/config.yaml
mv config.yaml .config/code-server/config.yaml

sudo systemctl restart code-server@$USER
