<h3 class="ui header">
    {$PF_LATEST_POSTS_TITLE}
</h3>

{if isset($NO_POSTS)}
<div class="ui info message">
    <div class="content">
        {$NO_POSTS}
    </div>
</div>
{else}
{foreach from=$PF_LATEST_POSTS item=post}
<div class="container flex">
    <img class="ui mini circular image" src="{$AVATAR}" alt="{$NICKNAME}">
    <div class="latestPost">
        <div class="content">
            <h4 class="ui header" style="margin-bottom: .2em;"><a href="{$post.link}" data-toggle="popup">{$post.title}</a></h4>
            <div class="ui wide popup">
                <h4 class="ui header">{$post.title}</h4>
                {$post.date_full}
            </div>
            <div class="sub header">
                <a class="" href="" data-poload="" style="font-weight:500;">{$NICKNAME}</a>
                <div class="small sub header" data-toggle="tooltip" data-content="{$post.date_full}">{$post.date_friendly}
                </div>
            </div>
        </div>
        <div class="forum_post">{$post.content}</div>
    </div>
    
</div>
{/foreach}
{/if}