select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from {{ source('bigquery','orders')}}

{{ limit_data_in_dev('order_date', 365) }}