#!/bin/bash -ex

source get-api-token.sh
source get-neutron-network-service-public-url.sh

export RESP_JSON_NETWORK_VERSION=$(curl -s -X GET $NEUTRON_NETWORK_SERV_PUBLIC_URL/ \
            -H "Content-Type: application/json" \
            -H "X-Auth-Token: $API_TOKEN" | jq '.versions[0].id' | sed 's/"//g')
