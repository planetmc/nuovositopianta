{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="ui stackable grid" id="resources">
        <div class="ui breadcrumb">
            <a class="section" href="./">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section active" href="{$BACK_LINK}">Resources</a>
        </div>
    <div class="ui ten wide tablet twelve wide computer column">
        <div class="ui row">
			<div class="twelve wide column" id="resourcesList">
				<h1 style="display:inline" class="white">{$RESOURCES}</h1>

				<span class="res right floated">
                    <div class="ui dropdown blue button">
                        <span class="text">{$SORT_BY} {$SORT_BY_VALUE}</span> <i class="dropdown icon"></i>
                        <div class="menu">
                        {foreach from=$SORT_TYPES item=item}
                            <a rel="noopener nofollow" class="item" href="{$item.link}">{$item.sort}</a>
                        {/foreach}
                        </div>
                    </div>
			        {if isset($NEW_RESOURCE)}
				        <a href="{$NEW_RESOURCE_LINK}" class="ui blue button">{$NEW_RESOURCE}</a>
			        {/if}
			    </span>

				{if $LATEST_RESOURCES}
                    <div class=" ui padded resourceList">
                        {foreach from=$LATEST_RESOURCES item=resource}
                            <div class="resourceItem">
                                <div class="resourceImage"><img src="{$resource.icon}" class="ui medium rounded image"></div>
                                <div class="resourceDescription">
                                    <div class="resourceInfo">
                                        <h5 class="ui image header" style="margin: 0;">
											<a class="primar" href="{$resource.link}">{$resource.name}</a> <small>{$resource.version}</small> 
											{if isset($resource.price)}<span class="res right floated ui mini label" style="margin-left:5px;">{$resource.price} {$CURRENCY}</span>{/if}
										</h5>
										<div class="resourceSub">
										    <span>
        										<a href="{$resource.author_profile}" style="{$resource.author_style}">{$resource.author}</a>
        									</span> - <span data-toggle="tooltip" data-content="{$resource.updated_full}">{$resource.updated}        </span>
        									<div class="sub headerCategory">
											<i style="margin-right: 10px" class="fas fa-tag"></i>{$resource.category}
											</div>
										</div>
										<div class="content">
										    <div>	
											<div class="sub header">
												{if $resource.short_description}
													{$resource.short_description}
												{else}
													{$resource.description}
												{/if}
											</div>
											</div>
										</div>
									</div>
                                    <div class="resourceDetails">
                                        <div class="star-rating view">
                                            <span class="far fa-star" data-rating="1" style="color:gold;"></span>
                                            <span class="far fa-star" data-rating="2" style="color:gold"></span>
                                            <span class="far fa-star" data-rating="3" style="color:gold;"></span>
                                            <span class="far fa-star" data-rating="4" style="color:gold;"></span>
                                            <span class="far fa-star" data-rating="5" style="color:gold;"></span>
                                            <input type="hidden" name="rating" class="rating-value" value="{$resource.rating}">
                                        </div>
                                        <span>{$resource.downloads}</span>
                                    </div>
                                </div>
                            </div>
                        {/foreach}
                    </div>

					{$PAGINATION}

				{else}
					{$NO_RESOURCES}
				{/if}
			</div>
		</div>
    </div>
    <div class="ui six wide tablet four wide computer column">
        {include file='resources/categories.tpl'}

				{if count($WIDGETS_RIGHT)}
					{foreach from=$WIDGETS_RIGHT item=widget}
						{$widget}
					{/foreach}
				{/if}
    </div>
</div>

{include file='footer.tpl'}
