# 1: Update your existing list of packages:
sudo apt update

# 2: install a few prerequisite packages which let apt use packages over HTTPS:
sudo apt --assume-yes install apt-transport-https ca-certificates curl software-properties-common

# 3: add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 4: Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# 5: Update your existing list of packages with docker:
sudo apt update

# 6: Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
apt-cache policy docker-ce

# 7: Install Docker:
sudo apt --assume-yes install docker-ce

# 8: In case if the user is ubuntu ( ie aws ec2 ubuntu instance)
if [ "$(whoami)" = "ubuntu" ]; then
    sudo usermod -aG docker ubuntu
fi