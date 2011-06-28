<?php

require("smarty/libs/Smarty.class.php");
require_once("smarty/libs/plugins/modifier.markdown.php");

$pages = array("news", "news_all", "about", "download", "screenshot", "contribute", "faq", "making_maps");

// page name => displayed name in the menu
$menuitems = array("news" => "News",
                   "about" => "About",
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
$smarty->caching = false;
$smarty->cache_lifetime = 120;


$smarty->assign('page', $page);
$smarty->assign('menuitems', $menuitems);

$smarty->display('header.tpl');
$smarty->display('menu.tpl');

switch ($page) {
  // Special case, as we use yaml
  case "faq":
    include("faq.php");
    break;
  // Download page
  case "download":
    include("download.php");
    break;
  case "news":
  case "news_all":
    include("news.php");
    break;
  default:
    $smarty->display("$page.tpl");
}


$smarty->display('footer.tpl');

?>
