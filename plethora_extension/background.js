chrome.browserAction.onClicked.addListener(function(tab) {
  console.log(tab.title + ' ' + tab.url);

  // Start of API interaction
  var resource = {
    "title": tab.title,
    "url": tab.url,
    "favicon_url": tab.favIconUrl,
    "X-User-Email": username,
    "X-User-Token": api_key
  };

  // IN PRODUCTION THIS SHOULD NOT BE LOCALHOST
  var url = "http://localhost:3000/api/v1/resources"

  // EDIT THIS PART
    var username = "" // ENTER USERNAME HERE, FOR EXAMPLE "lars@unless.io"
    var api_key = "" // ENTER API KEY HERE
  // 
  // AN API KEY IS AUTOMATICALLY GENERATED WHEN A USER ACCOUNT IS CREATED THROUGH DEVISE, FIND THE KEY
  // IN THE CONSOLE BY TYPING "User.where(email: "youremail@yourprovider.com")"
  // 
  
  $.ajax({
    type: "POST",
    url: url,
    headers: { "X-User-Email": username, "X-User-Token": api_key },
    data: resource,
    success: function(data) {
      console.log("Successfully created resource at " + data.html_url);
    },
    error: function(jqXHR) {
      console.error(jqXHR.responseText);
    }
  });
  // End of API interaction
});
