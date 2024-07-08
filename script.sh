sudo su
echo -e "password\npassword\n" | passwd azureuser
su azureuser
cd /home/azureuser

sudo apt update -y

# Install Nginx + Code Server
sudo apt install -y nginx
curl -fsSL https://code-server.dev/install.sh | sh
sudo systemctl enable --now code-server@$USER

curl -O https://raw.githubusercontent.com/cachac/azure-labs/main/codeserver.conf
curl -O https://raw.githubusercontent.com/cachac/azure-labs/main/webserver.conf
curl -O https://raw.githubusercontent.com/cachac/azure-labs/main/config.yaml

mv config.yaml .config/code-server/config.yaml
sudo systemctl restart code-server@$USER






















# Install zsh
sudo apt install zsh -y
/bin/bash -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" \ </dev/null

git clone https://github.com/zsh-users/zsh-autosuggestions /home/azureuser/.zsh/zsh-autosuggestions
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> /home/azureuser/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/azureuser/.zsh/zsh-syntax-highlighting
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> /home/azureuser/.zshrc

git clone https://github.com/zsh-users/zsh-history-substring-search /home/azureuser/.oh-my-zsh/custom/plugins/zsh-history-substring-search
sed -i "s/plugins=(git)/plugins=(git zsh-history-substring-search)/g" /home/azureuser/.zshrc
