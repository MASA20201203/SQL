-- 10-1 家計簿テーブルを作成する
CREATE TABLE 家計簿 (
  日付      DATE,
  費目ID    INTEGER,
  メモ      VARCHAR(100),
  入金額    INTEGER,
  出金額    INTEGER
)

-- 10-2 家計簿