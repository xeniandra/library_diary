<?php
session_start();

if (empty($_SESSION['username'])) 
{
    header('Location: ../html,php/auth.php');
    exit();
}

else 
{
    header('Location: ../html,php/library.php');
    exit();
}