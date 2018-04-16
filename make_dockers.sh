#!/bin/bash
ROOT_FOLDER=ibox.ific.uv.es/flex


docker build -f Dockerfile.base . -t ${ROOT_FOLDER}/flex_eclipse


#docker push ${ROOT_FOLDER}/flex_eclipse

