#!/bin/bash

echo "This is the PRI pre client_local hook"

# load the PRI runtime configuration file
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/pri_runtime_config.sh"