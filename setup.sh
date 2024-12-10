
#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Add user to the docker group
echo "Adding user to the docker group..."
sudo usermod -aG docker $USER
echo "You must log out and log back in for the group changes to take effect."

# Install Docker Compose
echo "Installing Docker Compose..."
sudo apt install -y docker-compose

# Install curl
echo "Installing curl..."
sudo apt install -y curl

# Install Python and pip (optional for debugging)
echo "Installing Python and pip..."
sudo apt install -y python3 python3-pip
pip3 install flask pytest flake8

# Verify installations
echo "Verifying installations..."
docker --version && docker-compose --version && python3 --version && pip3 --version && curl --version

echo "Setup completed! Please log out and log back in if you added the user to the docker group."
