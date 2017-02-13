jQuery(document).ready(function() {

    //hide ribbon line if it has no children
    if (jQuery("#RibbonContainer").length === 0) {
        jQuery('#s4-ribbonrow').hide();
    }

    var x = jQuery("#RibbonContainer");
    x.addClass("container");
    

    jQuery("#myNavbar li").click(function () {

        jQuery(".navCurrentItem").removeClass("activeNavItem");
        jQuery(this).find(".navCurrentItem").addClass("activeNavItem");

    });

    jQuery("#video-webpart-tabs li").click(function () {

        jQuery(".navCurrentVideoItem").removeClass("activeNavItem");
        jQuery(".navAnchor").removeClass("activeAnchor");
        jQuery(this).find(".navCurrentVideoItem").addClass("activeNavItem");
        jQuery(this).find(".navAnchor").addClass("activeAnchor");
    });

})