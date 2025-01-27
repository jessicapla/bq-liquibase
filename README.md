# BigQuery Liquibase integration


## Running changes locally
- `docker-compose run bigquery-liquibase bash` to run the container
- `liquibase status` to check the connection and if any changes are pending
- `liquibase update-sql` to see the changes that will be applied
- `liquibase update` to apply the changes
- `liquibase rollback-count 1` to rollback the last change
- `liquibase rollback <changeId>` to rollback to a specific change