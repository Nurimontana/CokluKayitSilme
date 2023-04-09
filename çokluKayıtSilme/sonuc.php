<?php
$veritabaniBaglantisi   =   new PDO("mysql:host=localhost;dbname=coklukayit;charset=UTF8","root","");

function filtrele($değer){
    $bir    =   trim($değer);
    $iki    =   strip_tags($bir);
    $uc     =   htmlspecialchars($iki,ENT_QUOTES);
    $sonuc  =   $uc;
    return      $sonuc;
}

$gelenSecimDegerleri    =   $_POST["secim"];
$IDler                  =implode(",",$gelenSecimDegerleri); //$gelenSecimDegerleri'deki idlerin arasına , koyarak ayırıyor.

$sil    =   $veritabaniBaglantisi->prepare("DELETE  FROM kisiler WHERE id IN (?)");
$sil->execute([$IDler]);

header("location:index.php");
exit();


?>