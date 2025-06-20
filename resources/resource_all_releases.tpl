{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="ui stackable grid" id="resources">
        <div class="ui breadcrumb">
            <a class="section" href="./">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section active" href="{$BACK_LINK}">Resources</a>
        </div>
    <div class="ui ten wide tablet twelve wide computer column">
	    <div class="ui row" id="resourceTitle">
		    <div class="ui six wide column">
			<div class="description">
				<div class="ui relaxed list">
					<div class="item">
						<img class="ui rounded centered image" src="{$RESOURCE_ICON}" alt="{$RESOURCE_NAME}">
						<div class="content">
							<h2 class="header" style="display: block;">{$RESOURCE_NAME} <span>{$RELEASE_TAG}</span></h2>
							<span> {$RESOURCE_SHORT_DESCRIPTION}</span>
						</div>
					</div>
				</div>
			</div>
		    </div>
		    <div class="ui four wide column">
		        {if isset($LOG_IN_TO_DOWNLOAD)}
			  <button disabled class="ui blue disabled button">{$LOG_IN_TO_DOWNLOAD}</button>
        		  {/if}
        		  {if isset($DOWNLOAD_URL) && !(isset($LOG_IN_TO_DOWNLOAD))}
        			  <a href="{$DOWNLOAD_URL}" class="ui blue button" target="_blank">{$DOWNLOAD}</a>
        		  {elseif isset($PURCHASE_FOR_PRICE)}
        			  <a {if isset($PURCHASE_LINK)}href="{$PURCHASE_LINK}" {else}disabled {/if}class="ui blue{if !isset($PURCHASE_LINK)} disabled{/if} button">{$PURCHASE_FOR_PRICE}</a>
        		  {elseif isset($PAYMENT_PENDING)}
        			  <button type="button" disabled class="ui blue button">{$PAYMENT_PENDING}</button>
        		  {/if}
        		  {if isset($CAN_UPDATE)}
					    <a href="{$UPDATE_LINK}" class="ui blue button">{$UPDATE}</a>
				    {/if}
		    </div>
	    </div>
	    <div class="ui row" style="padding-top: 0;">
	    <div class="twelve wide column">
		<div class="ui tabular menu">
            		<a class="item" href="{$OVERVIEW_LINK}">{$OVERVIEW_TITLE}</a>
            		<a class="item active" href="{$OTHER_RELEASES_LINK}">{$RELEASES_TITLE}</a>
            		<a class="item" href="{$VERSIONS_LINK}">{$VERSIONS_TITLE}</a>
            		<a class="item" href="{$REVIEWS_LINK}">{$REVIEWS_TITLE}</a>
        </div>
        {foreach from=$RELEASES item=release}
		  <div class="releasesContainer">
		      <h4 class="ui header">
			  <a href="{$release.url}">{$release.name}</a>
			  <span class="res right floated">
				  <span data-toggle="tooltip" data-content="{$release.date_full}">{$release.date}</span>
			  </span>
    		  </h4>
    		  <div class="ui divider"></div>
			  <div class="forum_post">
				  {$release.description}
			  </div>
			  <br />
			  {$release.downloads} |
			  <div class="star-rating view" style="display:inline;">
				  <span class="far fa-star" data-rating="1" style="color:gold;"></span>
				  <span class="far fa-star" data-rating="2" style="color:gold"></span>
				  <span class="far fa-star" data-rating="3" style="color:gold;"></span>
				  <span class="far fa-star" data-rating="4" style="color:gold;"></span>
				  <span class="far fa-star" data-rating="5" style="color:gold;"></span>
				  <input type="hidden" name="rating" class="rating-value" value="{$release.rating}">
			  </div>
		  </div>

	  {/foreach}
	  {$PAGINATION}
	  </div>
	  </div>
	  </div>
	  
	  <div class="ui six wide tablet four wide computer column">
    <div class="ui fluid card widget" id="widget-statistics">
              <div class="content">
                <h4 class="ui header">{$RESOURCE}</h4>
                <div class="description">
                  <div class="ui list">
                      <div class="item">
                        <span class="text">{$VIEWS}</span>
                        <div class="description right floated"><b>{$VIEWS_VALUE}</b></div>
                      </div>
                      <div class="item">
                        <span class="text">{$TOTAL_DOWNLOADS}</span>
                        <div class="description right floated"><b>{$TOTAL_DOWNLOADS_VALUE}</b></div>
                      </div>
                    <div class="item">
                      <span class="text">{$FIRST_RELEASE}</span>
                      <div class="description right floated"><b>{$FIRST_RELEASE_DATE}</b></div>
                    </div>
                    <div class="item">
                      <span class="text">{$LAST_RELEASE}</span>
                      <div class="description right floated"><b>{$LAST_RELEASE_DATE}</b></div>
                    </div>
                    <div class="item">
                      <span class="text">{$CATEGORY}</span>
                      <div class="description right floated"><b>{$CATEGORY_VALUE}</b></div>
                    </div>
                    <div class="item">
                    <span class="text">{$RATING}</span>
                    <div class="description right floated">
                      <div class="star-rating view">
                        <span class="far fa-star" data-rating="1" style="color:gold;"></span>
                        <span class="far fa-star" data-rating="2" style="color:gold"></span>
                        <span class="far fa-star" data-rating="3" style="color:gold;"></span>
                        <span class="far fa-star" data-rating="4" style="color:gold;"></span>
                        <span class="far fa-star" data-rating="5" style="color:gold;"></span>
                        <input type="hidden" name="rating" class="rating-value" value="{$RATING_VALUE}">
                      </div>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="ui fluid card widget" id="widget-stats">
              <div class="content">
                <h4 class="ui header">{$RELEASE_VERSION}</h4>
                <div class="description">
                  <div class="ui list">
                      <div class="item">
                        <span class="text">{$DOWNLOADS}</span>
                        <div class="description right floated"><b>{$RELEASE_DOWNLOADS}</b></div>
                      </div>
                      <div class="item">
                        <span class="text">{$RELEASE}</span>
                        <div class="description right floated"><b>{$RELEASE_DATE_FULL}</b></div>
                      </div>
                    <div class="item">
                    <span class="text">{$RATING}</span>
                    <div class="description right floated">
                      <div class="star-rating view">
                        <span class="far fa-star" data-rating="1" style="color:gold;"></span>
                        <span class="far fa-star" data-rating="2" style="color:gold"></span>
                        <span class="far fa-star" data-rating="3" style="color:gold;"></span>
                        <span class="far fa-star" data-rating="4" style="color:gold;"></span>
                        <span class="far fa-star" data-rating="5" style="color:gold;"></span>
                        <input type="hidden" name="rating" class="rating-value" value="{$RELEASE_RATING}">
                      </div>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="ui fluid card widget" id="widget-online-staff">
                <div class="content">
                    <h4 class="ui header">{$AUTHOR}</h4>
                    <div class="description">
                        <div class="ui relaxed list">
                            <div class="item">
                                <a href="{$AUTHOR_PROFILE}"><img src="{$AUTHOR_AVATAR}" class="ui rounded centered image" alt="{$AUTHOR_NICKNAME}" style="max-height:80px; max-width:80px;width: clamp(30px, 2.5vw, 80px);margin-right: 1em;" /></a>
                                <div class="content">
                                    <a class="" href="{$AUTHOR_PROFILE}" data-poload=""
                                        style="{$AUTHOR_STYLE}">{$AUTHOR_NICKNAME}</a>
                                </div>
                            </div>

			                
                        </div>
                        
                        <a id="otherResources" href="{$AUTHOR_RESOURCES}">&raquo; {$VIEW_OTHER_RESOURCES}</a>
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}
