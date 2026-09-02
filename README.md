# THIS README IS IN PROGRESS

# OVERVIEW
I am using recycled code from my [Udacity Data Engineering with AWS Redshift Data Warehouse Project](https://github.com/brettambrose/udacity-nd-data-eng-aws-proj-redshift-warehouse) to learn how to use and experiment with dbt (Data build tool)

Refactoring a lot of the ETL to use dbt instead.

While I'm not following this to a T, I am generally using the following resources to learn dbt:
Quickstart for dbt and Redshift - https://docs.getdbt.com/guides/redshift?step=1
This YouTube Series (it's using Snowflake, but concepts are somewhat transferrable) - https://www.youtube.com/watch?v=1fY1A8SRflI&list=PLc2EZr8W2QIBegSYp4dEIMrfLj_cCJgYA&index=4 

## Install DBT
pip install dbt-core

## set dbt profiles yaml

C:\users\YOURSPECIALUSERNAME\.dbt

Create a YAML file call "profiles"

profiles.yml content should look like this:
<pre>
my_redshift:
  target: dev
  outputs:
    dev:
      type: redshift
      host: redshift-cluster-1.superSecretRedshiftCluster.aws-region.redshift.amazonaws.com
      user: yourSuperSecretDbUser
      password: yourSuperSecretDbPassword
      port: 5439
      dbname: dwh
      schema: sandbox
      threads: 4
      keepalives_idle: 240
      sslmode: require
</pre>

## AWS config and credentials TODO

## dbt analysis queries
Run the following command to return the results of the monthly average songplays analysis

<pre>
dbt show --select analysis\songplays_monthly_avg.sql
</pre>

Which should return the following results
![sonplays_monthly_avg_results](/assets/images/songplays_monthly_avg_results.png)

## dbt docs metadata and lineage mapping
Running the following dbt commands to generate and view docs

<pre>
dbt docs generate
dbt docs serve
</pre>

dbt docs serve will launch the localhost webpage documentation for your project.  It should look like this.
![dbt docs generate](/assets/images/dbt_docs_generate_html.png)

## REST OF README TO DO