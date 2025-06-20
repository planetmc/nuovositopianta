<?php
/*
 *  Made by Samerton | Revamped by Xemah
 *    https://github.com/NamelessMC/Nameless/
 *    NamelessMC version 2.0.0-pr13
 *
 *    License: MIT
 *
 *    DefaultRevamp Template
 */

class ModernX_Template extends TemplateBase {

    private array $_template;

    /** @var Language */
    private Language $_language;

    /** @var User */
    private User $_user;

    /** @var Pages */
    private Pages $_pages;

    public function __construct($cache, $smarty, $language, $user, $pages) {
        $template = [
            'name' => 'ModernX',
            'version' => '2.0.1',
            'nl_version' => '2.0.1',
            'author' => '<a href="https://templates.jtgraphics.nl/" target="_blank">Smashino</a>',
        ];

        $template['path'] = (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/templates/' . $template['name'] . '/';

        parent::__construct($template['name'], $template['version'], $template['nl_version'], $template['author']);

        $this->_settings = ROOT_PATH . '/custom/templates/ModernX/template_settings/settings.php';

        $this->assets()->include([
            AssetTree::FONT_AWESOME,
            AssetTree::JQUERY,
            AssetTree::JQUERY_COOKIE,
        ]);

        $this->addCSSFiles([
            $template['path'] . 'css/fomantic.min.css' => [],
        ]);

        $this->addJSFiles([
            $template['path'] . 'js/fomantic.min.js' => [],
        ]);

        $smarty->assign('TEMPLATE', $template);

        // Other variables
        $smarty->assign('FORUM_SPAM_WARNING_TITLE', $language->get('general', 'warning'));

        $cache->setCache('template_settings');
		$smartyDarkMode = false;
		$smartyNavbarColour = '';

        if ($cache->isCached('darkMode')) {
            $darkMode = $cache->retrieve('darkMode');

            if ($darkMode == '1') {
                $smartyDarkMode = true;
                define('TEMPLATE_TINY_EDITOR_STYLE', 'default-revamp');
            }
        }
        
        if ($cache->isCached('particles')) {
            $particles = $cache->retrieve('particles');

            if ($particles == '1') {
                $smartyparticles = true;
            }
        }
        
        if ($cache->isCached('guildID')) {
            $guildID = $cache->retrieve('guildID');

            if ($guildID != '') {
                $smartyGuildID = $guildID;
            }
        }
        
        if ($cache->isCached('discordLink')) {
            $discordLink = $cache->retrieve('discordLink');

            if ($discordLink != '') {
                $smartyDiscordLink = $discordLink;
            }
        }
        
        if ($cache->isCached('serverIP')) {
            $serverIP = $cache->retrieve('serverIP');

            if ($serverIP != '') {
                $smartyServerIP = $serverIP;
            }
        }
        
        if ($cache->isCached('serverName')) {
            $serverName = $cache->retrieve('serverName');

            if ($serverName != '') {
                $smartyServerName = $serverName;
            }
        }
        
        if ($cache->isCached('footerLinkTitle')) {
            $footerLinkTitle = $cache->retrieve('footerLinkTitle');

            if ($footerLinkTitle != '') {
                $smartyfooterLinkTitle = $footerLinkTitle;
            }
        }
        if ($cache->isCached('footerLinkName')) {
            $footerLinkName = $cache->retrieve('footerLinkName');

            if ($footerLinkName != '') {
                $smartyfooterLinkName = $footerLinkName;
            }
        }
        if ($cache->isCached('footerLinkLink')) {
            $footerLinkLink = $cache->retrieve('footerLinkLink');

            if ($footerLinkLink != '') {
                $smartyfooterLinkLink = $footerLinkLink;
            }
        }
        
        if ($cache->isCached('footerLinkName2')) {
            $footerLinkName2 = $cache->retrieve('footerLinkName2');

            if ($footerLinkName2 != '') {
                $smartyfooterLinkName2 = $footerLinkName2;
            }
        }
        if ($cache->isCached('footerLinkLink2')) {
            $footerLinkLink2 = $cache->retrieve('footerLinkLink2');

            if ($footerLinkLink2 != '') {
                $smartyfooterLinkLink2 = $footerLinkLink2;
            }
        }
        
        if ($cache->isCached('footerLinkName3')) {
            $footerLinkName3 = $cache->retrieve('footerLinkName3');

            if ($footerLinkName3 != '') {
                $smartyfooterLinkName3 = $footerLinkName3;
            }
        }
        if ($cache->isCached('footerLinkLink3')) {
            $footerLinkLink3 = $cache->retrieve('footerLinkLink3');

            if ($footerLinkLink3 != '') {
                $smartyfooterLinkLink3 = $footerLinkLink3;
            }
        }
        
        if ($cache->isCached('footerTitle')) {
            $footerTitle = $cache->retrieve('footerTitle');

            if ($footerTitle != '') {
                $smartyfooterTitle = $footerTitle;
            }
        }
        
        if ($cache->isCached('footerText')) {
            $footerText = $cache->retrieve('footerText');

            if ($footerText != '') {
                $smartyfooterText = $footerText;
            }
        }
        
        if ($cache->isCached('footerButtonName')) {
            $footerButtonName = $cache->retrieve('footerButtonName');

            if ($footerButtonName != '') {
                $smartyfooterButtonName = $footerButtonName;
            }
        }
        
        if ($cache->isCached('footerButtonLink')) {
            $footerButtonLink = $cache->retrieve('footerButtonLink');

            if ($footerButtonLink != '') {
                $smartyfooterButtonLink = $footerButtonLink;
            }
        }
        
        if ($cache->isCached('navbarColour')) {
            $navbarColour = $cache->retrieve('navbarColour');

            if ($navbarColour != 'white') {
                $smartyNavbarColour = $navbarColour . ' inverted';
            }
        }
        
        if ($cache->isCached('primaryColor')) {
            $primaryColor = $cache->retrieve('primaryColor');

            if ($primaryColor != '') {
                $hex = "$primaryColor";
                list($r, $g, $b) = sscanf($hex, "#%02x%02x%02x");
                $primaryColorRGB = "$r, $g, $b";
                $smartyprimaryColor = $primaryColorRGB;
            }
        }
        
        if ($cache->isCached('primaryButtonColor')) {
            $primaryButtonColor = $cache->retrieve('primaryButtonColor');

            if ($primaryButtonColor != '') {
                $hex = "$primaryButtonColor";
                list($r, $g, $b) = sscanf($hex, "#%02x%02x%02x");
                $primaryButtonColorRGB = "$r, $g, $b";
                $smartyprimaryButtonColor = $primaryButtonColorRGB;
            }
        }
        
        if ($cache->isCached('bannerColor')) {
            $bannerColor = $cache->retrieve('bannerColor');

            if ($bannerColor != '') {
                $hex = "$bannerColor";
                list($r, $g, $b) = sscanf($hex, "#%02x%02x%02x");
                $bannerColorRGB = "$r, $g, $b";
                $smartybannerColor = $bannerColorRGB;
            }
        }
        
        if ($cache->isCached('bannerOpacity')) {
            $bannerOpacity = $cache->retrieve('bannerOpacity');

            if ($bannerOpacity != '') {
                $opacity = ((float)$bannerOpacity / 100);
                $smartybannerOpacity = $opacity;
            }
        }
        
        if ($cache->isCached('newsColor')) {
            $newsColor = $cache->retrieve('newsColor');

            if ($newsColor != '') {
                $hex = "$newsColor";
                list($r, $g, $b) = sscanf($hex, "#%02x%02x%02x");
                $newsColorRGB = "$r, $g, $b";
                $smartynewsColor = $newsColorRGB;
            }
        }
        
        if ($cache->isCached('iconColor')) {
            $iconColor = $cache->retrieve('iconColor');

            if ($iconColor != '') {
                $hex = "$iconColor";
                list($r, $g, $b) = sscanf($hex, "#%02x%02x%02x");
                $iconColorRGB = "$r, $g, $b";
                $smartyiconColor = $iconColorRGB;
            }
        }
        
        if ($cache->isCached('iconBackgroundColor')) {
            $iconBackgroundColor = $cache->retrieve('iconBackgroundColor');

            if ($iconColor != '') {
                $hex = "$iconBackgroundColor";
                list($r, $g, $b) = sscanf($hex, "#%02x%02x%02x");
                $iconBackgroundColorRGB = "$r, $g, $b";
                $smartyiconBackgroundColor = $iconBackgroundColorRGB;
            }
        }


        $smarty->assign(array(
            'DEFAULT_REVAMP_DARK_MODE' => $smartyDarkMode,
            'DEFAULT_REVAMP_NAVBAR_EXTRA_CLASSES' => $smartyNavbarColour,
            'GUILD_ID' => $smartyGuildID,
            'DISCORD_LINK' => $smartyDiscordLink,
            'SERVER_IP' => $smartyServerIP,
            'footerLinkTitle' => $smartyfooterLinkTitle,
            'footerLinkName' => $smartyfooterLinkName,
            'footerLinkLink' => $smartyfooterLinkLink,
            'footerLinkName2' => $smartyfooterLinkName2,
            'footerLinkLink2' => $smartyfooterLinkLink2,
            'footerLinkName3' => $smartyfooterLinkName3,
            'footerLinkLink3' => $smartyfooterLinkLink3,
            'footerTitle' => $smartyfooterTitle,
            'footerText' => $smartyfooterText,
            'footerButtonName' => $smartyfooterButtonName,
            'footerButtonLink' => $smartyfooterButtonLink,
            'SERVER_NAME' => $smartyServerName,
            'primaryColor' => $smartyprimaryColor,
            'primaryButtonColor' => $smartyprimaryButtonColor,
            'bannerColor' => $smartybannerColor,
            'bannerOpacity' => $smartybannerOpacity,
            'newsColor' => $smartynewsColor,
            'iconColor' => $smartyiconColor,
            'iconBackgroundColor' => $smartyiconBackgroundColor,
            'particles' => $smartyparticles
        ));

        $this->_template = $template;
        $this->_language = $language;
        $this->_user = $user;
        $this->_pages = $pages;
    }

    public function onPageLoad() {
        $page_load = microtime(true) - PAGE_START_TIME;
        define('PAGE_LOAD_TIME', $this->_language->get('general', 'page_loaded_in', ['time' => round($page_load, 3)]));

        $this->addCSSFiles([
            $this->_template['path'] . 'css/custom.css?v=200' => []
        ]);

        $route = (isset($_GET['route']) ? rtrim($_GET['route'], '/') : '/');

        $JSVariables = [
            'siteName' => Output::getClean(SITE_NAME),
            'siteURL' => URL::build('/'),
            'fullSiteUrl' => Util::getSelfURL() . ltrim(URL::build('/'), '/'),
            'page' => PAGE,
            'avatarSource' => AvatarSource::getUrlToFormat(),
            'copied' => $this->_language->get('general', 'copied'),
            'cookieNotice' => $this->_language->get('general', 'cookie_notice'),
            'noMessages' => $this->_language->get('user', 'no_messages'),
            'newMessage1' => $this->_language->get('user', '1_new_message'),
            'newMessagesX' => $this->_language->get('user', 'x_new_messages'),
            'noAlerts' => $this->_language->get('user', 'no_alerts'),
            'newAlert1' => $this->_language->get('user', '1_new_alert'),
            'newAlertsX' => $this->_language->get('user', 'x_new_alerts'),
            'bungeeInstance' => $this->_language->get('general', 'bungee_instance'),
            'andMoreX' => $this->_language->get('general', 'and_x_more'),
            'onePlayerOnline' => $this->_language->get('general', 'currently_1_player_online'),
            'xPlayersOnline' => $this->_language->get('general', 'currently_x_players_online'),
            'noPlayersOnline' => $this->_language->get('general', 'no_players_online'),
            'offline' => $this->_language->get('general', 'offline'),
            'confirmDelete' => $this->_language->get('general', 'confirm_deletion'),
            'debugging' => (defined('DEBUGGING') && DEBUGGING == 1) ? '1' : '0',
            'loggedIn' => $this->_user->isLoggedIn() ? '1' : '0',
            'cookie' => defined('COOKIE_NOTICE') ? '1' : '0',
            'loadingTime' => Util::getSetting('page_loading') === '1' ? PAGE_LOAD_TIME : '',
            'route' => $route,
            'csrfToken' => Token::get(),
        ];

        if (strpos($route, '/forum/topic/') !== false || PAGE == 'profile') {
            $this->assets()->include([
                AssetTree::JQUERY_UI,
            ]);
        }

        $JSVars = '';
        $i = 0;
        foreach ($JSVariables as $var => $value) {
            $JSVars .= ($i == 0 ? 'var ' : ', ') . $var . ' = "' . $value . '"';
            $i++;
        }

        $this->addJSScript($JSVars);

        $this->addJSFiles([
            $this->_template['path'] . 'js/core/core.js?v=202' => [],
            $this->_template['path'] . 'js/core/user.js' => [],
            $this->_template['path'] . 'js/core/pages.js' => [],
            $this->_template['path'] . 'js/scripts.js' => [],
        ]);

        foreach ($this->_pages->getAjaxScripts() as $script) {
            $this->addJSScript('$.getJSON(\'' . $script . '\', function(data) {});');
        }
    }
}

$template = new ModernX_Template($cache, $smarty, $language, $user, $pages);
$template_pagination = ['div' => 'ui mini pagination menu', 'a' => '{x}item'];
