# Docker installation
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
PWD: 2b86-4165-11e8-ad7f-685b
```

# Preparing the images

Read <pre>make_dockers.sh</pre>, these instructions are related to place images
in a docker registry. 

The images (once <pre>make_dockers.sh</pre>) is runned are placed locally.

Latter the script <pre>push_dockers.sh</pre> will store the dockers in the ibox repository.

>**Rational**
This is a beta version, usually the images must be tagged. At the time of first writing
this tutorial the image tag used is the _current date_. Future versions will require
specific tagging of the image.
>

# Some best practices

* Place an entry point.
* Use environment variables to change the ID and UID
* Use standard users that could be changed
* X11 is allowed.
* You can use CURL or WGET inside of building scripts, is preffered to generate a bundle.
* Make an external revision if it is the first time you try to produce an image.


