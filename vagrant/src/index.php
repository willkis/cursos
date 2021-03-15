<?php
echo "Testatndo conexao <br /> <br />";
$servername = "192.168.50.53";
$username = "willian";
$pass = "pass";

//create connection

$conn = new mysqli($servername, $username, $pass);

if ($conn->connect_error) {
	die("Conexao falhou: " . $conn->connect_error);
}

echo "Conectado com sucesso";

?>
