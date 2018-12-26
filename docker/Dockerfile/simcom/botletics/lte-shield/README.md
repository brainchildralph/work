## **Dockerfile for AWS Command Line Testing**
#### **Build docker image**
> 1. Run `build.sh` to build docker image, and image's name will be related to current directory's name.  
> ```
> $ ./build.sh
> ```
> 2. Execute `run.sh` to create container and the name is the same as image's name. 
> ```
> $ ./run.sh
> ```
> 3. After execute `run.sh`, in container's shell prompt, you can execute `awscliTest.sh`to list AWS IoT things. 
> ```
> ./awscliTest.sh
> ```
>
