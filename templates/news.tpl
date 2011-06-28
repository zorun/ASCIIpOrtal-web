{* nb_news_displayed *}
{config_load file="asciiportal.conf" section="news"}

<div id="top"></div>

{* display wanted number of items, but stop if we don't have enough available *}
{for $id=0 to #nb_news_displayed#-1 max={$news|@count}}
  <div class="newsitem">
  
  {markdown}
    {include "{$news_dir}/{$news[$id]}"}
  {/markdown}
  
  <a class="back_top" href="#top">Back to top</a>
  <p class="date">Posted {$news_date[$id]|date_format:"%B %e, %Y"} at {$news_date[$id]|date_format:"%H:%M"}</p>
</div>
{forelse}
  <h4>No news at the moment</h4>
{/for}

<a href="?news_all">View all news</a>
