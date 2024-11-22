<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>Đăng ký</title>
</head>
<body>
	<a class="home" href="index.php"><svg  width="40" height="40" fill="none" viewBox="0 0 24 24"><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m4 12 8-8 8 8M6 10.5V19a1 1 0 0 0 1 1h3v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h3a1 1 0 0 0 1-1v-8.5"/></svg></a>
	<div class="formnhap">
		<form action="dangki.php" method="post" class="form">
			<h2 class="form-title">Đăng ký</h2>
			<div class="input-container">
			<input type="text" name="ten" placeholder="Họ và tên"><br>
			<input type="text" name="diachi" min="1000000000" placeholder="Địa chỉ"><br>
			<input type="number" name="sdt" min="100000000" placeholder="Số điện thoại"><br>
			<input type="text" name="username" placeholder="Tên đăng nhập"><br>
			<input type="password" name="password" placeholder="Mật khẩu"><br>
			<input type="password" name="checkpassword" placeholder="Xác nhận mật khẩu"><br>
			<button type="submit" class="submit">Đăng ký</button>
			<p class="signup-link">Đã có tài khoản vui lòng <a href="dangnhap.php">Đăng nhập</a></p>
		</form>
	</div>
</body>
</html>
<?php	
	session_start();
	if (!$_SESSION == false) {
		header("Location: index.php");                     
	}
	if(!$_POST) { exit();}
	$conn = new mysqli("localhost", "root", "", "shoptoy");
	// Lấy thông tin người dùng từ form đăng ký
	$username = $_POST["username"];
	$password = $_POST["password"];
	if (empty($_POST['ten']) || empty($_POST['diachi']) || empty($_POST['username']) || empty($_POST['password'])|| empty($_POST['sdt'])) {
		echo "<script>alert('Vui lòng nhập đầy đủ thông tin.')</script>";
  		return false;
	}
	if($_POST['password']!=$_POST['checkpassword']){
		echo "<script>alert('Mật khẩu không trùng khớp')</script>";
		return false;
	}
	// Kiểm tra xem tên đăng nhập đã tồn tại chưa
	$sql = "SELECT * FROM user WHERE taikhoan = '$username'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		echo "<script>alert('Tên đăng nhập đã tồn tại.')</script>";
	} else {
		// Thêm thông tin người dùng mới vào database
		$sql = "INSERT INTO user (taikhoan, matkhau, ten, diachi , sdt) VALUES ('{$_POST['username']}', '{$_POST['password']}' ,'{$_POST['ten']}','{$_POST['diachi']}','{$_POST['sdt']}')";
		$conn->query($sql);
		echo '<script>alert("Đăng ký thành công chuyển đến trang Đăng Nhập sau 5s")</script>';
		header("refresh: 5; url=dangnhap.php");
	}
	// Đóng kết nối database
	$conn->close();
?>
<script>alert("")</script>