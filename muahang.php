<?php 
	session_start();
	$tk = $_SESSION['username'] ?? '';
	if(!$_POST) { exit();}
	$sl = $_POST["soluong"] ?? 0;
	$sp = $_POST["sp"] ?? 0;
	$conn = new mysqli("localhost", "root", "", "shoptoy");
	if ($sp!=0) {
		foreach($sp as $k){
			$ma = explode(",", $k);
			$kk = $sl[$ma[0]];
			$up = "UPDATE `sanpham` SET `soluong` = `soluong` - '$kk' WHERE `sanpham`.`masp` = '$ma[1]';";
			mysqli_query($conn, $up);
			$del = "DELETE FROM giohang WHERE `masp` = '$ma[1]' AND `taikhoan` = '$tk'";
			mysqli_query($conn, $del);
		}
	}
	$xoa = $_POST['xoa'] ?? 0 ;
	if($xoa != 0){
		$del = "DELETE FROM giohang WHERE `giohang`.`taikhoan` = '$tk' AND `giohang`.`masp` = '$xoa'";
		mysqli_query($conn, $del);
	}
	header("Location: giohang.php");
 ?>
 