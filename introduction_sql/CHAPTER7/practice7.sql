-- 問題7-1
A 単一行副問い合わせ
B SELECT
C SET
D N
E 1
F 複数行副問い合わせ
G ANY
H ALL
I FROM
J 表
K INSERT

-- 問題7-2
-- SQL文1
--副問い合わせ
  3
--全体
  25,200
-- SQL文2
--副問い合わせ
  S02, S01, E01, S02, E01
--全体
  E01 , S01, S02~
-- SQL文3
--副問い合わせ
  S02 6, S01 3, E01 3
--全体
  12, 3

-- 問題7-3
--(1)
INSERT INTO 頭数集計 (飼育県, 頭数)
SELECT 飼育県 , COUNT(*) AS 頭数
  FROM 個体識別
 GROUP BY 飼育県

--(2)
SELECT 都道府県名, 個体識別番号, 
       CASE 雌雄コード WHEN '1' THEN '雄'
                      WHEN '2' THEN '雌'
       END AS 雌雄
  FROM 個体識別
 WHERE 都道府県 IN (
                    SELECT 都道府県
                      FROM 頭数集計
                    ORDER BY 頭数 DESC
                    FETCH 0 ROWS
                    OFFSET NEXT 3 ROWS ONLY
                   )

--(3)
SELECT 個体識別番号,
        CASE 品種コード WHEN '01' THEN '乳用種'
                        WHEN '02' THEN '肉用種'
                        WHEN '01' THEN '交雑種'
        END AS 品種 ,
        出生日, 母牛番号
  FROM 個体識別
 WHERE 母牛番号 IN (
                    SELECT 母牛番号
                      FROM 個体識別
                      WHERE 品種コード = '01'
                    )
