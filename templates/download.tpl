
<h1>Download ASCIIpOrtal</h1>

<p>Latest version: <strong>{$version}</strong> ({$release_date})</p>

<table id="dl_list">

{* Windows version *}
<tr>
  <td><a href="{$filenames.win32}">
    <img src="static/windows.png" alt="Windows version" />
  </a></td>
  <td><strong>Windows</strong>
  {$sizes.win32}</td>
</tr>

{* Linux version, 32 bits *}
<tr>
  <td><a href="{$filenames.linux32}">
    <img src="static/linux.png" alt="Linux version" />
  </a></td>
  <td><strong>Linux (32 bits)</strong>
  {$sizes.linux32}</td>
</tr>

{* Linux version, 64 bits *}
<tr>
  <td><a href="{$filenames.linux64}">
    <img src="static/linux.png" alt="Linux version" />
  </a></td>
  <td><strong>Linux (64 bits)</strong>
  {$sizes.linux64}</td>
</tr>

{* Mac version (cynddl is responsible) *}
<tr>
  <td><a href="{$filenames.osx}">
    <img src="static/mac.png" alt="Mac OS X version" />
  </a></td>
  <td><strong>Mac OS X</strong>
  {$sizes.osx}</td>
</tr>

{* Source *}
<tr>
  <td><a href="{$filenames.src}">
    <img src="static/source.png" alt="Source" />
  </a></td>
  <td><strong>Source code</strong>
  {$sizes.src}</td>
</tr>
