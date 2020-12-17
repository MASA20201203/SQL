--6-1 出金額を集計する
SELECT SUM(出金額) AS 出金額の合計
  FROM 家計簿

--6-2 さまざまな集計をする
SELECT
  SUM(出金額) AS 合計出金額,
  AVG(出金額) AS 平均出金額,
  MAX(出金額) AS 最も大きな散財,
  MIN(出金額) AS 最も少額の支払い
FROM 家計簿

--6-3 食費の行数を数える
SELECT COUNT(*) AS 食費の行数
  FROM 家計簿
 WHERE 費目 = '食費'

 --6-4 日付と出金額合計を取得するつもりのSELECT文
SELECT 日付け, SUM(出金額) AS 出金額合計
  FROM 家計簿

--6-5 NULLをゼロとして平均を求める
SELECT AVG(COALESCE(出金額, 0)) AS 出金額の平均
  FROM 家計簿
