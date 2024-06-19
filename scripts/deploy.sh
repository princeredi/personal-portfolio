#!/bin/bash

# Navigate to the project directory
cd /home/ubuntu/personal-portfolio

# Activate the virtual environment
source env/bin/activate

# Install the required Python packages
pip install -r requirements.txt

# Apply database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Restart Gunicorn and NGINX services
sudo systemctl restart gunicorn
sudo systemctl restart nginx
