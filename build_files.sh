#!/bin/bash

# Ensure the correct Python version is used
export PATH="/usr/local/opt/python@3.9/bin:$PATH"

# Install dependencies
python3.9 -m pip install -r requirements.txt

# Run migrations (if needed)
python3.9 manage.py migrate

# Collect static files
python3.9 manage.py collectstatic --noinput --clear
