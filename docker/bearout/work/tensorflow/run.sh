#!/bin/sh
#docker run --name u16 -v "$PWD/work:/work" --rm -it --privileged test
#docker run --name xxx -it --privileged test
#docker pull tensorflow/tensorflow                  # Download latest image
#docker run --rm -it -p 8888:8888 tensorflow/tensorflow  # Start a Jupyter notebook server
container=tensorflow.test
image=tensorflow:test
docker container rm $container
docker run \
	--name $container \
	-v $PWD/volumes/work:/work \
	-v $PWD/volumes/notebooks:/notebooks \
	-it \
	-p 8888:8888 \
	-p 6006:6006 \
	$image # Start a Jupyter notebook server
