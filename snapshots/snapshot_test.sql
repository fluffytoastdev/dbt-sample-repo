{% snapshot customer_snapshot %}
  {{
    config(
      unique_key='SALESORDERID',
      strategy='timestamp',
      updated_at='_FIVETRAN_SYNCED'
    )
  }}

  SELECT * FROM LANDING.SQL_SERVER_TEST_SALES.SALESORDERHEADER

{% endsnapshot %}