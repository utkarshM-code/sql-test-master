-- Solution of Practise 1

select count(esec.sales_organization_id) as subordinates_count,o.id  from organizations o
left outer join enterprise_sales_enterprise_customers esec
on o.id=esec.sales_organization_id
group by o.id
order by o.id;


--Solution of Practise 2

select
  id,
  round(ST_X(ST_CENTROID(bounds))::numeric, 15) as longitude,
  round(ST_Y(ST_CENTROID(bounds))::numeric, 15) as latitude
from japan_segments js ;



--solution of Practise 3

select id from japan_segments js
where ST_Within(bounds,ST_GeomFromEWKT('SRID=4326;POLYGON((130.27313232421875 30.519681272749402,131.02020263671875 30.519681272749402,131.02020263671875 30.80909017893796,130.27313232421875 30.80909017893796,130.27313232421875 30.519681272749402))'));