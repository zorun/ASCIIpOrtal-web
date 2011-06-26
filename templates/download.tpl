
<h1>Download ASCIIpOrtal</h1>

<p>Latest version: <strong>{$version}</strong> ({$release_date})</p>

{* Windows version *}
<div class="dl_box">
  <a href="{$filenames.win32}">
    <img src="static/windows.png" alt="Windows version" />
  </a>
  <strong>Windows</strong>
  {$sizes.win32}
</div>

{* Linux version, 32 bits *}
<div class="dl_box">
  <a href="{$filenames.linux32}">
    <img src="static/linux.png" alt="Linux version" />
  </a>
  <strong>Linux (32 bits)</strong>
  {$sizes.linux32}
</div>

{* Linux version, 64 bits *}
<div class="dl_box">
  <a href="{$filenames.linux64}">
    <img src="static/linux.png" alt="Linux version" />
  </a>
  <strong>Linux (64 bits)</strong>
  {$sizes.linux64}
</div>

{* Mac version (need someone to take care of) *}
<div class="dl_box">
  <img src="static/mac.png" alt="Mac OS X version" />
  <strong>Mac OS X</strong>
  <p>Needs someone to build & package...</p>
</div>

{* Source *}
<div class="dl_box">
  <a href="{$filenames.src}">
    <img src="static/source.png" alt="Source" />
  </a>
  <strong>Source code</strong>
  {$sizes.src}
</div>
