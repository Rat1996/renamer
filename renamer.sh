#!/bin/bash

for filename in *
do
  lowercase=$(echo "$filename" | tr '[:upper:]' '[:lower:]')
  new_filename=$(echo "$lowercase" | tr ' ' '_')
  if [ "$filename" != "$new_filename" ]
  then
    mv "$filename" "$new_filename"
    echo "Renomeado: $filename -> $new_filename"
  fi
done
