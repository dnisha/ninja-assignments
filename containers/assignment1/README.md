### Problem statement
```
Part1
Create a utility to host a static website via Docker with below features:
    - The website should be accessed via your team domain name i.e
        - <name>.<team-name>.com
        - mohan.ntd.com
    - The website should be up and running in below intervals
        - 10-12
        - 4-6
    - Modify the utility so that in which first half it would be printing your name and in second half your buddy name. i.e below will be the output of curl command
        - 10-12 | Hello from Mohan
        - 4-6 | Hell from Pankaj
Part2
Create a new container.
Create One directory Structure:
Data
 Ninjas
   Mohan
   Uma
   Shikha
   Mayank
Now make sure that if this container is getting run by Mohan then Mohan should be able to Write on Mohand Directory only and for others Mohan should only be able to read it.
```

### Solution
```
docker run -d -p 80:80 --name website1 -v $(pwd)/website1:/usr/share/nginx/html nginx:latest
docker run -d -p 80:80 --name website2 -v $(pwd)/website2:/usr/share/nginx/html nginx:latest

make changes in you /etc/hosts file to map the domain deepak.avatars.com to localhost
```

### Solution
```
Build Docker file and login with below command as uma user you wont be able to make changes in file mohan.txt

docker run -it --name cubuntu -u uma  cubuntu:latest
```

