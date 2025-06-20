<div class="ui fluid card widget" id="widget-statistics">
    <div class="content">
  <h4 class="ui header">{$CATEGORIES}</h4>
	{foreach from=$CATEGORIES_LIST item=item}
	<a href="{$item.link}"><div class="description">
	<div class="ui list">
	  <div class="eight wide column">
	    {$item.name}
	  </div>
	  </div>
	  </div></a>
	{/foreach}
  </div>
</div>