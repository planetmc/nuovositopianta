<div class="ui fluid card widget" id="widget-statistics">
              <div class="content">
  <h4 class="ui header">{$RECENT_ACTIVITY}</h4>
  <small>
  {foreach from=$RECENT_ACTIVITY_LIST item=item}
  <div class="description">
      <div class="ui list">
                      <div class="item">
    <div class="ui middle aligned centered two column stackable grid">
      <div class="row">
        <div class="four wide column">
          <a href="{$item.updated_by_link}"><img class="ui circular image" style="max-height:40px;max-width:40px;" src="{$item.updated_by_avatar}" alt="{$item.updated_by_username}"/></a>
        </div>
        <div class="twelve wide column">
          <a href="{$item.link}">{$item.title}</a><br />
          <span data-toggle="tooltip" data-trigger="hover" data-content="{$item.updated}">{$item.updated_rough}</span><br />{$BY} <a class="{$item.updated_by_tag}"  href="{$item.updated_by_link}" style="{$item.updated_by_style}">{$item.updated_by_username}</a>
        </div>
        </div>
        </div>
      </div>
    </div>
    </div>
  {/foreach}
  </small>
  </div>
</div>