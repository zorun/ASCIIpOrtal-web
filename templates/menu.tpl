
<ul class="menu">
  {foreach $menuitems as $item}
    {if $item@key eq $page}
      <li class="current_page">
    {else}
      <li>
    {/if}
    <a href="?{$item@key}">{$item}</a>
    </li>
  {/foreach}
</ul>
