<div class="ui vertical inverted sidebar menu left" id="toc">
  <div class="item">
    <h3>{$SITE_NAME}</h3>
  </div>
  {foreach from=$NAV_LINKS key=name item=item}
    {if isset($item.items)}
      <div class="item">
        <div class="header">{$item.title} <span class="icon">{$item.icon}</span></div>
        <div class="menu">
          {foreach from=$item.items item=dropdown}
            <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
          {/foreach}
        </div>
      </div>
    {else}
      <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
    {/if}
  {/foreach}
</div>


<div class="pusher">
  <div id="wrapper">
    <div class="header"style="background-image: linear-gradient(rgba(var(--banner-color)), rgba(var(--second-banner-color))), url('https://templates.jtgraphics.nl/flowx/news/uploads/template_banners/Background.png')">
        <div id="particles-js"></div>
        <div class="ui secondary small menu" id="navbar">
      <div class="ui container">
        <div class="right menu">
          {foreach from=$USER_SECTION key=name item=item}
            {if isset($item.items)}
              {if ($name == "account")}
                <a class="ui medium image label" data-toggle="popup" data-position="bottom right" id="button-{$name}">{$item.icon} {$item.title}</a>
              {else}
                <a class="ui small default icon button" data-toggle="popup" data-position="bottom right" id="button-{$name}">{$item.icon}</a>
              {/if}
              <div class="ui wide basic popup">
                <h4 class="ui header">{$item.title}</h4>
                <div class="ui relaxed link list" id="list-{$name}">
                  {foreach from=$item.items item=dropdown}
                    {if isset($dropdown.separator)}
                      <div class="ui divider"></div>
                    {else}
                      <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                    {/if}
                  {/foreach}
                </div>
                {if !empty($item.meta)}
                  <div class="ui link list">
                    <div class="ui divider"></div>
                    <a class="item" href="{$item.link}">{$item.meta}</a>
                  </div>
                {/if}
              </div>
            {else}
              {if ($name == "panel")}
                <a class="ui small primary icon button" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
              {elseif ($name == "register")}
                <a class="" href="{$item.link}" target="{$item.target}">{$item.title}</a>
              {else}
                <a class="" href="{$item.link}" target="{$item.target}">{$item.title}</a>
              {/if}
            {/if}
          {/foreach}
        </div>
      </div>
    </div>
    <div class="ui secondary small menu mainNav" id="nav">
      <div class="ui container">
          <div class="container flex">
            <div class="nav-left">
        {foreach from=$NAV_LINKS key=name item=item}
          {if isset($item.items) && ($item.order <= 99)}
            <div class="ui pointing dropdown link item">
              <span class="text">{$item.icon} {$item.title}</span> <i class="dropdown icon"></i>
              <div class="menu">
                <div class="header">{$item.title}</div>
                {foreach from=$item.items item=dropdown}
                  {if isset($dropdown.separator)}
                    <div class="divider"></div>
                  {else}
                    {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                  {/if}
                {/foreach}
              </div>
            </div>
          {elseif ($item.order <= 99)}
            <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
          {/if}
        {/foreach}
        </div>
        <div class="nav-mid">
        {foreach from=$NAV_LINKS key=name item=item}
          {if isset($item.items) && ($item.order == 100)}
            <div class="ui pointing dropdown link item">
              <span class="text">{$item.icon} {$item.title}</span> <i class="dropdown icon"></i>
              <div class="menu">
                <div class="header">{$item.title}</div>
                {foreach from=$item.items item=dropdown}
                  {if isset($dropdown.separator)}
                    <div class="divider"></div>
                  {else}
                    {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                  {/if}
                {/foreach}
              </div>
            </div>
          {elseif ($item.order == 100)}
            <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
          {/if}
        {/foreach}
        </div>
        <div class="nav-right">
        {foreach from=$NAV_LINKS key=name item=item}
          {if isset($item.items) && ($item.order >= 101 && $item.order <= 250)}
            <div class="ui pointing dropdown link item">
              <span class="text">{$item.icon} {$item.title}</span> <i class="dropdown icon"></i>
              <div class="menu">
                <div class="header">{$item.title}</div>
                {foreach from=$item.items item=dropdown}
                  {if isset($dropdown.separator)}
                    <div class="divider"></div>
                  {else}
                    {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                  {/if}
                {/foreach}
              </div>
            </div>
          {elseif ($item.order >= 101 && $item.order <= 250)}
            <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
          {/if}
        {/foreach}
        </div>
        <a class="toc item">
          <i class="sidebar icon"></i>
        </a>
      </div>
      </div>
    </div>
    <div class="container banner-bar">
        <div class="container flex">
            <div class="container server">
                <a class="copy" data-clipboard-text="{$SERVER_IP}" onclick="change_text();"><div class="server">
                    <div class="serverText">
                        <small class="ipCopy primary">{$SERVER_NAME}</small>
                        <div class="playersText" id="playersText"><span id="players"></span> Players Online</div>
                    </div>
                    <div class="serverIcon"><i class="fas fa-globe"></i></div>
                </div></a>
            </div>
            <div class="container logo"><a href="/"><img src="{if isset($LOGO_IMAGE)}{$LOGO_IMAGE}{else}{$NAMELESS_LOGO}{/if}"></a></div>
            <div class="container discord"><a href="{$DISCORD_LINK}" class="discordLink"><div class="discord">
                    
                    <div class="discordIcon"><i class="fab fa-discord"></i></div>
                    
                    <div class="discordText">
                        <small class="ipCopy primary">DISCORD SERVER</small>
                        <div class="membersText"><span id="count"></span> Players Online</div>
                    </div>
                    
                </div></a></div>
        </div>
        </div>
        
        <div class="secondNav">
          
          <div class="secondNavBar">
              {foreach from=$NAV_LINKS key=name item=item}
          {if isset($item.items) and ($item.order >= 251)}
            <div class="ui pointing dropdown link item">
              <span class="text">{$item.icon} {$item.title}</span><i class="dropdown icon"></i>
              <div class="menu">
                <div class="header">{$item.title}</div>
                {foreach from=$item.items item=dropdown}
                  {if isset($dropdown.seperator)}
                    <div class="divider"></div>
                  {else}
                    {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                  {/if}
                {/foreach}
              </div>
            </div>
          {elseif ($item.order >= 251)}
            <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
          {/if}
          {/foreach}
          </div>
    
    </div>
        
    </div>
        
        
        <div class="ui container">

            {if isset($NEW_UPDATE)}
            {if $NEW_UPDATE_URGENT eq true}
            <div class="ui negative icon message" id="update-message">
                {else}
                <div class="ui info icon message" id="update-message">
                    <i class="close icon"></i>
                    {/if}
                    <a href="{$UPDATE_LINK}">
                        <i class="download icon"></i>
                    </a>
                    <div class="content">
                        <div class="header">{$NEW_UPDATE}</div>
                        <ul class="list">
                            <li>{$CURRENT_VERSION}</li>
                            <li>{$NEW_VERSION}</li>
                        </ul>
                    </div>
                </div>
                {/if}

                {if !empty($ANNOUNCEMENTS)}
                {foreach from=$ANNOUNCEMENTS item=$ANNOUNCEMENT}
                <div class="ui {if $ANNOUNCEMENT->icon} icon {/if} message announcement"
                    id="announcement-{$ANNOUNCEMENT->id}"
                    style="background-color:{$ANNOUNCEMENT->background_colour}; color:{$ANNOUNCEMENT->text_colour}">
                    {if $ANNOUNCEMENT->closable}
                    <i class="close icon"></i>
                    {/if}
                    {if $ANNOUNCEMENT->icon}
                    <i class="{$ANNOUNCEMENT->icon} icon"></i>
                    {/if}
                    <div class="content">
                        <div class="header">{$ANNOUNCEMENT->header}</div>
                        <p>{$ANNOUNCEMENT->message|escape}</p>
                    </div>
                </div>
                {/foreach}
                {/if}

                {if isset($MUST_VALIDATE_ACCOUNT)}
                <div class="ui message">
                    {$MUST_VALIDATE_ACCOUNT}
                </div>
                {/if}