#! /bin/bash
docker run -itd\
    --mount type=bind,source="~/Documents/api_template_container/src",target=/src\
    --name "api_demo"\
    -p 16001:16001\
    api_demo:latest