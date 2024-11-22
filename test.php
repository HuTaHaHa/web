<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Giỏ Hàng</title>
	<link rel="stylesheet" type="text/css" href="index.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Modak&display=swap" rel="stylesheet">
	<style type="text/css">
		.mid{
			width: 1100px;
			background: #3f3f3f;
			display: flex;
			flex-direction: column;
			min-height: 50vh;
		}
		table , tr{
			border-top:2px solid black;
			border-collapse: collapse;
			color: white;
		}
		tr{
			text-align: left;
		}
		td,th{
			padding: 30px;
		}
		th button{
			padding: 10px 50px;
			margin: 10px;
			border: solid #a13333 1px;
			color: white;
		}
		/*So Luong*/
		.soluong{
			display: flex;
		}
		input[type=number] ,.soluong i{
			text-align: center;
			border: none;
			width: 20px;
			background: gray;
		}
		input::-webkit-inner-spin-button {
		  -webkit-appearance: none;
		  margin: 0;
		}
	</style>
</head>
<body>
	<?php
		session_start();
		if (!$_SESSION) {
			header("Location: dangnhap.php");                     
		}
		$tk = $_SESSION["username"];
		// Tạo kết nối
		$conn = new mysqli("localhost", "root", "", "shoptoy");
		$sql = "SELECT sanpham.masp, sanpham.tensp, sanpham.dongia, giohang.soluong FROM sanpham JOIN giohang ON sanpham.masp = giohang.masp AND giohang.taikhoan = '$tk';";
		$ketqua = $conn->query($sql);
		$data = $ketqua->fetch_all(MYSQLI_ASSOC);
	?>
	<div class="top">
		<div class="login">
					
		</div>
		<div class="tool">		
			<div><a href="index.php"><h1>HUTA SHOP</h1></a></div>
			<div style="display:flex;align-items: center;">
				<nav>
					<ul>
						<li><a id="danhmuc" href="#">Danh Mục <i class="fa-solid fa-bars"></i></a>
							<ul class="sub-menu">
								<?php 
								$sql = "SELECT * FROM danhmuc";
								$danhmuc = $conn->query($sql);
								foreach ($danhmuc as $key) { ?>
								<li id="sub"><a href="index.php?danhmuc=<?php echo $key["danhmuc"]; ?>"><?php echo $key["danhmuc"]; ?></a></li>
								<?php } ?>
							</ul>
						</li>
					</ul>
				</nav>
				<form action="index.php" method="post">
					<input type="text" class="nhap" name="tukhoa">
					<button type="submit" class="tim"><i class="fa fa-search"></i></button>
				</form>
			</div>
			<div>
				<a href="giohang.php" id="giohang">
					<i class="fa-solid fa-cart-shopping fa-xl" style="color: white;"></i>
					<sup >
						<?php if ($tk!="") {
						$sql = "SELECT SUM(soluong) AS slgh FROM giohang WHERE taikhoan = '$tk'";
						$giohang =  $conn->query($sql) ?? 0;
						echo $giohang->fetch_assoc()["slgh"];}?></sup>
				</a>
				<?php 
					if (!$_SESSION == false) {
						echo '<a href="dangxuat.php"><i class="fa-solid fa-right-from-bracket fa-xl" style="color: #ffffff;"></i></a>';
					}else {
						echo '<a href="dangnhap.php" id="user"><i class="fa-regular fa-user fa-xl" style="color: white;"></i></a>';
					}
				?>
			</div>		
		</div>
	</div>
	<div class="mid">
		<div class="bang">	
			<form action="muahang.php" method="post">
				<table style="width:100%">
					<tr>
						<th></th>
						<th>Sản Phẩm</th>
						<th>Đơn Giá</th>
						<th>Số Lượng</th>
						<th>Số Tiền</th>
						<th>Thao Tác</th>
					</tr>
					<?php $i = 0 ;foreach ($ketqua as $key) { ?>
					<tr>
						<td><input type="checkbox" name="sp[]" value="<?php echo $i.",".$key['masp']; ?>"></td>	
						<td style="width: 300px;height: 50px"><?php echo $key['tensp']; ?></td>
						<td><?php echo number_format($key['dongia'], 0, ',', '.'); ?></td>
						<td>
							<?php 
								$masp = $key['masp'];
								$sql = "SELECT soluong FROM sanpham WHERE masp = '$masp'";
								$ketqua = mysqli_query($conn, $sql)->fetch_all();
							 ?>
							<i class="fa-solid fa-minus" onclick="tru(<?php echo $key['masp']; ?>)"></i>
							<input name="soluong[]" type="number" value="<?php echo $key['soluong']; ?>" min="1" max="<?php echo mysqli_query($conn, $sql)->fetch_all()[0][0]; ?>" id="<?php echo $key['masp']; ?>">
							<i class="fa-solid fa-plus" onclick="cong(<?php echo $key['masp']; ?>,<?php echo mysqli_query($conn, $sql)->fetch_all()[0][0]; ?>)"></i>
						</td>
						<td><?php echo number_format($key['dongia']*$key['soluong'], 0, ',', '.'); ?></td>
						<td><button type="submit" name="xoa" value="<?php echo $key['masp']; ?>" style="background: none;border: none;"><i class="fa-solid fa-trash fa-xl" ></i></button></td>
					</tr>
					<?php $i++; } ?>
					<tr>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th colspan="2" style="text-align:center;"><button type="submit" value="1" style="background: #a13333;">Mua Hàng</button></th>
					</tr>
				</table>		
			</form>
		</div>
	</div>
	<div class="bot">
		<div class="cot">
			<h3>Về chúng tôi</h3>
			<p>&copy; 2024 Công ty HUTA. Khám phá thế giới đồ chơi cùng Huta Shop, nơi có những món đồ chơi thú vị nhất dành cho các bạn !</p>
		</div>
		<div class="cot">
			<h3>Liên hệ</h3>
				<dl><i class="fa-solid fa-location-dot"></i> Số 456 Minh Khai, P.Vĩnh Tuy, Q.Hai Bà Trưng, TP.Hà Nội</dl>
				<dl><i class="fa-solid fa-location-dot"></i> Số 218 Đường Lĩnh Nam, Q.Hoàng Mai, TP.Hà Nội</dl>
				<dl><i class="fa-solid fa-phone"></i> 0369337783</dl>
				<dl><i class="fa-solid fa-envelope"></i> hungluuq@gmail.com</dl>
		</div>
		<div class="cot">
			<h3>Mạng xã hội</h3>
			<a href="#"><i class="fa-brands fa-facebook fa-2xl" style="color: #0065b3;"></i></a>
			<a href="#"><i class="fa-brands fa-tiktok fa-2xl" style="color: #000000;"></i></a>
			<a href="#"><i class="fa-brands fa-twitter fa-2xl" style="color: #74C0FC;"></i></a>
			<a href="#"><i class="fa-brands fa-youtube fa-2xl" style="color: #fe0606;"></i></a>
		</div>
	</div>
</body>
<script type="text/javascript">
	function getid(a) {	return document.getElementById(a);	}
	function cong(a,max) {getid(a).value = Math.min(max, parseInt(getid(a).value) + 1);}
	function tru(a) {getid(a).value = Math.max(1, parseInt(getid(a).value) - 1);}
</script>
</html>