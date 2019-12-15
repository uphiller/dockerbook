docker images 

docker pull nginx
docker images

docker run --name nginx -p 8000:80 -d nginx

docker cp nginx:/usr/share/nginx/html/index.htmli index.html

docker cp index.html nginx:/usr/share/nginx/html/index.html

docker commit nginx mynginx

docker images

docker run --name nginx -p 8000:80 -d mynginx

docker build -t mynginx2 .

docker run --name custom1 -p 8002:80 -d mynginx2

docker login

docker tag

docker push

#docker install
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update -y
sudo apt install -y docker-ce=18.06.3~ce~3-0~debian
sudo usermod -aG docker $USER

#mysql 
docker run --name db -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 -d mysql:5.7.28
