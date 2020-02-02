#!/bin/bash -Eeu

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
readonly EXPECTED=2.5.1
readonly ACTUAL=$(docker run --rm -it cyberdojofoundation/coffeescript sh -c 'npm info coffeescript version')

if echo "${ACTUAL}" | grep -q "${EXPECTED}"; then
  echo "VERSION CONFIRMED as ${EXPECTED}"
else
  echo "VERSION EXPECTED: ${EXPECTED}"
  echo "VERSION   ACTUAL: ${ACTUAL}"
  exit 42
fi
