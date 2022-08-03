This serves as a boilerplate template for hosting a pythonic API endpoint in a docker container.

Standup the service with the following instructions:
1) `source ./build_image.sh`
2) edit `run_container.sh` to update path `~/Documents/api_template_container/src` for your machine.
2) `source ./run_container.sh`
3) `python3 src/request.py` to test the API functionality