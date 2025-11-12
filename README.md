# Docker Rocky Linux multi deployment
Multi deployment cluster consisting of four Rocky Linux docker containers. Idea behind the cluster is that this is designed to be a sandbox environment for ansible practice.

## Download and usage

#### Download cluster
```git clone https://github.com/Jespermathias/docker-rocky-multi.git```

#### Running the container cluster
```docker compose up -d```

#### Shutting down the cluster
```docker compose down```

## Accessing machines
Rockyc (rocky-control) container is the designated container for ansible. Rockyc has ssh enabled so that you can use the ssh for the connecton or docker exec

### SSH
Recommended way. The ip address for the rocky-control container is 10.100.2.10.

```ssh ansible@10.100.2.10```

### Docker exec
Not recommended, but works with some detours.

```docker exec -it rocky-control bash```

```su - ansible```

### Keygen-tool
Keygen-tool.sh is a script that creates ssh-keys for rockyc and adds them to each rocky node that you can use ssh without password and use ansible commands to control the nodes. To run the tool copy the command below and run it in rocky-control container ansible user home directory.

```./keygen-tool.sh```
