chrome.browserAction.onClicked.addListner(function(tab) {
    chrome.tabs.executeScript(null, {file : "Main.js"});
});
