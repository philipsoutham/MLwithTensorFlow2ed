#!/usr/bin/env bash
docker run -p 8888:8888 --rm -it -u ${UID}:${GID} -v "${PWD}":/usr/src/app  --rm mltf2