<br/><br/>
<?php 
if(isset($_POST['name']) && !isset($display_case)){
 $name=htmlspecialchars($_POST['name']);
 $sql=$dbh->prepare("SELECT name FROM chatters WHERE name=?");
 $sql->execute(array($name));
 if($sql->rowCount()!=0 || $_POST['name'] == ""){
  $ermsg="<div class='error'>Nama sudah terpakai. Coba gunakan nama yang lain.</div>";
 }else{
  $sql=$dbh->prepare("INSERT INTO chatters (name,seen) VALUES (?,NOW())");
  $sql->execute(array($name));
  $_SESSION['user']=$name;
 }
}elseif(isset($display_case)){
 if(!isset($ermsg)){
?>
 <form action="index.php" method="POST">
  <input name="name" class="feedback-input" placeholder="Nama kamu" required/>
  <button id="button-blue">Masuk</button>
 </form>
<?php 
 }else{
?>
 <form action="index.php" method="POST">
  <input name="name" class="feedback-input" placeholder="Nama kamu" required/>
  <button id="button-blue">Masuk</button>
 </form>
<?php 
  echo $ermsg;
 }
 echo '<p align="center">Ini adalah tempat chat room bersama orang-orang yang tidak anda kenal dan orang lain tidak mengetahui siapa anda. ^o^</p>';
}
?>
<footer><a href="http://ibacor.com" target="_BLANK">AKBARNSS</a></footer>
