<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset ="utf-8">	
	<title>Venda de jogos online</title>
	<link rel="stylesheet" type="text/css" href="main.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="script.js"></script>
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
		<button class="campos"><a href="SingUp.php">Criar Conta</a></button>
		<button class="campos"><a href="Loja.php">Loja</a></button>
	</div>
	<form>
		<ul>
			<input type="text" placeholder="Nome" id="nome" name="nome">
		</ul>
		<ul>
			<input type="text" placeholder="Senha" id="senha" name="senha">
		</ul>
		<ul>
			<input type="button" id="entrar" value="ENTRAR">
		</ul>
	</form>
</body>
</html>
