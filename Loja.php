<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset ="utf-8">	
	<title>Venda de jogos online</title>
	<link rel="stylesheet" type="text/css" href="main.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	</script>
</head>
<body>
	<form class="cabecalho" method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
		<input type="image" class="cabecalho" id="logo" src="logo.png">
		<input type="text" class="cabecalho" id="campopesquisa" placeholder="Pesquise um jogo aqui" name="pesquisajogo">
		<button type="submit" style="border: 0; background: transparent">
			<img src="pesquisar.png" style="width: 25%; display: flex;">
		</button>
	</form>
	<div id="nav-bar">
		<button class="campos">Sobre</button>
		<button class="campos">Carrinho</button>
		<button class="campos"><a href="Login.php">Entrar</a></button>
	</div>
	<?php
		$conn = mysqli_connect("localhost", "root", "", "loja_digital");
		$nome = htmlspecialchars($_REQUEST["pesquisajogo"]);
		$sql = "SELECT * FROM jogo WHERE nome LIKE '%$nome%'";
		$jogos = mysqli_query($conn, $sql);
		if(mysqli_num_rows($jogos) > 0) {
			$contagem = 1;
			while($linha = mysqli_fetch_assoc($jogos)) {
				if ($contagem == 1){
					echo "<div class='jogos-flex-box'>";
				}
				echo "<div><img src='logo.png'><p>$linha[nome]</p></div>";
				/*
				if (empty($linha[imagem])){
					echo "<div><img src='logo.png'><p>$linha[nome]</p></div>";
				} else {
					echo "<div><img src='$linha[imagem]'><p>$linha[nome]</p></div>";
				} */
				if ($contagem == 3){
					echo "</div>";
					$contagem = 0;
				}
				$contagem = $contagem + 1;
			}
		}
	?>
</body>
</html>
