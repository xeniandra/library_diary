<?php
session_start();
require_once "../back/connection.php";
	$author_book = $_GET['author_book'];
	$name_book = $_GET['name_book'];
	$img_book = $_GET['img_book'];
	if (!@getimagesize($img_book)) {	
			$img_book = '../img/dontload.png';
		}
	$description_book = $_GET['description_book'];
	$status = $_GET['status'];

	$login = $_SESSION['username'];
	$query_id = "SELECT id_user FROM users WHERE login = '$login'";
    $result_id = mysqli_query($link, $query_id);
    $id_data = mysqli_fetch_row($result_id);
    $id_user = $id_data[0];  
	// запрос на добавление в базу
    $query = "INSERT INTO `books` (`id_book`, `author_book`, `name_book`, `description_book`, `img_book`, `status_book`, `id_user`) VALUES (NULL, '$author_book', '$name_book', '$description_book', '$img_book', '$status', '$id_user')";
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
	mysqli_close($link);
	header('Location: ../html,php/library.php');
