<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Trang Chu</title>
	<link rel="stylesheet" type="text/css" href="index.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Modak&display=swap" rel="stylesheet">
</head>
	<?php
		session_start();
		$tk = $_SESSION['username'] ?? '';
		$b = "";
		if(!$_GET == false){
			$b = $_GET['danhmuc'];
		}
		if($b == ""){
			$sql = "SELECT * FROM sanpham";
		}else{
			$sql = "SELECT * FROM sanpham WHERE danhmuc = '$b'";
		}
		if(!$_POST == false) {
			$tukhoa = $_POST['tukhoa'];
			$sql = "SELECT * FROM sanpham WHERE tensp LIKE '%$tukhoa%'";
		}
		// Tạo kết nối
		$conn = new mysqli("localhost", "root", "", "shoptoy");

		// Lấy danh sách sản phẩm có giá trên 100.000
		$ketqua = $conn->query($sql);
		// Tạo mảng sản phẩm 
		$data = [];
		while ($row = $ketqua->fetch_assoc()) {
			$data[] = $row;
		}	
	?>
<body>
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
								<li id="sub"><a href="?danhmuc=<?php echo $key["danhmuc"]; ?>"><?php echo $key["danhmuc"]; ?></a></li>
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
	<div class="danhmuc"><h3><?php echo $b; ?></h3></div>
	<div class="mid">		
		<?php foreach ($data as $product): if($product['soluong']>0){?>
			<div class="product" onclick="sanpham(<?php echo $product['masp'] ?>)">
				<img src="<?php echo $product['hinhanh']; ?>" alt="<?php echo $product['tensp']; ?>">
				<div class="mota">
					<p style="font-style: italic;"><?php echo $product['tensp']; ?></p>
					<p style="color: red;"><?php echo number_format($product['dongia'], 0, ',', '.'); ?> ₫</p>
				</div>
			</div>
		<?php };endforeach;?>
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
	function sanpham(b){
		window.location.replace("./sanpham.php?sanpham="+b);
	}
</script>
</html>