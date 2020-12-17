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

-- (1)

