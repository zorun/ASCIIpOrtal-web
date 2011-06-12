<?php

require("libs/Smarty.class.php");
require_once("libs/plugins/modifier.markdown.php");

$pages = array("home", "download", "screenshot", "contribute", "faq");

// page name => displayed name in the menu
$menuitems = array("home" => "Home",
                   "download" => "Download",
                   "screenshot" => "Screenshots",
                   "contribute" => "Contribute",
                   "faq" => "FAQ");

if (isset($_GET['page'])) {
  $page = $_GET['page'];
  if (!(in_array($page, $pages))) {
    $page = $pages[0];
  }
}
else {
  $page = $pages[0];
}


$smarty = new Smarty;

//$smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 120;


$smarty->assign('page', $page);
$smarty->assign('menuitems', $menuitems);

$smarty->display('header.tpl');
$smarty->display('menu.tpl');


$smarty->display("$page.tpl");


$smart->display('footer.tpl');

?>
