
function RenderResults(searchResults) {
    
    var results = JSON.parse(searchResults);
    var numberOfResults = results.SearchResults.length >= 4 ? 4 : results.SearchResults.length;
    var imageLink;
    var itemBody;

    if (numberOfResults == 0) {
        jQuery("#centralNewsItem").prepend("<div class='no-items'>There are currently no news items to show. Please create news items or approve existing ones.</div>");
    }

    for (var i = 0; i < numberOfResults; i++) {

        imageLink = ((results.SearchResults[i].NewsItemImageUrlOWSTEXT) != "" && (typeof results.SearchResults[i].NewsItemImageUrlOWSTEXT != 'undefined')) ? results.SearchResults[i].NewsItemImageUrlOWSTEXT : results.SearchResults[i].DepNewsItemImageUrlOWSTEXT;
        itemBody = ((results.SearchResults[i].NewsItemBodyOWSMTXT) != "" && (typeof results.SearchResults[i].NewsItemBodyOWSMTXT != 'undefined')) ? results.SearchResults[i].NewsItemBodyOWSMTXT : results.SearchResults[i].DepNewsItemBodyOWSMTXT;


        if (i == 0) {
            jQuery("#centralNewsItem").prepend("<img src='"+imageLink+"' />");
            jQuery("#news-items").append("<div id=\"item-" + i + "\" class=\"news-item active-item\"><div class=\"news-item-div\"><form action='" + _spPageContextInfo.siteServerRelativeUrl + "/Pages/NewsItemDisplayPage.aspx' method='post'><input type='hidden' name='itemTitle' value='" + results.SearchResults[i].Title + "'><input type='hidden' name='itemBody' value='" + itemBody + "'><input type='hidden' name='itemImage' value='" + imageLink + "'></form><img src='" + imageLink + "' /><span class=\"item-Title\">" + results.SearchResults[i].Title + "</span></div></div>");
            jQuery("#buttons").append("<div id='centralElementTitle'>" + results.SearchResults[i].Title + "<form action='" + _spPageContextInfo.siteServerRelativeUrl + "/Pages/NewsItemDisplayPage.aspx' method='post'><input type='hidden' name='itemTitle' value='" + results.SearchResults[i].Title + "'><input type='hidden' name='itemBody' value='" + itemBody + "'><input type='hidden' name='itemImage' value='" + imageLink + "'></form></div>");
        } else {            
            jQuery("#news-items").append("<div id=\"item-" + i + "\" class=\"news-item\"><div class=\"news-item-div\"><form action='" + _spPageContextInfo.siteServerRelativeUrl + "/Pages/NewsItemDisplayPage.aspx'  method='post'><input type='hidden' name='itemTitle' value='" + results.SearchResults[i].Title + "'><input type='hidden' name='itemBody' value='" + itemBody + "'><input type='hidden' name='itemImage' value='" + imageLink + "'></form><img src='" + imageLink + "' /><span class=\"item-Title\">" + results.SearchResults[i].Title + "</span></div></div>");
            
        }
    }

}

jQuery(document).ready(function () {

    var jScrollPane = $("#newsCustomScrollBar").jScrollPane({ autoReinitialise: true });
    var jScrollPaneAPI = jScrollPane.data('jsp');

    var results = JSON.parse(jQuery("input[name*='SearchResultsField']").val());
    var numberOfResults = results.SearchResults.length >= 4 ? 4 : results.SearchResults.length;
    var visibleResults = new Array();
    var imageLink;
    var itemBody;

    for (var i = 0; i < numberOfResults; i++) {
        visibleResults.push(results.SearchResults[i]);
    }

    var scrolled = 0;    

    jQuery("#prev").click(function() {

        var currentCentralItem = jQuery("#centralElementTitle")[0];
        jQuery(".news-item").removeClass("active-item");

        for (var i = 0; i < visibleResults.length; i++) {
            
            if (currentCentralItem.innerHTML.indexOf(visibleResults[i].Title) >= 0) {
                jQuery("#centralNewsItem img").remove();
                jQuery("#centralElementTitle").empty();
                if (i == 0) {
                    imageLink = ((visibleResults[visibleResults.length - 1].NewsItemImageUrlOWSTEXT != "") && (typeof visibleResults[visibleResults.length - 1].NewsItemImageUrlOWSTEXT != 'undefined')) ? visibleResults[visibleResults.length - 1].NewsItemImageUrlOWSTEXT : visibleResults[visibleResults.length - 1].DepNewsItemImageUrlOWSTEXT;
                    itemBody = ((visibleResults[visibleResults.length - 1].NewsItemBodyOWSMTXT) != "" && (typeof visibleResults[visibleResults.length - 1].NewsItemBodyOWSMTXT != 'undefined')) ? visibleResults[visibleResults.length - 1].NewsItemBodyOWSMTXT : visibleResults[visibleResults.length - 1].DepNewsItemBodyOWSMTXT;
                    jQuery("#centralNewsItem").prepend("<img src='"+imageLink+"' />").hide().fadeIn(500);
                    jQuery("#centralElementTitle").append(visibleResults[visibleResults.length - 1].Title + "<form action='" + _spPageContextInfo.siteServerRelativeUrl + "/Pages/NewsItemDisplayPage.aspx' method='post'><input type='hidden' name='itemTitle' value='" + visibleResults[visibleResults.length - 1].Title + "'><input type='hidden' name='itemBody' value='" + itemBody + "'><input type='hidden' name='itemImage' value='" + imageLink + "'></form>");
                    jQuery("#item-" + (visibleResults.length - 1)).addClass("active-item");
                    scrolled = 1;
                    if (jScrollPaneAPI.getIsScrollableV()) {
                        jScrollPaneAPI.scrollToPercentY(scrolled, true);
                    } else {
                        jScrollPaneAPI.scrollToPercentX(scrolled, true);
                    }
                    return;
                }
                else {
                    imageLink = ((visibleResults[i - 1].NewsItemImageUrlOWSTEXT != "") && (typeof visibleResults[i - 1].NewsItemImageUrlOWSTEXT != 'undefined')) ? visibleResults[i - 1].NewsItemImageUrlOWSTEXT : visibleResults[i - 1].DepNewsItemImageUrlOWSTEXT;
                    itemBody = ((visibleResults[i - 1].NewsItemBodyOWSMTXT) != "" && (typeof visibleResults[i - 1].NewsItemBodyOWSMTXT != 'undefined')) ? visibleResults[i - 1].NewsItemBodyOWSMTXT : visibleResults[i - 1].DepNewsItemBodyOWSMTXT;
                    jQuery("#centralNewsItem").prepend("<img src='" + imageLink + "' />").hide().fadeIn(500);
                    jQuery("#centralElementTitle").append(visibleResults[i - 1].Title + "<form action='" + _spPageContextInfo.siteServerRelativeUrl + "/Pages/NewsItemDisplayPage.aspx' method='post'><input type='hidden' name='itemTitle' value='" + visibleResults[i - 1].Title + "'><input type='hidden' name='itemBody' value='" + itemBody + "'><input type='hidden' name='itemImage' value='" + imageLink + "'></form>");
                    jQuery("#item-" + (i - 1)).addClass("active-item");
                    scrolled = scrolled - 1.0/3;
                    if (jScrollPaneAPI.getIsScrollableV()) {
                        jScrollPaneAPI.scrollToPercentY(scrolled, true);
                    } else {
                        jScrollPaneAPI.scrollToPercentX(scrolled, true);
                    }
                                   
                    return;
                }
            }
        }

    });

    jQuery("#next").click(function () {

        var currentCentralItem = jQuery("#centralElementTitle")[0];
        jQuery(".news-item").removeClass("active-item");

        for (var i = 0; i < visibleResults.length; i++) {

            if (currentCentralItem.innerHTML.indexOf(visibleResults[i].Title) >= 0) {
                jQuery("#centralNewsItem img").remove();
                jQuery("#centralElementTitle").empty();
                if (i == visibleResults.length - 1) {
                    imageLink = ((visibleResults[0].NewsItemImageUrlOWSTEXT != "") && (typeof visibleResults[0].NewsItemImageUrlOWSTEXT != 'undefined')) ? visibleResults[0].NewsItemImageUrlOWSTEXT : visibleResults[0].DepNewsItemImageUrlOWSTEXT;
                    itemBody = ((visibleResults[0].NewsItemBodyOWSMTXT) != "" && (typeof visibleResults[0].NewsItemBodyOWSMTXT != 'undefined')) ? visibleResults[0].NewsItemBodyOWSMTXT : visibleResults[0].DepNewsItemBodyOWSMTXT;
                    jQuery("#centralNewsItem").prepend("<img src='" + imageLink + "' />").hide().fadeIn(500);
                    jQuery("#centralElementTitle").append(visibleResults[0].Title + "<form action='" + _spPageContextInfo.siteServerRelativeUrl + "/Pages/NewsItemDisplayPage.aspx' method='post'><input type='hidden' name='itemTitle' value='" + visibleResults[0].Title + "'><input type='hidden' name='itemBody' value='" + itemBody + "'><input type='hidden' name='itemImage' value='" + imageLink + "'></form>");
                    jQuery("#item-" + 0).addClass("active-item");
                    scrolled = 0;
                    if (jScrollPaneAPI.getIsScrollableV()) {
                        jScrollPaneAPI.scrollToPercentY(scrolled, true);
                    } else {
                        jScrollPaneAPI.scrollToPercentX(scrolled, true);
                    }
                    return;
                }
                else {
                    imageLink = ((visibleResults[i + 1].NewsItemImageUrlOWSTEXT != "") && (typeof visibleResults[i + 1].NewsItemImageUrlOWSTEXT != 'undefined')) ? visibleResults[i + 1].NewsItemImageUrlOWSTEXT : visibleResults[i + 1].DepNewsItemImageUrlOWSTEXT;
                    itemBody = ((visibleResults[i + 1].NewsItemBodyOWSMTXT) != "" && (typeof visibleResults[i + 1].NewsItemBodyOWSMTXT != 'undefined')) ? visibleResults[i + 1].NewsItemBodyOWSMTXT : visibleResults[i + 1].DepNewsItemBodyOWSMTXT;
                    jQuery("#centralNewsItem").prepend("<img src='" + imageLink + "' />").hide().fadeIn(500);
                    jQuery("#centralElementTitle").append(visibleResults[i + 1].Title + "<form action='" + _spPageContextInfo.siteServerRelativeUrl + "/Pages/NewsItemDisplayPage.aspx' method='post'><input type='hidden' name='itemTitle' value='" + visibleResults[i + 1].Title + "'><input type='hidden' name='itemBody' value='" + itemBody + "'><input type='hidden' name='itemImage' value='" + imageLink + "'></form>");
                    jQuery("#item-" + (i + 1)).addClass("active-item");
                    scrolled = scrolled + 1.0/3;
                    if (jScrollPaneAPI.getIsScrollableV()) {
                        jScrollPaneAPI.scrollToPercentY(scrolled, true);
                    } else {
                        jScrollPaneAPI.scrollToPercentX(scrolled, true);
                    }
                    return;
                }
            }
        }

    });


})