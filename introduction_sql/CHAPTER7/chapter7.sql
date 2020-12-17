-- 7-2 1つのSQLで最大の出費に関する費目と金額を決める
SELECT 費目, 出金額 FROM 家計簿
 WHERE 出金額 = (SELECT MAX(出金額) FROM 家計簿)

-- 7-3 SET句で副問い合わせを利用する
UPDATE 家計簿集計
   SET 平均 = (SELECT AVG(出金額)
                 FROM 家計簿アーカイブ
                WHERE 出金額 > 0
                  AND 費目 = '食費')
 WHERE 費目 = '食費'

-- 7-4 選択リストで副問い合わせを利用する
SELECT 日付, メモ, 出金額,
        (SELECT 合計 FROM 家計簿集計
          WHERE 費目 = '食費') AS 過去の合計額
  FROM 家計簿アーカイブ
 WHERE 費目 = '食費'

-- 7-6 INで副問い合わせを利用する
SELECT * FROM 家計簿集計
 WHERE 費目 IN (SELECT DISTINCT 費目 FROM 家計簿)

-- 7-7 ANYで副問い合わせを利用する
SELECT * FROM 家計簿
 WHERE 費目 = '食費'
   AND 出金額 < ANY (SELECT 出金額 FROM 家計簿アーカイブ
                      WHERE 費目 = '食費')
