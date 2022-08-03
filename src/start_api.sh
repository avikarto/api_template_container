#! /bin/bash
gunicorn -b 0.0.0.0:16001 sample_app:wsgi_api&