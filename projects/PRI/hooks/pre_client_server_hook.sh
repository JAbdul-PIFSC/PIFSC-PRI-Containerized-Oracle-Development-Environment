#!/bin/bash

echo "This is the PRI pre client_server hook"

# load the PRI runtime configuration file
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../config/pri_runtime_config.sh"