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
			flex-wrap: wrap;
		}
		.sanpham img{
			padding: 20px;
			height: 400px;
			width: 400px;
		}
		.buy a{
			padding: 10px;
		}
	</style>
</head>
<body>
	<?php
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
								<li><a href="?danhmuc=<?php echo $key["danhmuc"]; ?>"><?php echo $key["danhmuc"]; ?></a></li>
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
				<a href="giohang.php" id="giohang"><i class="fa-solid fa-cart-shopping fa-xl" style="color: white;"></i></a>
				<?php 
					session_start();
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
					<p style="font-weight: bold;color: white;"><?php echo $key['tensp']; ?></p>
					
					<p style="color: red;"><?php echo number_format($key['dongia'], 0, ',', '.'); ?> ₫</p>
					<div class="buy">
						<input type="number" value="1" min="1" max="<?php echo $key['soluong']; ?>" name="">
						<i style="color: white;">  <?php echo $key['soluong']; ?> sản phẩm có sẵn</i>
						<div style="padding: 20px 0;">	
							<a href="" style="background: #a13333;">Mua ngay</a>
							<a href="" style="background: #3f62b5;">Thêm vào giỏ</a>						
						</div>
					</div>
				</div>
			</div>
			<div style="padding: 20px;"><p style="font-style: italic;color: #d1d1d1;"><?php echo $key['mota']; ?></p></div>
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
	
</script>
</html>