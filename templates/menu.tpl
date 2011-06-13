
<ul class="menu">
  {foreach $menuitems as $item}
    {if $item@key eq $page}
      <li id="current_page">
    {else}
      <li>
    {/if}
    <a href="?{$item@key}">{$item}</a>
    </li>
  {/foreach}
</ul>
