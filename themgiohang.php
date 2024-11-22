<?php 
	session_start();
	if (!$_SESSION) {
		header("Location: dangnhap.php");                     
	}
	$tk = $_SESSION['username'] ?? '';
	if(!$_POST) { exit();}
	$sl = $_POST["soluong"]??0;
	$masp = $_POST["sp"]??0;
	$conn = new mysqli("localhost", "root", "", "shoptoy");
	$them = $_POST["them"] ?? 0;

	echo $sl."--".$masp."--".$them;
	if($them != 0){
		$ktsql = "SELECT * FROM giohang WHERE `giohang`.`taikhoan` = '$tk' AND `giohang`.`masp` = '$masp'";
		if(mysqli_query($conn, $ktsql)->num_rows > 0){
			$sql = "UPDATE `giohang` SET `soluong` = `soluong` + '$sl' WHERE `giohang`.`taikhoan` = '$tk' AND `giohang`.`masp` = '$masp'";
			mysqli_query($conn, $sql);
		}else{
			$sql = "INSERT INTO `giohang` (`id`, `taikhoan`, `masp`, `soluong`) VALUES (NULL, '$tk', '$masp', '$sl');";
			mysqli_query($conn, $sql);
		}
	}
	header("Location: ./sanpham.php?sanpham=$masp");
 ?>
