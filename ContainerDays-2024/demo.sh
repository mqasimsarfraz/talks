#!/bin/bash


if [ -z "$1" ]; then
  echo "Error: needs an argument"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: $1 should be a directory"
  exit 1
fi	

asciinema play $1/demo.cast
