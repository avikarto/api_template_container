#! /bin/bash
docker stop api_demo || true
docker container rm api_demo || true
docker run -itd\
    --mount type=bind,source="$HOME/Documents/api_template_container/src",target=/src\
    --name "api_demo"\
    -p 16001:16001\
    api_demo:latest