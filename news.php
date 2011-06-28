<?php

$news_dir = "content/news";

// predicate over the correct name of our news files
function newsp($file) {
  // must be 'yyyymmddhhmm'
  return (strlen($file) == 12 && is_numeric($file));
}

// convert a date like 'yyyymmddhhmm' to a timestamp
function date_to_timestamp($d) {
  return mktime(substr($d, 8, 2), // hour
                substr($d, 10, 2), // minute
                0, // second
                substr($d, 4, 2), // month
                substr($d, 6, 2), // day
                substr($d, 0, 4)); // year
}

// prevents being called directly
if (isset($page) && ($page == "news" || $page == "news_all")) {

  // reverse alphabetically sorting
  if (@$news = scandir($news_dir, 1)) {

    $news = array_values(array_filter($news, "newsp"));

    $smarty->assign("news", $news);
    $smarty->assign("news_date", array_map("date_to_timestamp", $news));
    $smarty->assign("news_dir", $news_dir);
    $smarty->assign("view_all", ($page == 'news_all'));
    $smarty->display("news.tpl");
  }
}

?>