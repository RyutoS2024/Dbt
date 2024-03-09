## profile.ymlの内容

- account, passwordは適切に置き換える

``` ~/.dbt/profiles.yml
snowflake:
  target: dev
  outputs:
    dev:
      account: 'account'
      database: DBT_DEV
      password: xxxxxxxxxxxxxx
      role: ACCOUNTADMIN
      schema: SNOWFLAKE_TEST
      threads: 1
      type: snowflake
      user: RyutoS
      warehouse: xxxxxxxxxx

seeds:
  snowflake:
    +schema: SNOWFLAKE_TEST
    my_first_dbt_model_test:
      +column_types:
        id: string
```