<?php

$version = "1.3beta5";
// temporary
$baseurl = "/zorun/releases";

// prevents being called directly
if (isset($page) && $page == "download") {

  $smarty->assign("version", $version);
  $smarty->assign("baseurl", $baseurl);
  $smarty->display("download.tpl");
  
}

?>