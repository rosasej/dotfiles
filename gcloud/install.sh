#!/bin/sh
if which gcloud > /dev/null; then
  eval "$(gcloud components update)";
fi
