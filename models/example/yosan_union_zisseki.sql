select "分類","年月","会計年度","事業部","部","部門No","部門名","費目","費目名",
	"予算金額" as "金額",
        NULL as "品番",
        NULL as "摘要",
        NULL as "数量",
        NULL as "単価",
	    _METADATA_FILENAME,
        _METADATA_FILE_ROW_NUMBER,
        _LOAD_AT
from {{source('table','YOSAN_UPD')}}
union
(
    select "分類","年月","会計年度","事業部","部","部門No","部門名","費目","費目名",
    	"実績金額" as "金額",
        "品番","摘要","数量","単価",
	    _METADATA_FILENAME,
	    _METADATA_FILE_ROW_NUMBER,
	    _LOAD_AT
    from {{source('table','ZISSEKI_UPD')}}
)