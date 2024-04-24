select
    b."分類",
    a."年月",
    a."会計年度",
    a."事業部",
    a."部",
    a."部門No",
    a."部門名",
    a."費目",
    a."費目名",
    NULL as "品番",
    NULL as "摘要",
    NULL as "数量",
    NULL as "単価",
    b."金額",
    b._METADATA_FILENAME,
    b._METADATA_FILE_ROW_NUMBER,
    b._LOAD_AT
from
    {{source('table','YOSAN_UPD')}} a
    left join {{ref('mikomi_sum')}} b on a."会計年度" = b."会計年度"
    and a."年月" = b."年月"
    and a."部" = b."部"
    and a."事業部" = b."事業部"
    and a."部門No" = b."部門No"
    and a."部門名" = b."部門名"