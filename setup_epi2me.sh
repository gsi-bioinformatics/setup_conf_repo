sudo apt-get update 
sudo apt-get install ca-certificates curl  -y 
sudo apt install openjdk-17-jre-headless -y
sudo apt install docker.io -y
sudo usermod -a -G docker $USER 
curl -s https://get.nextflow.io | bash 
chmod +x nextflow 
sudo mv nextflow /usr/local/bin 

wget https://ont-exd-int-s3-euwst1-epi2me-labs.s3.amazonaws.com/installers/epi2me_5.1.14_amd64.deb
sudo dpkg -i epi2me_5.1.14_amd64.deb

mkdir ~/Data

sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws configure


sudo reboot
