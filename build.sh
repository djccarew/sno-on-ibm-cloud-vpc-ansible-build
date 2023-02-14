#!/bin/bash

if [ $# -ne 1 ]; then
   echo "Fatal error: Script requires one argument:" >&2
   echo "The fully qualifoed name of the image to build" >&2
   exit 1
fi

DOCKER_COMMAND=$(command -v podman || command -v docker)

if [ $? -ne 0 ]; then
  echo "Fatal error: podman or docker must be available in your PATH" >&2
  exit 1
fi

$DOCKER_COMMAND build  -t  $1  .
