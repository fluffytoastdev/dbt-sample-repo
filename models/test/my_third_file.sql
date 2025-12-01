


select

    *

from {{ source('LANDING_SOURCE', 'SALESORDERHEADER') }}
