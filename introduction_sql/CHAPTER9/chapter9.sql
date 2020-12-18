-- 9-1 １月のデータをアーカイブテーブルに移動する
BIGIN;

INSERT INTO 家計簿アーカイブ
SELECT * FROM 家計簿 WHERE 日付 <= '2018-01-31';

DELETE FROM 家計簿 WHERE 日付 <= '2018-01-31';

COMMIT;

--9-3 2月以降の行をロックして集計する
BEGIN ;
SELECT * FROM 家計簿
 WHERE 日付 >= '2018-02-01'
   FOR UPDATE;

SELECT ~ ;

COMMIT;

-- 9-4 家計簿テーブルをロックして集計する
BEGIN;
LOCK TABLE 家計簿 IN EXCLUSIVE MODE ;

SELECT ~ ;

COMMIT;
