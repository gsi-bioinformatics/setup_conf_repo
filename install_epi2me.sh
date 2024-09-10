sudo apt-get update 
sudo apt-get install ca-certificates curl 
sudo apt install openjdk-17-jre-headless 
sudo apt install docker.io 
sudo usermod -a -G docker $USER 
curl -s https://get.nextflow.io | bash 
chmod +x nextflow 
sudo mv nextflow /usr/local/bin 

wget https://ont-exd-int-s3-euwst1-epi2me-labs.s3.amazonaws.com/installers/epi2me_5.1.14_amd64.deb
sudo apt install epi2me_5.1.14_amd64.deb
sudo reboot
