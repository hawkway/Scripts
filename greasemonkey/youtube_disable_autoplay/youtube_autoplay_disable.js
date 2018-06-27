// ==UserScript==
// @name        youtube_autoplay_disable
// @namespace   PeanutButterIsALuxury
// @description turn off autoplay
// @include     *.youtube.com/*
// @version     1
// @grant       none
// ==/UserScript==

var clickDelayMilliseconds = 100;
var jQueryLoadMilliseconds = 500;

// create new script element
var jq = document.createElement('script');
// add jquery to contents of new element
jq.src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js";
// insert jquery into head element to make life easier
document.getElementsByTagName('head')[0].appendChild(jq);

function checkAutoplay()
{
    // get flag from element
    var sAutoPlayEnabled = jQuery('paper-toggle-button#improved-toggle').attr('aria-pressed');
    // check if set
    if (sAutoPlayEnabled === "true")
    {
        // click the button
        jQuery('paper-toggle-button#improved-toggle div.toggle-container div#toggleButton').trigger("click");
    }
}

// start here
setTimeout(checkAutoplay, jQueryLoadMilliseconds);