#!/bin/bash

for file in files/*
do
    folder=$(basename "$file" | cut -c 1 | tr '[:upper:]' '[:lower:]')
    mv "$file" "$folder/$(basename "$file")"
done

echo "Done!"
