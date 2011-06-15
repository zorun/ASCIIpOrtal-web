
{* First, a title/presentation in markdown *}

{markdown}
  {include "../content/faq.markdown"}
{/markdown}

{* We then display a table of questions, with links *}

<ul class="toc">
  {foreach $faq as $faqitem}
    <li><a href="#{$faqitem@index}">{$faqitem.q}</a></li>
  {/foreach}
</ul>

{* Finally, a listing of all Q/A *}

{foreach $faq as $faqitem}
  <div class="faqitem" id="{$faqitem@index}">
    <h3 class="question">{$faqitem.q}</h3>
    <div class="answer">{markdown}{$faqitem.a}{/markdown}</div>
  </div>
{/foreach}
