{* first, CSS definition for links (yeah, defining CSS inside <body></body>
   is not clean, but anyway...) *}

<style type="text/css">
  {foreach $objs as $obj}
    .link_{$obj[0]} { background: url('static/objects/{$obj[0]}.png') no-repeat; padding-left: 10px; }
  {/foreach}
</style>


{* then actual content (static text first) *}
{markdown}
  {include "../content/features.markdown"}
{/markdown}



{* then the neat objects table *}

<table id="objects">
<tr>
  <th>Name</th>
  <th>Representation in map file</th>
  <th>Picture</th>
  <th>Description</th>
</tr>
{foreach $objs as $obj}
<tr>
  <td id="{$obj[0]}">{$obj[1]}</td>
  <td><strong>{$obj[2]}</strong></td>
  <td><a title="Permanent link to {$obj[1]}" href="#{$obj[0]}"><img alt="{$obj[0]}" src="static/objects/{$obj[0]}-big.png" /></a></td>
  <td>{markdown}{$descriptions[$obj[0]]}{/markdown}</td>
</tr>
{/foreach}
</table>