-- 11-1 家計簿テーブルにインデックスを2つ作る
CREATE INDEX 費目IDインデックス ON 家計簿(費目ID);
CREATE INDEX メモインデックス ON 家計簿(メモ);
