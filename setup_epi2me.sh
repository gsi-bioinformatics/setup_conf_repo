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
cd Data
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/GCA_000001405.15_GRCh38/seqs_for_alignment_pipelines.ucsc_ids/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/GCA_000001405.15_GRCh38/seqs_for_alignment_pipelines.ucsc_ids/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.fai


sudo reboot
