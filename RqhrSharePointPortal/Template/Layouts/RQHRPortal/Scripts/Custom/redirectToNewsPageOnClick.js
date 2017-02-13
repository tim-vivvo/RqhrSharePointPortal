
jQuery(document).ready(function() {
    $("#news-items").on("click", "[id^='item-']", function () {
        jQuery(this).find("form").submit();
    });

    $("#centralNewsItem").on("click", "#centralElementTitle", function () {
        jQuery(this).find("form").submit();
    });
})