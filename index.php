<?php

require("smarty/libs/Smarty.class.php");
require_once("smarty/libs/plugins/modifier.markdown.php");

$pages = array("home", "download", "screenshot", "contribute", "faq");

// page name => displayed name in the menu
$menuitems = array("home" => "Home",
                   "download" => "Download",
                   "screenshot" => "Screenshots",
                   "contribute" => "Contribute",
                   "faq" => "FAQ");

$page = $pages[0];

foreach ($pages as $candidate) {
  if (isset($_GET["$candidate"])) {
    $page = $candidate;
  }
}


$smarty = new Smarty;

//$smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 120;


$smarty->assign('page', $page);
$smarty->assign('menuitems', $menuitems);

$smarty->display('header.tpl');
// Turn off caching completely for the menu
$smarty->insert('menu.tpl');


$smarty->display("$page.tpl");


$smarty->display('footer.tpl');

?>
