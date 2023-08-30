#!/bin/bash
wget https://github.com/richardschwabe/rassetfinder/releases/download/v0.2.1/rassetfinder-x86_64-unknown-linux-gnu.tar.gz
tar -xzf rassetfinder-x86_64-unknown-linux-gnu.tar.gz -C ~/.local/bin
rm rassetfinder-x86_64-unknown-linux-gnu.tar.gz
chmod +x ~/.local/bin/rassetfinder