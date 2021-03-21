<?php
session_start();
require_once "../back/connection.php";
           $getId = $_GET['id'];

           $query = "SELECT `id_book`, `author_book`, `name_book`, `description_book`, `img_book`, `status_book`
                        FROM `books` WHERE `id_book` = '$getId'";                        
            $resultSelect = mysqli_query($link, $query);
            $SelectRow = mysqli_fetch_assoc($resultSelect);
            $author_book = $SelectRow['author_book'];
            $name_book = $SelectRow['name_book'];
            $description_book = $SelectRow['description_book'];
            $img_book = $SelectRow['img_book'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/aboutbook.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
    <title>Описание книги</title>
</head>
    
<body>
<form method="GET" action="../html,php/library.php">
    <input type="submit" name="exit-button" value="Назад" id="backbtn">
    </form> 
<main>
    <div id="container">
        <p class="name_and_author"> <?=$author_book?></p>
        <p class="name_and_author">" <?=$name_book?> "</p>
        <div class='pic'>
            <?="<img src='$img_book' alt='#'' class='bookpic'>"?>
        </div>
            
        
        <div class="description">
            <p><?=$description_book?></p>
        </div>
    </div>
</main> 

</body>
</html>