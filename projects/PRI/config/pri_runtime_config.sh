#!/bin/bash

# load the custom PRI configuration values for the application container

# define the crontab schedule for the GIM update script
CRON_SCHEDULE="30 7 * * 1-5"

# define the port to access the PRI application on
CONTAINER_APP_PORT="8182"