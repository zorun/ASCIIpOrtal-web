<?php

// prevents being called directly
if (isset($page) && $page == "faq") {

  include('spyc/spyc.php');

  $faq = Spyc::YAMLLoad('content/faq.yaml');
  
  $smarty->assign("faq", $faq);
  $smarty->display("faq.tpl");
  
}

?>