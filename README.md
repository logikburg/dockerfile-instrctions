# Dockerfile Instructions

This introduce some instructions which are most useful to build a docker image with Dockerfile. 

Docker images are the basis of containers. Each time you’ve used docker run you told it which image you wanted.

The Dockerfile has instructions as below:

1. __FROM__  *instruction sets the Base Image for subsequent instructions. As such, a valid Dockerfile must have FROM as its first instruction. The image can be any valid image – it is especially easy to start by pulling an image from the Public Repositories.*
   > FROM ubuntu:14.04
   
2. __MAINTAINER__ instruction allows you to set the Author field of the generated images.
  > MAINTAINER Mogla Sandeep (sandeep.mogla)
   
3. __RUN__  *instruction will execute any commands in a new layer on top of the current image and commit the results. The resulting committed image will be used for the next step in the Dockerfile.*
   > RUN apt-get update
   
   > RUN apt-get install -y curl nginx

4. __CMD__  *The main purpose of a CMD is to provide defaults for an executing container. There can only be one CMD instruction in a Dockerfile. If you list more than one CMD then only the last CMD will take effect.*
  
  __The CMD instruction has three forms__
   > CMD ["executable","param1","param2"]
   
   > CMD ["param1","param2"]
   
   > CMD command param1 param2

5. __EXPOSE__  *instruction informs Docker that the container listens on the specified network ports at runtime.*
   > EXPOSE 8080

6. __ENV__  *instruction sets the environment variable <key> to the value <value>. The environment variables set using ENV will persist when a container is run from the resulting image.*
   > ENV PATH /usr/local/nginx/bin:$PATH

7. __ADD__  *instruction copies new files, directories or remote file URLs from <src> and adds them to the filesystem of the container at the path <dest>.*
   > ADD rootfs.tar.xz /

8. __COPY__  *instruction copies new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.*
   > COPY requirements.txt /tmp/

9. __ENTRYPOINT__  *instruction execute as a must execute command/s when you run the container and allows you to configure a container that will run as an executable.*
   > ENTRYPOINT ["/docker-entrypoint.sh"]

10. __VOLUME__  *instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.*
   > VOLUME ["/data"]

11. __USER__  *instruction sets the user name to use when running the image and for any RUN, CMD and ENTRYPOINT instructions that follow it in the Dockerfile.*
   > USER daemon

12. __WORKDIR__ *instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile.*
   > WORKDIR /path/to/work/dir
   

For more detail about these instructions, please refer to [this link](https://docs.docker.com/engine/reference/builder/)
