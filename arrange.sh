#!/bin/bash

fileArray=($(ls ./files))
for i in "${!fileArray[@]}"; do
    firstletter=$(echo ${fileArray[i]:0:1} | tr '[:upper:]' '[:lower:]')
    mv "./files/${fileArray[i]}" "./${firstletter}/"
done