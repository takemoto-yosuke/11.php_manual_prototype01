<?php
// POSTデータ確認

if (
  !isset($_POST['manual']) || $_POST['manual']==''
) {
  exit('ParamError');
}

$title = $_POST['title'];
$manual = $_POST['manual'];

// 各種項目設定
$dbn ='mysql:dbname=manual_prototype_1;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = 'root';

// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}


// SQL作成&実行
$sql = 'INSERT INTO manual(id, title, manual, created_at, updated_at) VALUES (NULL, :title, :manual, now(), now())';

$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':title', $title, PDO::PARAM_STR);
$stmt->bindValue(':manual', $manual, PDO::PARAM_STR);

// SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}



header('Location:input.php');
exit();