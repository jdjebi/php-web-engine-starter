<?php

  function get_user(){
    /* Retourne les utilisateurs */
    global $db;
    $q = $db->prepare("SELECT * FROM user ORDER BY name, surname");
    $q->execute();
    return $q->fetchAll(PDO::FETCH_OBJ);
  }

  function get_index(){
    /* Retourne l'index du moteur de recherche */
    global $db;
    $index = [];
    $q = $db->prepare("SELECT * FROM searchuserindex");
    $q->execute();
    $data = $q->fetchAll(PDO::FETCH_OBJ);
    foreach ($data as $data_row) {
      $q = $db->prepare("SELECT * FROM user WHERE id = $data_row->user_id ");
      $q->execute();
      $u = $q->fetchAll(PDO::FETCH_OBJ)[0];
      $index[] = [
        "user_fullname" => $u->name.' '.$u->surname,
        "keywords" => $data_row->keywords
      ];
    }
    return $index;
  }

  function search_user($search_query){
    /* Retourne les utilisateurs corespondant à la recherche */
    global $db;
    $users = [];
    $q = $db->prepare("SELECT * FROM searchuserindex WHERE keywords LIKE '%$search_query%' ");
    $q->execute();
    $data = $q->fetchAll(PDO::FETCH_OBJ);
    foreach ($data as $data_row) {
      $q = $db->prepare("SELECT * FROM user WHERE id = $data_row->user_id ");
      $q->execute();
      $u = $q->fetchAll(PDO::FETCH_OBJ)[0];
      $users[] = $u;
    }
    return $users;
  }

?>
