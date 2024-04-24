select
    "分類",
    "年月",
    "会計年度",
    "部",
    "事業部",
    "部門No",
    "部門名",
    _METADATA_FILENAME,
    _METADATA_FILE_ROW_NUMBER,
    _LOAD_AT,
    sum("見込み金額") as "金額"
from
    {{source('table','MIKOMI_UPD')}}
group by
    "分類",
    "年月",
    "会計年度",
    "部",
    "事業部",
    "部門No",
    "部門名",
    _METADATA_FILENAME,
    _METADATA_FILE_ROW_NUMBER,
    _LOAD_AT