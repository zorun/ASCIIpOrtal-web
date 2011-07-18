<?php

function format_bytes($size) {
  $units = array(' B', ' KiB', ' MiB', ' GiB', ' TiB');
  for ($i = 0; $size >= 1024 && $i < 4; $i++) $size /= 1024;
  return round($size, 2).$units[$i];
}

function get_fullpath($file) {
  return '../releases/'.$file;
}

function get_size($file) {
  return format_bytes(filesize($file));
}

// prevents being called directly
if (isset($page) && $page == "download") {

  include('spyc/spyc.php');

  // information about which version are available, along with the date
  $downloads = Spyc::YAMLLoad('content/download.yaml');

  // we only need the latest version here
  $version = $downloads[0][0];
  $date = $downloads[0][1];

  $filenames = array_map("get_fullpath",
                         array('src' => "$version/asciiportal-$version-src.tar.gz",
                               'win32' => "$version/asciiportal-$version-win32.zip",
                               'linux32' => "$version/asciiportal-$version-linux32.tar.xz",
                               'linux64' => "$version/asciiportal-$version-linux64.tar.xz",
                               'osx' => "$version/asciiportal-$version-osx.dmg"));

  // check the sizes of the files
  $sizes = array_map("get_size", $filenames);

  $smarty->assign("version", $version);
  $smarty->assign("release_date", $date);
  $smarty->assign("filenames", $filenames);
  $smarty->assign("sizes", $sizes);
  $smarty->display("download.tpl");
  
}

?>