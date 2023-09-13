#!/bin/bash

if [[ "$*" != *"echo"* ]] ;then
  sh -c "pipenv $*"
else
  eval "$*"
fi
