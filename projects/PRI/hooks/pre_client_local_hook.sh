#!/bin/bash

echo "This is the PRI pre client_local hook"

# load the cron schedule configuration file
source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/cron_schedule_config.sh"