<?php
require_once ("baglan.php");
try {

}catch (PDOException $Hata){
    echo "Bağlantı Hatası <br/>".$Hata->getMessage();
    die();
}
?>
<!doctype html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="sonuc.php" method="post">
<table width="500" align="center">


<?php

$Sorgu   =  $veritabaniBaglantisi->prepare("SELECT * FROM kisiler");
$Sorgu->execute();
$KayitSayisi    =   $Sorgu->rowCount();
$kayit  =   $Sorgu->fetchAll(PDO::FETCH_ASSOC); //sorgudaki elemanları bir dizinin içinde tutar.

foreach ($kayit as $kayitSatirlari){
    ?>
<tr>
    <td width="25" height="30"> <input type="checkbox" name="secim[]" value="<?php echo $kayitSatirlari["id"] ?>"> </td>
    <td><?php echo $kayitSatirlari["ad"] . " " . $kayitSatirlari["soyad"] ?></td>;
</tr>
<?php
    }
?>
    <td colspan="2" align="left" width="50"><input type="submit" value="Seçili Olanları Sil"></td>


</table>
</form>
</body>
</html>