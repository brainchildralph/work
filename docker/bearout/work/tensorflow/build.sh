#!/bin/sh
#docker run --name u16 -v "$PWD/work:/work" --rm -it --privileged test
#docker run --name xxx -it --privileged test
docker pull tensorflow/tensorflow                  # Download latest image
#docker run --rm -it -p 8888:8888 tensorflow/tensorflow  # Start a Jupyter notebook server
docker run --name tensorflow -it -p 8888:8888 -p 6006:6006 tensorflow/tensorflow  # Start a Jupyter notebook server
