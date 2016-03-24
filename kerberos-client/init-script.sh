#!/bin/bash

source `dirname $0`/configureKerberosClient.sh

# Your application

# You can use the `kadminCommand` function to perform kadmin commands. Example:
# kadminCommand "get_principal yourprincipal@$REALM"