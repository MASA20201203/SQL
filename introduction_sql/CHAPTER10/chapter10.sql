-- 10-1 家計簿テーブルを作成する
CREATE TABLE 家計簿 (
  日付      DATE,
  費目ID    INTEGER,
  メモ      VARCHAR(100),
  入金額    INTEGER,
  出金額    INTEGER
)

-- 10-2 家計簿テーブルに対する行の追加
INSERT INTO 家計簿 ( 日付, メモ, 出金額)
VALUES ('2018-04-12', '詳細は後で', 60000)

-- 10-3 家計簿テーブルを作成する
CREATE TABLE 家計簿 (
  日付      DATE,
  費目ID    INTEGER,
  メモ      VARCHAR(100)  DEFAULT '不明',
  入金額    INTEGER       DEFAULT 0,
  出金額    INTEGER       DEFAULT 0
)

