#!/bin/bash

if [[ "$*" != *"echo"* ]] ;then
  sh -c "pipenv $*"
fi
