<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>Đăng nhập</title>
</head>
<body>
	<a class="home" href="index.php"><svg  width="40" height="40" fill="none" viewBox="0 0 24 24"><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m4 12 8-8 8 8M6 10.5V19a1 1 0 0 0 1 1h3v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h3a1 1 0 0 0 1-1v-8.5"/></svg></a>
	<div class="formnhap">
		<form method="post" class="form">
			<h2  class="form-title">Đăng nhập</h1>
			<div class="input-container">
			<input type="text" name="username" placeholder="Tên đăng nhập"><br>
			<input type="password" name="password" placeholder="Mật khẩu"><br>
			<button type="submit" class="submit">Đăng nhập</button>
			<p class="signup-link">Chưa có tài khoản vui lòng <a href="dangki.php">Đăng ký</a></p>
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
		// Kiểm tra xem tên đăng nhập và mật khẩu có tồn tại trong database hay không
	$username = $_POST["username"];
	$password = $_POST["password"];
	$sql = "SELECT * FROM user WHERE taikhoan = '$username' AND matkhau = '$password'";
	$result = $conn->query($sql);
		// Nếu tồn tại, lưu thông tin người dùng vào session
	if ($result->num_rows > 0) {
		$row = $result->fetch_assoc();
		session_start();
		$_SESSION["username"] = $row["taikhoan"];
		header("Location: index.php");
	} else {
		echo "<p>Tên đăng nhập hoặc mật khẩu không chính xác.</p>";
	}
	// Đóng kết nối database
	$conn->close();
?>