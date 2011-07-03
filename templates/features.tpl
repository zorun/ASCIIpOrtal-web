{* first, CSS definition for links (yeah, defining CSS inside <body></body>
   is not clean, but anyway...) *}

<style type="text/css">
  {foreach $objs as $obj}
    .link_{$obj[0]} { background: url('static/objects/{$obj[0]}.png') no-repeat; padding-left: 10px; }
  {/foreach}
</style>


{* then actual content *}

{markdown}
{foreach $objs as $obj}
<h3 id="{$obj[0]}"><a title="Permanent link to {$obj[1]}" href="#{$obj[0]}"><img alt="{$obj[0]}" src="static/objects/{$obj[0]}.png" /></a> {$obj[1]}</h3>

{foreach $descriptions[$obj[0]] as $desc}
* {$desc}
{/foreach}

{/foreach}
{/markdown}