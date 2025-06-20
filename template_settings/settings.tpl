<div style="display:flex; gap: 2em;">
    <div style="flex: 0 1 300px;">
        <a onclick="setCatg('general');" class="card-header catglink general" style="display:block;">General</a>
        <a onclick="setCatg('topheader');" class="card-header catglink topheader" style="display:block;">Header</a>
        <a onclick="setCatg('footer');" class="card-header catglink footer" style="display:block;">Footer</a>
    </div>
    <div style="flex: 1;">
<form action="" method="post">
    <div class="catg general" style="display:block;">
        <div class="form-group">
            <label for="inputDarkMode">{$DARK_MODE}</label>
            <select name="darkMode" class="form-control" id="inputDarkMode">
                <option value="0"{if $DARK_MODE_VALUE eq '0'} selected{/if}>{$DISABLED}</option>
                <option value="1"{if $DARK_MODE_VALUE eq '1'} selected{/if}>{$ENABLED}</option>
            </select>
        </div>
        <div class="form-group">
            <label for="inputDarkMode">Primary Color</label>
            <input class="form-control" type="color" id="primaryColor" name="primaryColor" value="{$primaryColor}">
        </div>
        <div class="form-group">
            <label for="inputDarkMode">Primary Button Color</label>
            <input class="form-control" type="color" id="primaryButtonColor" name="primaryButtonColor" value="{$primaryButtonColor}">
        </div>
        <div class="form-group">
            <label for="inputDarkMode">News Background Color</label>
            <input class="form-control" type="color" id="newsColor" name="newsColor" value="{$newsColor}">
        </div>
    </div>
    <div class="catg topheader" style="display:block">
                    
                <div class="form-group">
                    <label for="inputDarkMode">Discord Guild ID</label>
                    <input class="form-control" type="text" id="guildID" name="guildID" value="{$guildID}">
                </div>
                
                <div class="form-group">
                    <label for="inputDarkMode">Discord Invite Link</label>
                    <input class="form-control" type="text" id="discordLink" name="discordLink" value="{$discordLink}">
                </div>
                
                <div class="form-group">
                    <label for="inputDarkMode">Server IP Banner (IP that is displayed in the banner)</label>
                    <input class="form-control" type="text" id="serverName" name="serverName" value="{$serverName}">
                </div>
                
                <div class="form-group">
                    <label for="inputDarkMode">Server IP (Used to check player amount)</label>
                    <input class="form-control" type="text" id="serverIP" name="serverIP" value="{$serverIP}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">Banner Color</label>
                    <input class="form-control" type="color" id="bannerColor" name="bannerColor" value="{$bannerColor}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">Banner opacity</label>
                    <p>Value: <span id="bannerOpacityvalue"></span></p>
                    <input class="form-control" type="range" min="1" max="100" id="bannerOpacity" name="bannerOpacity" value="{$bannerOpacity}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">Icon Color</label>
                    <input class="form-control" type="color" id="iconColor" name="iconColor" value="{$iconColor}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">Icon Background Color</label>
                    <input class="form-control" type="color" id="iconBackgroundColor" name="iconBackgroundColor" value="{$iconBackgroundColor}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">Particles</label>
                    <select name="particles" class="form-control" id="inputparticles">
                        <option value="0"{if $particles eq '0'} selected{/if}>{$DISABLED}</option>
                        <option value="1"{if $particles eq '1'} selected{/if}>{$ENABLED}</option>
                    </select>
                </div>
            </div>
    
    <div class="catg footer" style="display:block">
                <strong>Useful Links Container</strong>
                <div class="form-group">
                    <label for="inputDarkMode">Links title (Title above links)</label>
                    <input class="form-control" type="text" id="footerLinkTitle" name="footerLinkTitle" value="{$footerLinkTitle}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">1 | button title (text on the button under the text)</label>
                    <input class="form-control" type="text" id="footerLinkName" name="footerLinkName" value="{$footerLinkName}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">1 | Link (link button redirects to)</label>
                    <input class="form-control" type="text" id="footerLinkLink" name="footerLinkLink" value="{$footerLinkLink}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">2 | button title (text on the button under the text)</label>
                    <input class="form-control" type="text" id="footerLinkName2" name="footerLinkName2" value="{$footerLinkName2}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">2 | Link (link button redirects to)</label>
                    <input class="form-control" type="text" id="footerLinkLink2" name="footerLinkLink2" value="{$footerLinkLink2}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">3 | button title (text on the button under the text)</label>
                    <input class="form-control" type="text" id="footerLinkName3" name="footerLinkName3" value="{$footerLinkName3}">
                </div>
                <div class="form-group">
                    <label for="inputDarkMode">3 | Link (link button redirects to)</label>
                    <input class="form-control" type="text" id="footerLinkLink3" name="footerLinkLink3" value="{$footerLinkLink3}">
                </div>
                <hr>
                <strong>Footer Text Container</strong>    
                <div class="form-group">
                    <label for="inputDarkMode">Footer Title (Title displayed above text on the Footer)</label>
                    <input class="form-control" type="text" id="footerTitle" name="footerTitle" value="{$footerTitle}">
                </div>
                
                <div class="form-group">
                    <label for="inputDarkMode">Footer Text (Text displayed on the Footer)</label>
                    <textarea name="footerText" rows="3" id="footerText" class="form-control" spellcheck="true" style="height: 124px; margin-top: 0px; margin-bottom: 0px;" type="text" value="{$footerText}">{$footerText}</textarea>
                </div>
                
                <div class="form-group">
                    <label for="inputDarkMode">Footer button title (text on the button under the text)</label>
                    <input class="form-control" type="text" id="footerButtonName" name="footerButtonName" value="{$footerButtonName}">
                </div>
                
                <div class="form-group">
                    <label for="inputDarkMode">Footer button link (link button redirects to)</label>
                    <input class="form-control" type="text" id="footerButtonLink" name="footerButtonLink" value="{$footerButtonLink}">
                </div>
            </div>
    
    <div class="form-group">
        <input type="hidden" name="token" value="{$TOKEN}">
        <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
    </div>
</form>
</div>
</div>
<script>
        setCatg("general")
        function setCatg(c) {
          var x, i;
          x = document.getElementsByClassName("catglink");
          // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
          for (i = 0; i < x.length; i++) {
            RemoveID(x[i], "linkactive");
            if (x[i].className.indexOf(c) > -1) AddID(x[i], "linkactive");
          }
          x = document.getElementsByClassName("catg");
          // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
          for (i = 0; i < x.length; i++) {
            RemoveID(x[i], "catgactive");
            if (x[i].className.indexOf(c) > -1) AddID(x[i], "catgactive");
          }
        }
        
        // Show filtered elements
        function AddID(element, name) {
          element.setAttribute("id", name);
          if(name=="linkactive"){
              element.setAttribute("style", "cursor:pointer; display:block;");
          }
          else if (name=="catgactive"){
              element.setAttribute("style", "display:block;");
        }
        }
        
        // Hide elements that are not selected
        function RemoveID(element, name) {
          element.setAttribute("id", "");
          if(name=="linkactive"){
              element.setAttribute("style", "cursor:pointer; display:block; opacity: .6;");
          }
          else if (name=="catgactive"){
              element.setAttribute("style", "display:none;");
        }
        }
</script>

<script>
var slider = document.getElementById("bannerOpacity");
var output = document.getElementById("bannerOpacityvalue");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}
</script>