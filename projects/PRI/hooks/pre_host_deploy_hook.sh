#!/bin/bash

echo "This is the PRI pre host_deploy hook"

# load the cron schedule configuration file
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/cron_schedule_config.sh"