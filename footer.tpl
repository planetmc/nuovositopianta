</div>
</div>

  <div class="jtgraphics-footer">
  <div class="ui container">
      
      <div class="footerLogo"><img src="{if isset($LOGO_IMAGE)}{$LOGO_IMAGE}{else}{$NAMELESS_LOGO}{/if}">
      </div>
      <div class="footerLinks">
          <h1>{if isset($footerLinkTitle)}{$footerLinkTitle}{else}Useful Links{/if}</h1>
          {if isset($footerLinkName) && isset($footerLinkLink)}<a href="{$footerLinkLink}">{$footerLinkName}</a>{/if}
          {if isset($footerLinkName2) && isset($footerLinkLink2)}<a href="{$footerLinkLink2}">{$footerLinkName2}</a>{/if}
          {if isset($footerLinkName3) && isset($footerLinkLink3)}<a href="{$footerLinkLink3}">{$footerLinkName3}</a>{/if}
      </div>
      
      <div class="footerInfo">
          <h1>{$footerTitle}</h1>
          <p>{$footerText}</p>
          <a href="{$footerButtonLink}" class="item">{$footerButtonName}</a>
      </div>
  </div>
  </div>
  <div class="copyrightDiv">
        <div class="ui container terms">
            <div>
                <a class="item" href="{$TERMS_LINK}">{$TERMS_TEXT}</a>
                <a class="item" href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a>
            </div>
        </div>
        <div class="ui container">
        <small style="">Powered by <a class="primar" href="https://namelessmc.com/"> NamelessMC</a></small>
        <small style="text-align:center;">&copy; Copyright {'Y'|date}, {$SITE_NAME}</small>
        
        <small style="text-align: right;">Designed by <a class="primar" href="https://templates.jtgraphics.nl">Smashino</a></small>
    </div>
 </div>

{if isset($GLOBAL_WARNING_TITLE)}
<div class="ui medium modal" id="modal-acknowledge">
    <div class="header">
        {$GLOBAL_WARNING_TITLE}
    </div>
    <div class="content">
        {$GLOBAL_WARNING_REASON}
    </div>
    <div class="actions">
        <a class="ui positive button" href="{$GLOBAL_WARNING_ACKNOWLEDGE_LINK}">{$GLOBAL_WARNING_ACKNOWLEDGE}</a>
    </div>
</div>
{/if}

{foreach from=$TEMPLATE_JS item=script}
    {$script}
{/foreach}

{if isset($GLOBAL_WARNING_TITLE)}
<script type="text/javascript">
    $('#modal-acknowledge').modal({ closable: false }).modal('show');
</script>
{/if}

<script type="text/javascript">
    function toggleDarkLightMode() {
        $.post("{$DARK_LIGHT_MODE_ACTION}", { token: "{$DARK_LIGHT_MODE_TOKEN}" })
            .done(function () {
                window.location.reload();
            });

        return false;
    }

    {if !$LOGGED_IN_USER}
    const autoLanguage = document.getElementById('auto-language');
    const autoLanguageValue = $.cookie('auto_language') ?? 'true';
    autoLanguage.innerText = '{$AUTO_LANGUAGE_TEXT} (' + (autoLanguageValue === 'true' ? '{$ENABLED}' : '{$DISABLED}') + ')';
    {/if}

    function toggleAutoLanguage() {
        $.cookie(
            'auto_language',
            autoLanguageValue === 'true' ? 'false' : 'true',
            { path: '/' }
        );
        window.location.reload();
    }
</script>

{if isset($NEW_UPDATE) && ($NEW_UPDATE_URGENT != true)}
<script src="{$TEMPLATE.path}/js/core/update.js"></script>
{/if}

{if !isset($EXCLUDE_END_BODY)}
{if isset($DEBUGBAR_HTML)}
{$DEBUGBAR_HTML}
{/if}
</body>

</html>
{/if}

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/clipboard@2.0.6/dist/clipboard.min.js"></script>


<script>
var element = document.getElementById("count");
            $.get(`https://discordapp.com/api/guilds/{$GUILD_ID}/embed.json`, function (data) {
                element.innerHTML = data["presence_count"];
            });
            
$(document).ready(function() {

        getPlayer();

        setInterval(function() {

            getPlayer();

        }, 60 * 1000);

    });



    function getPlayer() {
        
        $.getJSON("https://api.mcsrvstat.us/1/{$SERVER_IP}", function(data) {
            $("#players").html(data.players.online);

        });

    }
</script>
    
<script src="{$TEMPLATE.path}/js/custom.js"></script>


<script>window.addEventListener('load', function () { themeToggle();})
</script>

{if $particles}<script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
<script id="rendered-js">
particleToggle();
    </script>{/if}
