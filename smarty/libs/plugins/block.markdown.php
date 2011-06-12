<?php
/**
 * Smarty plugin to process Markdown code
 * 
 * @package Smarty
 * @subpackage PluginsBlock
 * @author Luc Rocker
 */

/**
 * Smarty {markdown}{/markdown} block plugin
 * 
 * @param string $content contents of the block
 * @param object $template template object
 * @param boolean $ &$repeat repeat flag
 * @return string content re-formatted
 */
function smarty_block_markdown($params, $content, $template, &$repeat)
{ 
    return Markdown($content);
}

?>
