<?php
/*
 *  Made by Samerton
 *  https://github.com/NamelessMC/Nameless/
 *  NamelessMC version 2.0.0-pr13
 *
 *  License: MIT
 *
 *  DefaultRevamp template settings
 */

if (Input::exists()) {
    if (Token::check()) {
        $cache->setCache('template_settings');

        if(isset($_POST['darkMode'])){
			$cache->store('darkMode', $_POST['darkMode']);
		}
		
		if(isset($_POST['particles'])){
			$cache->store('particles', $_POST['particles']);
		}
		
		if(isset($_POST['guildID'])){
			$cache->store('guildID', $_POST['guildID']);
		}
		
		if(isset($_POST['discordLink'])){
			$cache->store('discordLink', $_POST['discordLink']);
		}
		
		if(isset($_POST['serverName'])){
			$cache->store('serverName', $_POST['serverName']);
		}
		
		if(isset($_POST['serverIP'])){
			$cache->store('serverIP', $_POST['serverIP']);
		}
		
		if(isset($_POST['footerLinkTitle'])){
			$cache->store('footerLinkTitle', $_POST['footerLinkTitle']);
		}
		if(isset($_POST['footerLinkName'])){
			$cache->store('footerLinkName', $_POST['footerLinkName']);
		}
		if(isset($_POST['footerLinkLink'])){
			$cache->store('footerLinkLink', $_POST['footerLinkLink']);
		}
		if(isset($_POST['footerLinkName2'])){
			$cache->store('footerLinkName2', $_POST['footerLinkName2']);
		}
		if(isset($_POST['footerLinkLink2'])){
			$cache->store('footerLinkLink2', $_POST['footerLinkLink2']);
		}
		if(isset($_POST['footerLinkName3'])){
			$cache->store('footerLinkName3', $_POST['footerLinkName3']);
		}
		if(isset($_POST['footerLinkLink3'])){
			$cache->store('footerLinkLink3', $_POST['footerLinkLink3']);
		}
		
		if(isset($_POST['footerTitle'])){
			$cache->store('footerTitle', $_POST['footerTitle']);
		}
		
		if(isset($_POST['footerText'])){
			$cache->store('footerText', $_POST['footerText']);
		}
		
		if(isset($_POST['footerButtonName'])){
			$cache->store('footerButtonName', $_POST['footerButtonName']);
		}
		
		if(isset($_POST['footerButtonLink'])){
			$cache->store('footerButtonLink', $_POST['footerButtonLink']);
		}

		if(isset($_POST['navbarColour'])){
			$cache->store('navbarColour', $_POST['navbarColour']);
		}
		
		if(isset($_POST['primaryColor'])){
			$cache->store('primaryColor', $_POST['primaryColor']);
		}
		else {
		    $cache->store('primaryColor', '#3549cc');
		}
		
		if(isset($_POST['primaryButtonColor'])){
			$cache->store('primaryButtonColor', $_POST['primaryButtonColor']);
		}
		else {
		    $cache->store('primaryButtonColor', '#3549cc');
		}
		
		if(isset($_POST['bannerColor'])){
			$cache->store('bannerColor', $_POST['bannerColor']);
		}
		else {
		}
		
		if(isset($_POST['bannerOpacity'])){
			$cache->store('bannerOpacity', $_POST['bannerOpacity']);
		}
		else {
		}
		
		if(isset($_POST['newsColor'])){
			$cache->store('newsColor', $_POST['newsColor']);
		}
		else {
		    $cache->store('newsColor', '#3549cc');
		}
		
		if(isset($_POST['iconColor'])){
			$cache->store('iconColor', $_POST['iconColor']);
		}
		else {
		    $cache->store('iconColor', '#ffffff');
		}
		
		if(isset($_POST['iconBackgroundColor'])){
			$cache->store('iconBackgroundColor', $_POST['iconBackgroundColor']);
		}
		else {
		    $cache->store('iconBackgroundColor', '#3549cc');
		}


        Util::setSetting('home_custom_content', Input::get('home_custom_content'));

        Session::flash('admin_templates', $language->get('admin', 'successfully_updated'));
    } else {
        $errors = [$language->get('general', 'invalid_token')];
    }
}

// Get values
$cache->setCache('template_settings');
if($cache->isCached('darkMode')){
    $darkMode = $cache->retrieve('darkMode');
} else {
    $darkMode = '0';
	$cache->store('darkMode', $darkMode);
}

if($cache->isCached('particles')){
    $particles = $cache->retrieve('particles');
} else {
    $particles = '0';
	$cache->store('particles', $particles);
}

if($cache->isCached('guildID')){
    $guildID = $cache->retrieve('guildID');
} else {
    $guildID = '';
	$cache->store('guildID', $guildID);
}

if($cache->isCached('discordLink')){
    $discordLink = $cache->retrieve('discordLink');
} else {
    $discordLink = '';
	$cache->store('discordLink', $discordLink);
}

if($cache->isCached('serverName')){
    $serverName = $cache->retrieve('serverName');
} else {
    $serverName = '';
	$cache->store('serverName', $serverName);
}

if($cache->isCached('serverIP')){
    $serverIP = $cache->retrieve('serverIP');
} else {
    $serverIP = '';
	$cache->store('serverIP', $serverIP);
}

if($cache->isCached('footerLinkTitle')){
    $footerLinkTitle = $cache->retrieve('footerLinkTitle');
} else {
    $footerLinkTitle = '';
	$cache->store('footerLinkTitle', $footerLinkTitle);
}

if($cache->isCached('footerLinkName')){
    $footerLinkName = $cache->retrieve('footerLinkName');
} else {
    $footerLinkName = '';
	$cache->store('footerLinkName', $footerLinkName);
}
if($cache->isCached('footerLinkLink')){
    $footerLinkLink = $cache->retrieve('footerLinkLink');
} else {
    $footerLinkLink = '';
	$cache->store('footerLinkLink', $footerLinkLink);
}

if($cache->isCached('footerLinkName2')){
    $footerLinkName2 = $cache->retrieve('footerLinkName2');
} else {
    $footerLinkName2 = '';
	$cache->store('footerLinkName2', $footerLinkName2);
}
if($cache->isCached('footerLinkLink2')){
    $footerLinkLink2 = $cache->retrieve('footerLinkLink2');
} else {
    $footerLinkLink2 = '';
	$cache->store('footerLinkLink2', $footerLinkLink2);
}

if($cache->isCached('footerLinkName3')){
    $footerLinkName3 = $cache->retrieve('footerLinkName3');
} else {
    $footerLinkName3 = '';
	$cache->store('footerLinkName3', $footerLinkName3);
}
if($cache->isCached('footerLinkLink3')){
    $footerLinkLink3 = $cache->retrieve('footerLinkLink3');
} else {
    $footerLinkLink3 = '';
	$cache->store('footerLinkLink3', $footerLinkLink3);
}

if($cache->isCached('footerTitle')){
    $footerTitle = $cache->retrieve('footerTitle');
} else {
    $footerTitle = '';
	$cache->store('footerTitle', $footerTitle);
}

if($cache->isCached('footerText')){
    $footerText = $cache->retrieve('footerText');
} else {
    $footerText = '';
	$cache->store('footerText', $footerText);
}

if($cache->isCached('footerButtonName')){
    $footerButtonName = $cache->retrieve('footerButtonName');
} else {
    $footerButtonName = '';
	$cache->store('footerButtonName', $footerButtonName);
}

if($cache->isCached('footerButtonLink')){
    $footerButtonLink = $cache->retrieve('footerButtonLink');
} else {
    $footerButtonLink = '';
	$cache->store('footerButtonLink', $footerButtonLink);
}

if($cache->isCached('navbarColour')){
	$navbarColour = $cache->retrieve('navbarColour');
} else {
    $navbarColour = 'white';
	$cache->store('navbarColour', $navbarColour);
}

if($cache->isCached('primaryColor')){
    $primaryColor = $cache->retrieve('primaryColor');
} else {
    $primaryColor = '#3549cc';
	$cache->store('primaryColor', $primaryColor);
}

if($cache->isCached('primaryButtonColor')){
    $primaryButtonColor = $cache->retrieve('primaryButtonColor');
} else {
    $primaryButtonColor = '#3549cc';
	$cache->store('primaryButtonColor', $primaryButtonColor);
}

if($cache->isCached('bannerColor')){
    $bannerColor = $cache->retrieve('bannerColor');
} else {
    $bannerColor = '#2372cc';
	$cache->store('bannerColor', $bannerColor);
}

if($cache->isCached('bannerOpacity')){
    $bannerOpacity = $cache->retrieve('bannerOpacity');
} else {
    $bannerOpacity = '95';
	$cache->store('bannerOpacity', $bannerOpacity);
}

if($cache->isCached('newsColor')){
    $newsColor = $cache->retrieve('newsColor');
} else {
    $newsColor = '#3549cc';
	$cache->store('newsColor', $newsColor);
}

if($cache->isCached('iconColor')){
    $iconColor = $cache->retrieve('iconColor');
} else {
    $iconColor = '#ffffff';
	$cache->store('iconColor', $iconColor);
}

if($cache->isCached('iconBackgroundColor')){
    $iconBackgroundColor = $cache->retrieve('iconBackgroundColor');
} else {
    $iconBackgroundColor = '#3549cc';
	$cache->store('iconBackgroundColor', $iconBackgroundColor);
}

$nav_colours = [
    [
        'value' => 'white',
        'name' => $language->get('general', 'default'),
        'selected' => ($navbarColour == 'white')
    ],
    [
        'value' => 'red',
        'name' => $language->get('general', 'red'),
        'selected' => ($navbarColour == 'red')
    ],
    [
        'value' => 'orange',
        'name' => $language->get('general', 'orange'),
        'selected' => ($navbarColour == 'orange')
    ],
    [
        'value' => 'yellow',
        'name' => $language->get('general', 'yellow'),
        'selected' => ($navbarColour == 'yellow')
    ],
    [
        'value' => 'olive',
        'name' => $language->get('general', 'olive'),
        'selected' => ($navbarColour == 'olive')
    ],
    [
        'value' => 'green',
        'name' => $language->get('general', 'green'),
        'selected' => ($navbarColour == 'green')
    ],
    [
        'value' => 'teal',
        'name' => $language->get('general', 'teal'),
        'selected' => ($navbarColour == 'teal')
    ],
    [
        'value' => 'blue',
        'name' => $language->get('general', 'blue'),
        'selected' => ($navbarColour == 'blue')
    ],
    [
        'value' => 'violet',
        'name' => $language->get('general', 'violet'),
        'selected' => ($navbarColour == 'violet')
    ],
    [
        'value' => 'purple',
        'name' => $language->get('general', 'purple'),
        'selected' => ($navbarColour == 'purple')
    ],
    [
        'value' => 'pink',
        'name' => $language->get('general', 'pink'),
        'selected' => ($navbarColour == 'pink')
    ],
    [
        'value' => 'brown',
        'name' => $language->get('general', 'brown'),
        'selected' => ($navbarColour == 'brown')
    ],
    [
        'value' => 'grey',
        'name' => $language->get('general', 'grey'),
        'selected' => ($navbarColour == 'grey')
    ],
];

$current_template->assets()->include([
    AssetTree::TINYMCE,
]);

// We have to define this here because this is run before Module::onPageLoad, so it hasn't been defined yet
if (Cookie::exists('nmc_panel_theme') && Cookie::get('nmc_panel_theme') === 'dark') {
    define('TEMPLATE_TINY_EDITOR_DARKMODE', true);
}

$current_template->addJSScript(Input::createTinyEditor($language, 'inputHomeCustomContent', Util::getSetting('home_custom_content')));

$smarty->assign([
    'SUBMIT' => $language->get('general', 'submit'),
    'ENABLED' => $language->get('admin', 'enabled'),
    'DISABLED' => $language->get('admin', 'disabled'),
    'DARK_MODE' => $language->get('admin', 'dark_mode'),
    'DARK_MODE_VALUE' => $darkMode,
	'guildID' => $guildID,
	'discordLink' => $discordLink,
	'serverIP' => $serverIP,
	'footerLinkTitle' => $footerLinkTitle,
	'footerLinkName' => $footerLinkName,
	'footerLinkLink' => $footerLinkLink,
	'footerLinkName2' => $footerLinkName2,
	'footerLinkLink2' => $footerLinkLink2,
	'footerLinkName3' => $footerLinkName3,
	'footerLinkLink3' => $footerLinkLink3,
	'footerTitle' => $footerTitle,
	'footerText' => $footerText,
	'footerButtonName' => $footerButtonName,
	'footerButtonLink' => $footerButtonLink,
	'serverName' => $serverName,
    'NAVBAR_COLOUR' => $language->get('admin', 'navbar_colour'),
    'NAVBAR_COLOURS' => $nav_colours,
	'primaryColor' => $primaryColor,
	'primaryButtonColor' => $primaryButtonColor,
	'bannerColor' => $bannerColor,
	'bannerOpacity' => $bannerOpacity,
	'newsColor' => $newsColor,
	'iconColor' => $iconColor,
	'iconBackgroundColor' => $iconBackgroundColor,
	'particles' => $particles,
    'HOME_CUSTOM_CONTENT' => $language->get('admin', 'home_custom_content'),
    'SETTINGS_TEMPLATE' => ROOT_PATH . '/custom/templates/ModernX/template_settings/settings.tpl'
]);
