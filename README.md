### Docker Setup for PHP Apache Mysql, Phpmyadmin, Mongo and Redis

### Prerequsite
  * Install Docker and Docker compose  
  
### Steps for using  the docker 
  * Git clone 
  * Create a project folder inside docker-setup folder
  * Update any virtual host settings if required in apache/apache-config.conf
  * Pull necessary images from docker hub using `docker-compose up -d`
  * After the virtual host domains in the /etc/hosts file for the docker ip address 172.16.0.1 
    
 ### Docker Containers List
  * For PHP and Apache: `php_apache`
  * For Mysql: `mysql_apache`
  * For PhpMyadmin: `phpmyadmin_apache`
  * For Mongo: `mongo_apache`
  * For Redis: `redis_apache`
  
 ### Note:
  * All code will be mounted under /var/www/html/ in php_apache container from docker-setup/project folder.
  * For Accessing the phpmyadmin in the browser : http://172.16.0.1:8181
   
   
 #### Docker Commands:
|#|Purpose|Command|
|---|---|---|
|1|To Pull and Up the Containers|`docker-compose up -d`|
|2|To Stop and destroy the Containers|`docker-compose down`|
|3|To Start the existing Containers|`docker-compose start`|
|4|To Stop the Containers|`docker-compose stop`|
|5|To Login into the Container|`docker exec -it <container_name> bash`|
|6|To Inspect the conatiner|`docker inspect <container_name>`|
|7|To check the logs of conatiner|`docker logs -f <container_name>`|
|8|To View the list of up and running conatiner|`docker ps`|
|9|To View the list of conatiner|`docker container ls`|
|10|To View the list of images|`docker images`|
|11|To View the docker-compose process|`docker-compose ps`|
  
  
