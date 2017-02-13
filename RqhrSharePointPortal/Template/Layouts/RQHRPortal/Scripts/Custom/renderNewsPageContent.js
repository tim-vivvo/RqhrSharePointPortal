

function RenderResults(newsItemDetails) {

    var details = JSON.parse(newsItemDetails);

    jQuery("#news-page-title").append("<h1>" + details.itemTitle + "</h1>");
    jQuery("#news-page-body").append("<img src='" + details.itemImage + "' align='left' class='news-page-image' />");
    jQuery("#news-page-body").append("<p>" + details.itemBody + "</p>");


}




   
