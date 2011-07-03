<?php

function transform_links(&$desc, $key, $obj) {
  // long form first: '{text}[object]'
  $desc = preg_replace("#\{([^\}]*)\}\[([^\]]*)\]#", "<a class=\"link_$2\" href=\"#$2\">$1</a>", $desc);
  // then short form: '{object}'
  $desc = preg_replace("#\{([^\}]*)\}#", "<a class=\"link_$1\" href=\"#$1\">$1</a>", $desc);
}

function transform_links_wrapper(&$desclist, $obj) {
  array_walk($desclist, "transform_links", $obj);
}

// prevents being called directly
if (isset($page) && $page == "features") {

  include('spyc/spyc.php');

  $yaml = Spyc::YAMLLoad('content/features.yaml');

  $objects = $yaml['objects'];
  $descriptions = $yaml['descriptions'];

  // transform internal links (like '{boulder}' or '{boulders}[boulder]')
  array_walk($descriptions, "transform_links_wrapper");

  $smarty->assign("objs", $objects);
  $smarty->assign("descriptions", $descriptions);
  $smarty->display("features.tpl");
  
}

?>