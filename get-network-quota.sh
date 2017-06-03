#!/bin/bash -ex

source get-api-token.sh
source get-neutron-network-service-public-url.sh

export RESP_JSON_NETWORK_QUOTAS=$(curl -s -X GET $NEUTRON_NETWORK_SERV_PUBLIC_URL/v2.0/quotas \
            -H "Content-Type: application/json" \
            -H "X-Auth-Token: $API_TOKEN")
echo ${RESP_JSON_NETWORK_QUOTAS} | jq

export RESP_JSON_NETWORK_QUOTAS_TENANT=$(curl -s -X GET $NEUTRON_NETWORK_SERV_PUBLIC_URL/v2.0/quotas/tenant \
            -H "Content-Type: application/json" \
            -H "X-Auth-Token: $API_TOKEN")
echo ${RESP_JSON_NETWORK_QUOTAS_TENANT} | jq

export RESP_JSON_NETWORK_ADMIN_DEFAULT_QUOTAS=$(curl -s -X GET $NEUTRON_NETWORK_SERV_PUBLIC_URL/v2.0/quotas/$OS_ADMIN_TENANT_ID/default \
            -H "Content-Type: application/json" \
            -H "X-Auth-Token: $API_TOKEN")
echo ${RESP_JSON_NETWORK_ADMIN_DEFAULT_QUOTAS} | jq

export RESP_JSON_NETWORK_ADMIN_QUOTAS=$(curl -s -X GET $NEUTRON_NETWORK_SERV_PUBLIC_URL/v2.0/quotas/$OS_ADMIN_TENANT_ID \
            -H "Content-Type: application/json" \
            -H "X-Auth-Token: $API_TOKEN")
echo ${RESP_JSON_NETWORK_ADMIN_QUOTAS} | jq

export RESP_JSON_NETWORK_DEMO_DEFAULT_QUOTAS=$(curl -s -X GET $NEUTRON_NETWORK_SERV_PUBLIC_URL/v2.0/quotas/$OS_DEMO_TENANT_ID/default \
            -H "Content-Type: application/json" \
            -H "X-Auth-Token: $API_TOKEN")
echo ${RESP_JSON_NETWORK_DEMO_DEFAULT_QUOTAS} | jq

export RESP_JSON_NETWORK_DEMO_QUOTAS=$(curl -s -X GET $NEUTRON_NETWORK_SERV_PUBLIC_URL/v2.0/quotas/$OS_DEMO_TENANT_ID \
            -H "Content-Type: application/json" \
            -H "X-Auth-Token: $API_TOKEN")
echo ${RESP_JSON_NETWORK_DEMO_QUOTAS} | jq



