#!/bin/bash

echo "Creating new file to trigger pipeline..."

# create file with timestamp
FILE="auto_$(date +%s).txt"
echo "trigger from script" > $FILE

echo "Adding file to git..."
git add .

echo "Committing changes..."
git commit -m "Auto trigger pipeline from script"

echo "Pushing to GitHub..."
git push origin main

echo "Pipeline should be triggered now 🚀"

