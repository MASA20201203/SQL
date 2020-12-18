-- 問題11-1
A：ACID特性
B：制約
C：永続性
D：ログファイル
E：ロールフォワード

-- 問題11-2
-- (1)
学籍番号、名前
-- (2)
CREATE VIEW 学部名付き学生 AS
SELECT S.学籍番号, S.名前, S.生年月日, S.血液型
       S.学部ID, B.名前 AS 学部名
  FROM 学生 AS A
  JOIN 学部 AS B
    ON S.学部ID = B.ID
-- (3)
INSERT INTO 学生
     VALUES ('B1101022', '古島 進', '1993-02-12', 'A', 'K', ISTD.NEXTVAL)

-- 高速化の効果を測ろう
EXPLAIN SELECT * FROM 家計簿 WHERE メモ='不明'
