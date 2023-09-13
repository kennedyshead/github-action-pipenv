#!/bin/sh

if [[ "$*" != *"echo"* ]] ;then
  sh -c "pipenv $*"
fi
