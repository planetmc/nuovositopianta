{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="ui stackable grid">
  <div class="ui centered row">
<div class="ui container">
    <div class="ui segment">
        <h2 class="ui header">{$404_TITLE}</h2>
        <div class="ui divider"></div>
        <p>{$CONTENT}</p>
        <div class="ui buttons">
            <button class="ui primary button" onclick="javascript:history.go(-1)">{$BACK}</button>
            <div class="or"></div>
            <a class="ui positive button" href="{$SITE_HOME}">{$HOME}</a>
        </div>
        <div class="ui divider"></div>
        <p>{$ERROR}</p>
    </div>
</div>
</div>
</div>
{include file='footer.tpl'}