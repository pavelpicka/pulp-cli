#!/bin/sh

. "$(dirname "$(realpath $0)")/config.sh"

STATUS_RESULT=$(pulp_cli status)

test "$(echo "${STATUS_RESULT}" | jq '.database_connection.connected' )" = "true"
