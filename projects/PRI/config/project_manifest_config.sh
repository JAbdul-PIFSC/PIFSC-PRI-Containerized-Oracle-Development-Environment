#!/bin/bash

	# define the database scripts mapping using the pipe character as a delimiter
	# The elements should contain encoded values with the "|" character as the delimiter: sql path (within container)|sql script file|User Secret Name|Password Secret Name|Script Password Secrets (this can be one or more optional pipe-delimited secret names when a password is injected into the script - examples include a CREATE USER command) 
	DB_SCRIPTS_MAP+=("${BUILD_PATH}/../../projects/PRI/modules/PRI/shared_SQL|@dev_container_setup/create_docker_schemas.sql|oracle_admin_user|oracle_pwd|pri_db_password_secret|pri_gim_db_password_secret|pri_ria_db_password_secret")
	DB_SCRIPTS_MAP+=("${BUILD_PATH}/../../projects/PRI/modules/PRI/shared_SQL|@automated_deployments/deploy_dev.sql|pri_db_username_secret|pri_db_password_secret")


	DB_SCRIPTS_MAP+=("${BUILD_PATH}/../../projects/PRI/modules/PRI/shared_SQL|@automated_deployments/deploy_RIA_dev.sql|pri_ria_db_username_secret|pri_ria_db_password_secret")
	DB_SCRIPTS_MAP+=("${BUILD_PATH}/../../projects/PRI/modules/PRI/shared_SQL|@automated_deployments/deploy_GIM_dev.sql|pri_gim_db_username_secret|pri_gim_db_password_secret")

	# define the array of non-sensitive environment variable names that are exported for use in the container
	CUSTOM_ENV_VARS+=("CRON_SCHEDULE")

	# define the array of compose files that are used by the individual projects (specify the path relative to the core/build directory
	
	# add the secrets for PRI to the code-db-ords-deploy container
	COMPOSE_FILES+=("../../projects/PRI/build/pri_secrets.yml")
	
	# add the PRI application container
	COMPOSE_FILES+=("../../projects/PRI/modules/PRI/container_application_deployment/docker-compose.yml")

	# Override and define additional properties for the PRI application container
	COMPOSE_FILES+=("../../projects/PRI/build/custom_pri.yml")

	# add the secrets
	# Example:
		SECRET_MAPPING_ARR+=(
		  ["pri_ria_db_username_secret"]="DB_RIA_USER"
		  ["pri_ria_db_password_secret"]="DB_RIA_PASSWORD"
		  ["pri_gim_db_username_secret"]="DB_GIM_USER"
		  ["pri_gim_db_password_secret"]="DB_GIM_PASSWORD"
		  ["pri_db_username_secret"]="DB_PRI_USER"
		  ["pri_db_password_secret"]="DB_PRI_PASSWORD"
		  ["pri_git_api_key_secret"]="GIT_API_KEY"
		)
	
	