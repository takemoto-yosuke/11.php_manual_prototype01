<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（入力画面）</title>
</head>

<body>
  <a href="read.php">入力内容</a>
  <form action="create.php" method="POST">
  <fieldset>
    <div>
      タイトル: <input type="text" name="title">
    </div>
    <div>
      マニュアル: <input type="text" name="manual">
    </div>
    <div>
      <button>submit</button>
    </div>
  </fieldset>
</form>

</body>

</html>