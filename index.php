<?php

require "src/init.php";
require "functions.php";

$index = []; // Contient les données de l'index
$users = []; // Liste des utilisateurs
$search_query = ""; // Terme de recherche
$show_index = false; // Indique si la vue de l'index peut d'afficher
$show_search_results = false; // Indique si la vue  l'index affiche les résultats de recherche

if(isset($_GET['q']) and !empty($_GET['q'])){   /* Recherche */
  $search_query = trim($_GET['q']); // Supression des espaces en début et en fin
  $users = search_user($search_query);
  $show_search_results = true;

}else if(isset($_GET['index'])){   /* Affichage de l'index*/

  $index = get_index();
  $show_index = true;

}else{   /* Liste de tous les utilisateurs*/

  $users = get_user();

}

require "views/index.view.php";

?>
