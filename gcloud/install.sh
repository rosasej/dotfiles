#!/bin/sh
if test "$(which gcloud)"; then
  gcloud components update
fi
