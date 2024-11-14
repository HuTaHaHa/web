<style type="text/css"></style>
<div class="wrapper">
	<input type="number" value="1" /><span class="input-button add">+</span><span class="input-button remove">-</span>
</div>
<div class="infos">
	Try to shift + click 
</div>
 
<script>
	// Select the elements
	const amountInput = document.getElementById('amountInput');
	const increaseButton = document.getElementById('increaseButton');
	const decreaseButton = document.getElementById('decreaseButton');
 
	// Increase the value
	increaseButton.addEventListener('click', () => {
		amountInput.value = parseInt(amountInput.value) + 1;
	});
 
	// Decrease the value and prevent going below 0
	decreaseButton.addEventListener('click', () => {
		amountInput.value = Math.max(0, parseInt(amountInput.value) - 1);
	});
</script>