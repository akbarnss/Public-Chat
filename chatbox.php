<?php 
include("config.php");
if(isset($_SESSION['user'])){
?>
 <div class='msgs'>
  <?php include("msgs.php");?>
 </div>
 <form id="msg_form">
  <input name="msg" type="text" placeholder="Pesan.." />
 </form>
<?php 
}
?>