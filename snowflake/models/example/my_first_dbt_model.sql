/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

-- dbt runが実行されたときに物理テーブルとしてデータベースが作成される
{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select 2 as id

)

-- テーブル名はSQLファイル名
select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
