<?php

require "src/init.php";
require "functions.php";

require_once 'vendor/autoload.php';

// Création des utilisateurs
$faker = Faker\Factory::create();
$max_user = 50;

for ($i = 0; $i < $max_user; $i++){
  $name = $faker->lastName();
  $surname = $faker->firstName();
  $q = $db->prepare("INSERT INTO user(name,surname) VALUES(?,?)");
  $q->execute([$name,$surname]);
  $users[] = [$name,$surname];
}

// Création de l'index de Recherche
$users = get_user();

// Créatiion des mots clés
foreach ($users as $user) {
  $keywords = [];
  $name = $user->name;
  $surname = $user->surname;
  $fullname = $name.' '.$surname;
  $fullname_inverse = $surname.' '.$name;
  $keywords = implode(";", [$name,$surname,$fullname,$fullname_inverse]);
  $q = $db->prepare("INSERT INTO searchuserindex(user_id,keywords) VALUES(?,?)");
  $q->execute([$user->id,$keywords]);
}

Redirect::url("index.php");

?>
