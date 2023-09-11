#!/bin/bash

# Delete the existing ./nvim directory if it exists
if [ -d "./nvim" ]; then
  rm -rf ./nvim
fi

# Copy the ~/.config/nvim directory to ./nvim
cp -r ~/.config/nvim ./nvim
