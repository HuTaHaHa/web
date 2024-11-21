<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<?php 
		$mang = [];
		$b=0;
	 ?>
<form action="" method="post">
    <?php for($i=1;$i<10;$i++) { ?>
        - <?php 
        echo $i;
    	?> -
        <input type="checkbox" name="a[]" value="<?php echo $i.",".$i*2 ?>">
        <input name="sl[]" type="number" value="1" min="1" id="sl">
        <br>
    <?php } ?>
    <input type="submit" name="submit">
</form>
</body>
</html>
<?php 
	if(!$_POST) { exit();}
	$a = $_POST["a"];
	$sl = $_POST["sl"];
	foreach($a as $b){
		$ma = explode(",", $b);
		$mang[] = ['a' => $ma[0], 'b' => $ma[1],'c' =>$sl[$ma[0]-1]];
	}
	print_r($mang);
 ?>