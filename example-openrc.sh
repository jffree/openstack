#!/bin/bash

# To use an OpenStack cloud you need to authenticate against the Identity
# service named keystone, which returns a **Token** and **Service Catalog**.
# The catalog contains the endpoints for all services the user/tenant has
# access to - such as Compute, Image Service, Identity, Object Storage, Block
# Storage, and Networking (code-named nova, glance, keystone, swift,
# cinder, and neutron).
#
# *NOTE*: Using the 2.0 *Identity API* does not necessarily mean any other
# OpenStack API is version 2.0. For example, your cloud provider may implement
# Image API v1.1, Block Storage API v2, and Compute API v2.0. OS_AUTH_URL is
# only for the Identity API served through keystone.
export OS_AUTH_URL=http://172.16.100.106:5000/v2.0

# With the addition of Keystone we have standardized on the term **tenant**
# as the entity that owns the resources.

# admin project and admin user
export OS_TENANT_ID=d4edcc21aaca452dbc79e7a6056e53bb
export OS_TENANT_NAME="admin"
export OS_PROJECT_NAME="admin"

# demo project and demo user
#export OS_TENANT_ID=e2a6f26416654301a25f70e20892f1bc
#export OS_TENANT_NAME="demo"
#export OS_PROJECT_NAME="demo"


export OS_ADMIN_TENANT_ID=d4edcc21aaca452dbc79e7a6056e53bb
export OS_DEMO_TENANT_ID=e2a6f26416654301a25f70e20892f1bc
# In addition to the owning entity (tenant), OpenStack stores the entity
# performing the action as the **user**.
export OS_USERNAME="admin"

# With Keystone you pass the keystone password.
#echo "Please enter your OpenStack Password: "
#read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=abc123

# If your configuration has multiple regions, we set that information here.
# OS_REGION_NAME is optional and only valid in certain environments.
export OS_REGION_NAME="RegionOne"
# Don't leave a blank variable, unset it if it was empty
if [ -z "$OS_REGION_NAME" ]; then unset OS_REGION_NAME; fi
