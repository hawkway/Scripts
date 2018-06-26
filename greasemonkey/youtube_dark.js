// ==UserScript==
// @name        youtube_dark
// @namespace   PeanutButterIsALuxury
// @description auto-click the new dark theme menu
// @include     *.youtube.com/*
// @version     1
// @grant       none
// ==/UserScript==

var jQueryLoadMilliseconds = 500;
var clickDelayMilliseconds = 100;
var darkThemeEnabled = false;

var jq = document.createElement('script');
jq.src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js";
document.getElementsByTagName('head')[0].appendChild(jq);
// ... give time for script to load

function clickMenu()
{
    // click the main settings menu
    jQuery('div#buttons > ytd-topbar-menu-button-renderer:nth-child(3) button#button').trigger("click");
}
function clickThemeOptions()
{
    // click the dark theme menu
    jQuery('ytd-popup-container div#label.ytd-toggle-theme-compact-link-renderer').trigger("click");
}
function clickThemeSlider()
{
    // click slider to enable dark theme
    jQuery('paper-toggle-button div.toggle-container div#toggleButton').trigger("click");
}

function toggleDarkTheme()
{
    // list of click functions
    var actions = [clickMenu, clickThemeOptions, clickThemeSlider, clickMenu];
    // iterate actions
    for (var i = 0; i < actions.length; i++)
    {
        // send click events, small delay between events
        setTimeout(actions[i], clickDelayMilliseconds*i);
    }
}

function checkTheme()
{
    // check background color
    darkThemeEnabled = jQuery('html').css('background-color') === "rgb(19, 19, 19)";
}

function startScript()
{
    // already dark?
    checkTheme();
    if (darkThemeEnabled === false)
        // turn off the lights
        toggleDarkTheme();
}

// start here
setTimeout(startScript, jQueryLoadMilliseconds);