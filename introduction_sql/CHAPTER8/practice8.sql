--問題8-1
--(1)
1312
--(2)
2412
--(3)
2412
NN3N
--(4)
1312

--問題8-2
--(1)
SELECT 社員番号, 社員.名前 AS 名前, 部署.名前 AS 部署名
  FROM 社員
  JOIN 部署
    ON 社員.部署ID = 部署.部署ID
--(2)
SELECT J.社員番号, S.名前 AS 名前, J.名前 AS 上司名
  FROM 社員 AS S
  LEFT JOIN 社員 AS J
    ON S.上司ID = J.社員番号
--(3)
SELECT 社員.社員番号, 社員.名前 AS 名前, 部署.名前 AS 部署名, 支店.名前 AS 勤務地
  FROM 社員
  JOIN 部署
    ON 社員.部署ID = 部署.部署ID
  JOIN 支店
    ON 社員.勤務地ID = 支店.支店ID
--(4)
SELECT B.支店ID AS 支店コード, B.名前 AS 支店名, S.名前 AS 支店長名, T.社員数 AS 社員数
  FROM 支店 AS B
  JOIN 社員 AS S
    ON B.支店長ID = S.社員番号
  JOIN (
        SELECT 勤務地ID, COUNT(*) AS 社員数 FROM 社員
         GROUP BY 勤務地ID
       ) AS T
    ON B.支店ID = T.勤務地ID
--(5)
SELECT S.社員番号 AS 社員番号, S.名前 AS 名前,
        D.名前 AS 本人勤務地, D2.名前 AS 上司勤務地
  FROM 社員 AS S
  JOIN 社員 AS S2
    ON S.上司ID = S2.社員番号 AND S.勤務地ID <> S2.勤務地ID
  JOIN 支店 AS D
    ON S.勤務地ID = D.支店ID
  JOIN 支店 AS D2
    ON S2.勤務地ID = D2.支店ID
    
