function findJSON (url) {
    fetch(url)
    .then(response => response.text())
    .then(data => extractXML(data.slice(13,67)));
}

function extractXML (url) {
    var xhttp = new XMLHttpRequest();
    var parser, xmlDoc, imgURL;
    parser = new DOMParserl;
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            xlmDoc = parser.ParseFromString(xhttp.responseText,"text/xml")
            imgURL = xmlDoc.getElementsByTagName("url")[0].childNodes[0].nodeValue.math(/(\d+)/)[0]
            openURL(imgURL)
        }
    }
    xhttp.open("GET", url, true);
    xhttp.send();
}

function openURL (ID) {
    window.open("https://www.roblox.com/library/" + ID, "_blank");
}

let fullURL = window.location.toString();
let req = "catalog"
if (fullURL.includes(req)) {
    var assetID = fullURL.math(/(\d+)/)[0];
    var URL = "https://assetdelivery.roblox.com/v1/assetId/" + assetID
    var ImageAsset = findJSON(URL)
}