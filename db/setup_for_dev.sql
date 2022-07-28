CREATE USER IF NOT EXISTS batch_user IDENTIFIED BY 'batch'; 
-- IDENTIFIED BY 'batch'で接続時のパスワードを設定しています。
-- サンプルデータを使用するだけのユーザーあればパスワードも直接書き込む形式で問題ないでしょう。

CREATE DATABASE IF NOT EXISTS batch_dev DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

GRANT ALL PRIVILEGES on batch_dev.* to batch_user;

CREATE DATABASE IF NOT EXISTS batch_test DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

GRANT ALL PRIVILEGES on batch_test.* to batch_user;
