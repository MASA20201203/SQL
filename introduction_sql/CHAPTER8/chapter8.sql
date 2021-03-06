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

-- 8-8 3つのテーブルを結合するSQL文
SELECT 日付, 費目.名前, 経費区分.名称
  FROM 家計簿
  JOIN 費目
    ON 家計簿.費目ID = 費目.ID
  JOIN 経費区分
    ON 費目.経費区分ID = 経費区分.ID

-- 8-9 副問い合わせの結果と結合するSQL文
SELECT 日付, 費目.名前, 費目.経費区分ID
  FROM 家計簿
  JOIN ( SELECT * FROM 費目
         WHERE 経費区分ID = 1
       ) AS 費目
    ON 家計簿.費目ID = 費目.ID

-- 8-10 自分自身と結合するSQL文
SELECT A.日付, A.メモ, A.関連日付, B.メモ
  FROM 家計簿 AS A
LEFT JOIN 家計簿 AS B
       ON A.関連日付 = B.日付
