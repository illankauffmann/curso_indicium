/* teste pra ver se a receita de 2012 é igual a um 230784.68 
quando a consulta não retorna nenhuma linha, ela passa no teste*/

with "2012_sales" as (
    select sum(gross_total) as total 
    from {{ ref('int_sales__metrics') }}
    where extract(year from order_date) = 2012
)

select * from "2012_sales"
where total not between 230784.66 and 230784.70 
