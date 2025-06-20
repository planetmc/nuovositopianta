{include file='header.tpl'}
{include file='navbar.tpl'}


<div class="ui stackable grid" id="vote">
  <div class="ui row">
{if isset($MESSAGE_ENABLED)}
    <div class="ui seven wide column">
      <div class="ui segment">
          <h2 class="ui header">{$VOTE_TITLE}</h2>
			<div class="content">
			  {$MESSAGE}
			</div>
	</div>
	</div>
	<div class="ui eight wide column">
		<div class="ui grid">
			{foreach from=$SITES item=site}
				<a class="fluid ui small primary button" href="{$site.url}" target="_blank" role="button"> {$site.name}</a>
			{/foreach}
		</div>
	  </div>
	</div>
{/if}

  </div>

{include file='footer.tpl'}