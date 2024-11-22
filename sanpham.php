<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>San Pham</title>
	<link rel="stylesheet" type="text/css" href="index.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Modak&display=swap" rel="stylesheet">
	<style type="text/css">
		.sanpham{
			width: 1100px;
			background: #3f3f3f;
			display: flex;
			flex-direction: column;
		}
		.sanpham img{
			padding: 20px;
			height: 400px;
			width: 400px;
		}
		.buy button{
			padding: 10px;
			margin: 10px;
			border: solid #a13333 1px;
			color: white;
		}
		.mtmid p{
			margin: 30px 0;
		}
		.mota{
			padding: 20px;
		    display: flex;
		    flex-direction: column;
		    justify-content: space-between;
		}
		.mtmid label , #kho{
			color: white;
			font-style: italic;
			text-shadow: 0px 0px 5px #a13333;
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
		/*Zoom Anh*/
		.sanpham img:hover{
			transform: scale(1.1);
		}
	</style>
</head>
<body>
	<?php
		session_start();
		$tk = $_SESSION['username'] ?? '';
		$masp = "";
		if(!$_GET == false){
			$masp = $_GET['sanpham'];
		}
		// Tạo kết nối
		$conn = new mysqli("localhost", "root", "", "shoptoy");

		$sql = "SELECT * FROM sanpham WHERE masp=$masp";
		$ketqua = $conn->query($sql);
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
								<li><a href="index.php?danhmuc=<?php echo $key["danhmuc"]; ?>"><?php echo $key["danhmuc"]; ?></a></li>
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
					<sup>
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
		<div class="sanpham" >
			<?php foreach ($ketqua as $key) { ?>
			<div style="display: flex;">				
				<img src="<?php echo $key["hinhanh"]; ?>">
				<div class="mota">
					<b style="color: white;width: 300px;"><i><?php echo $key['tensp']; ?></i></b>
					<div class="mtmid">
						<p>						
							<label style="">Danh Mục</label>
							<a href="" style="color: white;padding: 20px;"><?php echo $key['danhmuc']; ?></a>
						</p>
												
						<div class="buy" style="padding: 20px 0;">	
							<form action="themgiohang.php" method="post">
								<div class="soluong">
									<label style="padding-right: 30px;">Số Lượng</label>
									<i class="fa-solid fa-minus" onclick="tru()"></i>
									<input type="hidden" name="sp" value="<?php echo $key['masp']; ?>">
									<input name="soluong" type="number" value="1" min="1" max="<?php echo $key['soluong']; ?>" id="soluong">
									<i class="fa-solid fa-plus" onclick="cong()"></i>
								</div>
								<p style="color: white;"><i id="kho"><?php echo $key['soluong']; ?> sản phẩm có sẵn</i></p>
								<p><i style="color: red;text-shadow: 0px 0px 3px #ffffff;"><?php echo number_format($key['dongia'], 0, ',', '.'); ?> ₫</i></p>
								<button type="submit" name="them" value="<?php echo $key['soluong']; ?>" style="background: #a13333;">Thêm vào giỏ</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div style="min-height: 50vh;padding: 20px 100px;line-height: 2; word-spacing: 2px;"><h3 style="text-align: center;color: white;"><ins>Mô tả sản phẩm</ins></h3><p style="font-style: italic;color: #d1d1d1;"><?php echo $key['mota']; ?></p></div>
			<?php } ?>
		</div>
	</div>
	<div class="bot">
		<div class="cot">
			<h3>Về chúng tôi</h3>
			<p>&copy; 2024 Công ty HUTA. Khám phá thế giới đồ chơi cùng Huta Shop, nơi có những món đồ chơi thú vị nhất dành cho các bạn !</p>
		</div>
		<div class="cot">
			<h3>Liên hệ</h3>
				<dl><i class="fa-solid fa-location-dot"></i><a 	href="https://maps.app.goo.gl/bnjZfmYcfeQL7AeAA" target="_blank" class="location-button">Số 456 Minh Khai, P.Vĩnh Tuy, Q.Hai Bà Trưng, TP.Hà Nội</a></dl>
				<dl><i class="fa-solid fa-location-dot"></i><a 	href="https://maps.app.goo.gl/FuhYpKcFu63Qqrs68" target="_blank" class="location-button"> Số 218 Đường Lĩnh Nam, Q.Hoàng Mai, TP.Hà Nội</a></dl>
				<dl><i class="fa-solid fa-phone"></i> 0369337783</dl>
				<dl><i class="fa-solid fa-envelope"></i><a href="https://mail.google.com/mail/?view=cm&fs=1&to=hungluuq@gmail.com" target="_blank" class="mail-button">hungluuq@gmail.com</a></dl>
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
	const soluong = document.getElementById('soluong');
	function cong() {soluong.value = Math.min(<?php echo $key['soluong']; ?>, parseInt(soluong.value) + 1);}
	function tru() {soluong.value = Math.max(1, parseInt(soluong.value) - 1);}
</script>
</html>
