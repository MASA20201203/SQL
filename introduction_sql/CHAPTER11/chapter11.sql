-- 11-1 家計簿テーブルにインデックスを2つ作る
CREATE INDEX 費目IDインデックス ON 家計簿(費目ID);
CREATE INDEX メモインデックス ON 家計簿(メモ);

-- 11-7 4月に関する家計簿データのみを持つビューを定義
CREATE VIEW 家計簿4月 AS
SELECT * FROM 家計簿
 WHERE 日付 >= '2018-04-01'
   AND 日付 <= '2018-04-30'

-- 11-8 家計簿4月ビューを使ったSQL文の実行
SELECT * FROM 家計簿4月;
SELECT DISTINCT 費目ID FROM 家計簿4月;

-- 11-13 PostgreSQLにおける費目行の追加
INSERT INTO 費目 (ID, 名前)
     VALUES (
              (SELECT NEXTVAL('費目シーケンス')), '接待交際費'
     )


