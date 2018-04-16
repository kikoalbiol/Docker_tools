# Docker installation:
https://docs.docker.com/install/

Exists instructions for Debian but as usual there is not support.

Once installed: 

```sh
systemctl enable docker
systemctl start docker
```


# Post instalations

Docker runs locally like a daemon, only root has access. Other users can have acces by editing group file and adding users in the docker group.

Very fast check:
```sh
$ docker run --rm -it debian:8
```
will start a bash execution

* <pre>docker run # The command</pre>
* <pre>—rm        # Will remove the instance</pre>
* <pre>-it        # Interactive</pre>
* <pre>debian:8  # An ultra-minimal debian </pre>

When the session of this machine, there will be a new image

```sh
$ docker images
REPOSITORY      TAG                     IMAGE ID            CREATED             SIZE
debian 		8                       5dd74d62fab8        4 weeks ago         123MB
```


Once one image is written, it will provide a fresh enviromnet when you do docker run.

# Login to a image registry

Image registry is a GIT like repository for machines. Only changes commited from one machine to another 
is stored, so is important to produce machines that will deppend, for example
if you need compiler you can use an image with compilers and use another for production

If later you need to install more software to an image the Dockerfile will provide
this installation:

```sh
docker login ibox.ific.uv.es
USER: external_fuser
PWD: xxx-xxx-xxx-xxx
```

# Preparing the images

