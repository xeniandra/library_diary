<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="../css/add_book.css">
    <title>Библиотека</title>
</head>
<body>
<form method="GET" action="../html,php/library.php">
    <input type="submit" name="exit-button" value="Назад" id="backbtn">
    </form>  
	<main>
		<div id="container">
			<form method="GET" action="../back/add.php">
				<p><input type="text" name="author_book" placeholder="Автор" required autofocus></p>
				<p><input type="text" name="name_book" placeholder="Название" required></p>
				<p><input type="url" name="img_book" placeholder="Обложка" required></p>
				<p><input type="text" name="description_book" placeholder="Описание" required></p>

				<p><label class="stat" for="status">Статус книги:</label>
					<select name="status" class="sel">
						<option value="my_books">Мои книги</option>
						<option value="wishes">Буду читать</option>
					</select>
				</p>
				<p><input type="submit" value="Добавить книгу" name="add" id="book_add"></p>
			</form>
		</div>
	</main>
</body>
</html>