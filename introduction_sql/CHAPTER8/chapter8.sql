-- 8-4 結合を実現するためのSELECT文
SELECT 日付, 名前 AS 費目, メモ
  FROM 家計簿
  JOIN 費目
    ON 家計簿.費目ID = 費目.ID

-- 8-6 2種類のメモを両方出力するSQL文
SELECT 日付, 家計簿.メモ, 費目.メモ
  FROM 家計簿
  JOIN 費目
    ON 家計簿.費目ID = 費目.ID

-- 8-7 別名を使ったSQL文
SELECT 日付, K.メモ, H.メモ
  FROM 家計簿 AS K
  JOIN 費目 AS H
    ON K.費目ID = H.ID
