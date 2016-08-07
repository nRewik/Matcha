#!/bin/bash
# copy frameworks based on configuration
# specify framework names as arguments
# for example, `./copy-frameworks MatchaDBKit MatchaWireKit`
for framework in "$@"
do
  rm -r "${SRCROOT}/../build/${framework}.framework" 2> /dev/null
  cp -r \
  "${SRCROOT}/../build/.DerivedData/build/${CONFIGURATION}${EFFECTIVE_PLATFORM_NAME}/${framework}.framework" \
  "${SRCROOT}/../build/${framework}.framework"
done
