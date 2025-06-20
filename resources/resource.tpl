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
            		<a class="item active" href="{$OVERVIEW_LINK}">{$OVERVIEW_TITLE}</a>
            		<a class="item" href="{$OTHER_RELEASES_LINK}">{$RELEASES_TITLE}</a>
            		<a class="item" href="{$VERSIONS_LINK}">{$VERSIONS_TITLE}</a>
            		<a class="item" href="{$REVIEWS_LINK}">{$REVIEWS_TITLE}</a>
        	</div>
	      <div class="forum_post">
	        {$DESCRIPTION}
	      </div>
            {if $HAS_CONTRIBUTORS eq 1}{$CONTRIBUTORS}{/if}

            <div style="padding: 0 1.42857143em 1em;">
		  <div class="ui divider"></div>

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

		  <span class="pull-right">
			{if isset($CAN_EDIT)}
				<a href="{$EDIT_LINK}" class="ui button">{$EDIT}</a>
				<a data-toggle="modal" data-target="#modal-icon-upload" class="ui button">{$CHANGE_ICON}</a>
				<div class="ui small modal" id="modal-icon-upload">
					<div class="header">
						{$CHANGE_ICON}
					</div>
					<div class="content">
					<form action="{$CHANGE_ICON_ACTION}" method="post" enctype="multipart/form-data" class="ui form" id="form-resource-icon">
						<div class="field">
							<input type="file" name="file" id="uploadFileButton" hidden onchange="$('#fileName').html(this.files[0].name)" />
							<label class="ui icon labeled default button" for="uploadFileButton">
								<i class="ui cloud upload icon"></i> <span id="fileName">{$UPLOAD_ICON}</span>
							</label>
						</div>
						<input type="hidden" name="token" value="{$TOKEN}">
						<input type="hidden" name="resource_id" value="{$RESOURCE_ID}" />
					</form>
					</div>
					<div class="actions">
						<a class="ui negative button">{$CANCEL}</a>
						<a class="ui positive button" onclick="$('#form-resource-icon').submit();">{$SUBMIT}</a>
					</div>
				</div>
			{/if}
			{if isset($MODERATION) && count($MODERATION)}
				<div class="ui pointing dropdown small primary button upward" tabindex="0">
				<span class="text">{$MODERATION_TEXT}</span>
					<i class="dropdown icon"></i>
					<div class="menu" tabindex="-1">
						<div class="header">{$MODERATION_TEXT}</div>
					    {foreach from=$MODERATION item=item}
						  <a class="item" href="{$item.link}">{$item.title}</a>
					    {/foreach}
					</div>
				</div>
			{/if}
		  </span>
        </div>
		</div>
		
    </div>

	  <div class="review">
	  <h1 class="reviewHeader">{$REVIEWS}</h1>

	  {if count($COMMENT_ARRAY)}
	    {foreach from=$COMMENT_ARRAY item=comment}
	    <div class="ui segment menu">
	      <div class="ui container">
	      <div class="review-avatar">
	          <a href="{$comment.user_profile}"><img class="ui rounded centered image" src="{$comment.user_avatar}" style="display:inline;" alt="{$comment.username}" /></a>
	      </div>
	      <div class="review-content">
	          <div class="review-stars">
	              <a href="{$comment.user_profile}" style="{$comment.user_style}">{$comment.username}</a>
	                <div class="star-rating view" style="display:inline;">
        		        <span class="far fa-star" data-rating="1" style="color:gold;"></span>
        		        <span class="far fa-star" data-rating="2" style="color:gold"></span>
        		        <span class="far fa-star" data-rating="3" style="color:gold;"></span>
        		        <span class="far fa-star" data-rating="4" style="color:gold;"></span>
        		        <span class="far fa-star" data-rating="5" style="color:gold;"></span>
        		        <input type="hidden" name="rating" class="rating-value" value="{$comment.rating}">
		            </div>
        		      <div class="review-date">
        		           Version: {$comment.release_tag} | <span data-toggle="tooltip" data-content="{$comment.date_full}">{$comment.date}</span>
        		      </div>
	          </div>
	          {$comment.content}
	          
	          {if isset($DELETE_REVIEW)}
				  <span class="res right floated"><a href="{$comment.delete_link}" onclick="return confirm('{$CONFIRM_DELETE_REVIEW}');">{$DELETE_REVIEW}</a></span><br />
			  {/if}
	      </div>
			  </div>
		  </div>
		  <br />
		{/foreach}
		{$PAGINATION}
	  {else}
	    <p>{$NO_REVIEWS}</p>
	  {/if}
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

	  {if $CAN_REVIEW == true && !isset($PAYMENT_PENDING) && !isset($PURCHASE_FOR_PRICE)}
	  <h4>{$NEW_REVIEW}</h4>
	  <form action="" method="post" class="ui form">
	    <div class="form-group">
		  <div class="star-rating set">
		    <span class="far fa-star" data-rating="1" style="color:gold;"></span>
		    <span class="far fa-star" data-rating="2" style="color:gold"></span>
		    <span class="far fa-star" data-rating="3" style="color:gold;"></span>
		    <span class="far fa-star" data-rating="4" style="color:gold;"></span>
		    <span class="far fa-star" data-rating="5" style="color:gold;"></span>
		    <input type="hidden" name="rating" class="rating-value" value="0">
		  </div>
		</div>
		<br />
	    <div class="form-group">
		  {if !isset($MARKDOWN)}
		  <textarea style="width:100%" name="content" id="editor" rows="15"></textarea>
		  {else}
		  <textarea class="form-control" style="width:100%" id="markdown" name="content" rows="20"></textarea>
		  <span class="pull-right"><i data-toggle="popover" data-placement="top" data-html="true" data-content="{$MARKDOWN_HELP}" class="fa fa-question-circle text-info" aria-hidden="true"></i></span>
		  {/if}
	    </div>
		<br />
		<div class="form-group">
		  <input type="hidden" name="token" value="{$TOKEN}">
		  <input type="submit" class="ui blue button" value="{$SUBMIT}">
		</div>
	  </form>
	  {/if}
    </div>

{include file='footer.tpl'}
