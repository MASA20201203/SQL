-- 問題 5-2
-- (1)
UPDATE 回答者
   SET 国名 =
   		CASE RIGHT('メールアドレス', 2)  WHEN 'jp' THEN '日本'
                                      WHEN 'uk' THEN 'イギリス'
                                      WHEN 'cn' THEN '中国'
                                      WHEN 'fr' THEN 'フランス'
                                      WHEN 'vn' THEN 'ベトナム'
      END

-- (2)
SELECT TRIM(メールアドレス) AS メールアドレス, 
       CONCAT(CASE WHEN 年齢 >= 20 AND 年齢 <=29 THEN "20代:"
                   WHEN 年齢 >= 30 AND 年齢 <=39 THEN "30代:" 
                   WHEN 年齢 >= 40 AND 年齢 <=49 THEN "40代:" 
                   WHEN 年齢 >= 50 AND 年齢 <=59 THEN "50代:" 
              END,
              CASE 性別 WHEN 'M' THEN '男性'
                        WHEN 'F' THEN '女性'
              END
              ) AS 属性
  FROM 回答者

-- 問題 5-3


