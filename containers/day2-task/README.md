Activity 1:
Create a bridge network and create 2 busybox containers (c1 and c2 ) within that network, now try to access/ping the containers from inside the container. Also try to hit google.com from the container
Now create another bridge network and create a container (c3) inside this network, try to access c1 from c3. Also access google.com from c3

Create host network and run nginx container without port mapping within this network , try to hit nginx url from browser, also access google.com from this container
Create nginx container in none network and try to access this container from browser.also try to access google.com from this container.

Activity-2
Create docker volume named "dbvol"
Run docker container from wordpress image and mount "dbvol" to /var/lib/mysql
Display all docker volumes.
Create another docker volume named "testvol"
Remove docker volume "testvol"


Activity-3
Create docker volume named opstree-vol
Create a nginx container.
Mount the volume "opstree-vol" to nginx container with ReadOnly Permission.
Go and try to edit any file at mounted path in container to ensure the permissions are correct or not.