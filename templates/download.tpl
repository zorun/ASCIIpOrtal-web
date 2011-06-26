
<h1>Download ASCIIpOrtal</h1>

<p>Latest version: <strong>{$version}</strong> ({$release_date})</p>

{* Windows version *}
<img src="static/windows.png" alt="Windows version" />

{* Linux version *}
<img src="static/linux.png" alt="Linux version" />

<ul>
{foreach $filenames as $key=>$filename}
  <li><a href="{$filename}">{$key}:</a> ({$sizes[$key]})</li>
{/foreach}
</ul>