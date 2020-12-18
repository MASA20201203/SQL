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

-- 10-4 列の追加と削除
ALTER TABLE 家計簿 ADD 関連日 DATE;

ALTER TABLE 家計簿 DROP 関連日;

--全件データ削除
TRUNCATE TABLE 家計簿

-- 10-5 基本的な3つの制約を活用
CREATE TABLE 家計簿 (
  日付      DATE          NOT NULL,
  費目ID    INTEGER,
  メモ      VARCHAR(100)  DEFAULT '不明' NOT NULL,
  入金額    INTEGER       DEFAULT 0 CHECK (入金額 >= 0),
  出金額    INTEGER       DEFAULT 0 CHECK (出金額 >= 0)
);
CREATE TABLE 費目 (
  ID        INTEGER,
  名前      VARCHAR(40)  UNIQUE
);

-- 10-6 デフォルト値が設定されていれば、エラーにならない
INSERT INTO 家計簿 ( 日付, 費目ID, メモ, 入金額, 出金額)
     VALUES ('2018-04-04', 2, '家賃', 0, 60000)

INSERT INTO 家計簿 ( 日付, 費目ID, 入金額, 出金額)
     VALUES ('2018-04-05', 3, 0, 1350)

-- 10-7 主キー制約の指定(1)
CREATE TABLE 費目 (
  ID        INTEGER      PRIMARY KEY,
  名前      VARCHAR(40)  UNIQUE
);

-- 10-8 主キー制約の指定(2)
CREATE TABLE 費目 (
  ID        INTEGER,
  名前      VARCHAR(40)  UNIQUE
  PRIMARY KEY(ID, 名前)
);














