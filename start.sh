#!/bin/bash
echo "Creating database tables..."
python -c "
from app import app, db
with app.app_context():
    db.create_all()
    print('Database ready!')
"

echo "Starting Flask app..."
python app.py#!/bin/bash
echo "Waiting 10 seconds for app to be ready..."
sleep 10
python app.py
