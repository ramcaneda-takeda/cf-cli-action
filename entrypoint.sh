#!/bin/sh -l

cf api "$INPUT_CF_API"
cf login -u "$INPUT_CF_USERNAME" -p "$INPUT_CF_PASSWORD"

if [ -n "$INPUT_CF_ORG" ] && [ -n "$INPUT_CF_SPACE" ]; then
  cf target -o "$INPUT_CF_ORG" -s "$INPUT_CF_SPACE"
fi

sh -c "cf7 $*"
