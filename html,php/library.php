<?php
session_start();
require_once "../back/connection.php";

if (empty($_SESSION['username'])) {
    header('Location: auth.php');
    exit();
}

        $SESSIONname = $_SESSION['username'];
        $query_id = "SELECT id_user FROM users WHERE login = '$SESSIONname'";
        $result_id = mysqli_query($link, $query_id);
        $id_data = mysqli_fetch_row($result_id);
        $id_user = $id_data[0];  
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="width=720">
    <link rel="stylesheet" href="../css/homepage.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css">
    <title>Библиотека</title>
</head>
<body>
   


    <form method="GET" action="../back/logout.php">
    <input type="submit" name="exit-button" value="Выход" id="backbtn">
    </form>  
<main> 
<div id="container">
        <div class="mybooks swiper-container">
        <?php
                $query = "SELECT `id_book`, `author_book`, `name_book`, `description_book`, `img_book`, `status_book` FROM `books` WHERE `id_user` = '$id_user' AND `status_book` = 'my_books'";                        
                $result = mysqli_query($link, $query);
                $row = mysqli_num_rows($result);
                echo "<div class='swiper-wrapper'>";

                if ($row == 0) {
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ</p></a> </div>";
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ</p></a> </div>";
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ </p></a> </div>";
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ</p></a> </div>";
                    }
                
                else{
                    while ($row_data = mysqli_fetch_row($result)) {
                        echo "<div class='swiper-slide'>";
echo "<a href='aboutbook.php?id=".$row_data[0]."'><img src='$row_data[4]' alt='Описание'><p class='author'>$row_data[2]</p> </a>";
                        echo "</div>";
        }
                }
                echo "</div>";
            ?>

            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
            
        </div>

        <div class="wishbooks swiper-container">
        <?php
            $query = "SELECT `id_book`, `author_book`, `name_book`, `description_book`, `img_book`, `status_book` FROM `books` WHERE `id_user` = '$id_user' AND `status_book` = 'wishes'";                        
                            $result = mysqli_query($link, $query);
                $row = mysqli_num_rows($result);
                echo "<div class='swiper-wrapper'>";

                if ($row == 0) {
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ </p></a> </div>";
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ</p></a> </div>";
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ </p></a> </div>";
                echo "<div class='swiper-slide'><a href=''><img src='../img/null.png'><p class='author'> НЕТ КНИГИ</p></a> </div>";
            
                
                    }
                
                else{
                    while ($row_data = mysqli_fetch_row($result)) {
                        echo "<div class='swiper-slide'>";
echo "<a href='aboutbook.php?id=".$row_data[0]."'><img src='$row_data[4]' alt='Описание'><p class='author'>$row_data[2]</p> </a>";
                        echo "</div>";
        }
                }
                echo "</div>";
            ?>
                            
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
            
        </div>
            <div class="imgbook">
                <a href="add_book.php" class="addbookimga"> <img src="../img/addbook.png" alt="#" id="addbookimg"></a>
            </div>
        </div>
        <script src="https://unpkg.com/swiper/js/swiper.js"></script>
        <script src="../back/main.js"></script>
</div>
</main>

</body>
</html>