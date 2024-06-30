# docker
take ssh of instance

sudo -i

install docker for ubuntu on official docker site copy the below commands 

* Set up Docker's apt repository
  
sudo apt-get update

sudo apt-get install ca-certificates curl

sudo install -m 0755 -d /etc/apt/keyrings

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get update

* To install the latest version, run
  
   sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

check version of docker

docker -v

systemctl start docker.service

systemctl status docker.service

docker ps

docker run -d  httpd

docker ps

docker inspect (container id) - it gives the ip address of container

curl (ip of container)

hit the ip of instance on browser it will not work you have to whitelist port of http in SG the go to docker
and enter below command

docker run -d -p 80:80 httpd

now you go to browser and hit the ip:80 it will works

* Now we try another method with random port no.

  docker run -d -P nginx

  docker ps

  now we have new port no. of container then we have to allow All tcp traffic in our SG of instance

  then go to browser and hit the ip:32768

  




