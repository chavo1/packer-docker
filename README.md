#  Building Docker image with Packer and test with Kitchen

## Usage example:

1.  Fork the copy of chavo1/packer-docker
2.  Clone it with following :

```

git clone https://github.com/chavo1/packer-docker.git

```

3. "vagrant up"
4. "vagrant ssh"
5.  Login to your account in [Docker Hub](https://hub.docker.com/) from CLI.

```

sudo docker login -u <user> -p <pass>

```
If the login is succefull you should see:
```
Login Succeeded
```

6. To build with packer use a following command:

```

sudo packer build /vagrant/docker.json

```
 - The command in point 6 will create tag and upload it to Docker HUB

7. After the bulding process just exit from VM and if you need to test this particular tag with kitchen for "nginx" be sure you have installed a following gems on you local machine:
 ```
gem install kitchen-docker
gem install kitchen-inspec
 ```
Than just execute:

```
kitchen converge
kitchen verify
kitchen destroy
```
Or

```
kitchen test
```
