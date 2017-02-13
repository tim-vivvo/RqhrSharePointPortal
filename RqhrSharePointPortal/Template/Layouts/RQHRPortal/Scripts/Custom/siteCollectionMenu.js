jQuery(document).ready(function () {
    $("#testDropDown").hide();
    var siteItems = JSON.parse(jQuery("input[name*='SiteCollectionTitles']").val());

    for (var i = 0; i < siteItems.length; i++) {

        if (i == 0)
        {
            $("#testDropDown").append("<p class='departmentCharacter firstCharacter'>" + siteItems[i].Title.charAt(0).toUpperCase() + "</p>");
        }

        if (i > 0) {
            if (siteItems[i].Title.toLowerCase().charAt(0) != siteItems[i-1].Title.toLowerCase().charAt(0))
            {
                $("#testDropDown").append("<p class='departmentCharacter'>" + siteItems[i].Title.charAt(0).toUpperCase() + "</p>");
            }
        }

        $("#testDropDown").append("<p class='departmentDropdownItems'><a href='" + siteItems[i].Url + "'>" + siteItems[i].Title + "</a></p>");
    }

    var itemPosition;
    var itemHeight;

    $("#departments").mouseenter(function () {
        itemPosition = $("#departments").offset();
        itemHeight = $("#departments").parent("li").height();
        $("#testDropDown").css({ 'margin-left': itemPosition.left + 'px', 'margin-top': itemPosition.top + itemHeight + 'px' });
        $("#testDropDown").fadeIn();
    });
       

    (function () {
        var time = 10,
            timer;

        function handlerIn() {
            clearTimeout(timer);
            $('#testDropDown').stop(true).css('opacity', 1).show();
        }
        function handlerOut() {
            timer = setTimeout(function () {
                $('#testDropDown').fadeOut();
            }, time);
        }

        $("#departments, #testDropDown").hover(handlerIn, handlerOut);
    }());


})