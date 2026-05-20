#--- Credentials ---
# Set your oracle administrator password here: SYS and SYSTEM database schema passwords, APEX administrator password (workspace = INTERNAL, user = ADMIN), and the ORDS_PUBLIC_USER password
ORACLE_PWD="YOUR_PASSWORD"

# define the default admin user for Oracle
ORACLE_ADMIN_USER=SYS

# define any database/apex credentials necessary to deploy the database schemas and/or applications

# define DSC credentials
DSC_USER=DSC
DSC_PWD="YOUR_DSC_PASSWORD"

# define PRI schema credentials
DB_PRI_USER="PRI"
DB_PRI_PASSWORD="YOUR_PRI_PASSWORD"

# GIM schema credentials
DB_GIM_USER="PRI_GIM_APP"
DB_GIM_PASSWORD="YOUR_GIM_PASSWORD"

# RIA schema credentials
DB_RIA_USER="PRI_RIA_APP"
DB_RIA_PASSWORD="YOUR_RIA_PASSWORD"

# define the git api key for refreshing the database
GIT_API_KEY='YOUR_API_KEY'