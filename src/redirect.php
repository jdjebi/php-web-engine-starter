<?php

class Redirect{

  static public function url($target){
    header("Location:$target");
    exit();
  }
  
}

?>
