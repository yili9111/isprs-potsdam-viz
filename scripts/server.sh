#!/bin/bash

set -e

if [[ -n "${POTSDAM_DEBUG}" ]]; then
    set -x
fi

function usage() {
    echo -n \
         "Usage:
$(basename "$0")
Starts webpack-dev-server using docker-compose.

Starts servers using docker-compose
"
}

if [ "${BASH_SOURCE[0]}" = "${0}" ]
then
    if [ "${1:-}" = "--help" ]
    then
        usage
    else
        docker-compose -f docker-compose.yml up
    fi
fi
