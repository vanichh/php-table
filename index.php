<?php
$host = 'localhost';
$user = 'root';
$password = 'root';
$db_name = 'test';
session_start();
$link = mysqli_connect($host, $user, $password, $db_name);
mysqli_query($link, "SET NAMES 'utf8'");
if ($_GET['del'] != NULL) {
  $query = "DELETE FROM table_old WHERE id=$_GET[del]";
  mysqli_query($link,  $query);
}
if (!empty($_POST)) {
  $query = "INSERT INTO table_old SET name='$_POST[name]', age='$_POST[age]', salary='$_POST[salary]'";
  mysqli_query($link,  $query);
  //$_POST = NULL;
}
function input($type, $name)
{
  if (!empty($_POST)) {
    $value = $_POST[$name];
  } else {
    $value = '';
  }
  return "<input class='form__input' type=$type name=$name value=$value>";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <div class="container">
    <form action="" method="POST">
      <label>
        <p class="form__text">name</p><?php echo input("text", "name") ?>
      </label>
      <label>
        <p class="form__text">age</p><?php echo input("number", "age") ?>
      </label>
      <label>
        <p class="form__text">salary</p><?php echo input("number", "salary") ?>
      </label>
      <input type="submit" class="form__submit" name='add' value="Добавить работника">
    </form>
    <table>
      <thead>
        <tr>
          <th>id<a href="/?sorting=id">▼</a></th>
          <th>name</th>
          <th>age<a href="/?sorting=age">▼</a></th>
          <th>salary<a href="/?sorting=salary">▼</a></th>
          <th>Удаление</th>
        </tr>
      </thead>
      <tbody>
        <?php
        function querySorting($elem)
        {
          global $query;
          if ($_SESSION['sorting'] == $elem) {
            $desk = "";
            $_SESSION['sorting'] = NULL;
          } else {
            $desk = "DESC";
            $_SESSION['sorting'] = $elem;
          }
          $query = "SELECT * FROM table_old WHERE id>0 ORDER BY $elem $desk";
        }
        switch ($_GET['sorting']) {
          case 'id':
            querySorting('id');
            break;
          case 'age':
            querySorting('age');
            break;
          case 'salary':
            querySorting('salary');
            break;
          default:
            $query = "SELECT * FROM table_old";
        }
        $result = mysqli_query($link, $query) or die(mysqli_error($link));
        ?>
        <?php while ($rez = mysqli_fetch_assoc($result)) : ?>
          <tr>
            <td><?= $rez['id'] ?></td>
            <td><?= $rez['name'] ?></td>
            <td><?= $rez['age'] ?></td>
            <td><?= $rez['salary'] ?></td>
            <td><a href=<?= "/?del=" . $rez['id'] ?>>Удалить</a></td>
          </tr>
        <?php endwhile ?>
      </tbody>
    </table>
  </div>
</body>

</html>