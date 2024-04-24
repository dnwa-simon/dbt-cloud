{{ config(materialized='table') }}

select * from {{ref('yosan_union_zisseki')}}
union
(
    select * from {{ref('mikomi_join')}}
)