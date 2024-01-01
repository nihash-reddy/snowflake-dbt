with payments as (
    select  
    ID as Payment_ID, 
    ORDERID as order_id, 
    PAYMENTMETHOD, 
    STATUS, 
    AMOUNT / 100 as amount,
    created as created_at from {{ source ('stripe','payment') }}
    
)

select * from payments