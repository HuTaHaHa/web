<?php 
	if(!$_POST) { exit();}
	$sl = $_POST["soluong"];
	$sp = $_POST["sp"];
	$conn = new mysqli("localhost", "root", "", "shoptoy");
	foreach($sp as $k){
		$ma = explode(",", $k);
		$kk = $sl[$ma[0]];
		$sql = "UPDATE `sanpham` SET `soluong` = `soluong` - $kk WHERE `sanpham`.`masp` = $ma[1];";
		mysqli_query($conn, $sql);
	}
	//header("Location: giohang.php");
 ?>