(function ($) {
	"use strict";
    
    
    $(document).ready(function($) {          
        $(function () {
        $('.map')          
              .gmap3({
                center:[23.739183, 90.387002],
                zoom:13,
                scrollwheel: false,
                mapTypeId: "shadeOfGrey", // to select it directly
                mapTypeControlOptions: {
                  mapTypeIds: [google.maps.MapTypeId.ROADMAP, "shadeOfGrey"]
                }
              })
             .marker({
                position:[23.739183, 90.387002],
                icon: 'assets/img/map-marker.png'
              })
              .styledmaptype(
                "shadeOfGrey",
                [
                  {"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},
                  {"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},
                  {"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},
                  {"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"},{"lightness":17},{"weight":1.2}]},
                  {"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#f2f2f2"},{"lightness":20}]},
                  {"featureType":"poi","elementType":"geometry","stylers":[{"color":"#f2f2f2"},{"lightness":21}]},
                  {"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#BFDEEB"},{"lightness":17}]},
                  {"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},
                  {"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":18}]},
                  {"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#dddddd"},{"lightness":16}]},
                  {"featureType":"transit","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":19}]},
                  {"featureType":"water","elementType":"geometry","stylers":[{"color":"#1E90FF"},{"lightness":17}]}
                ],
                {name: "Shades of Grey"}
              );
      });
        
    });	  


}(jQuery));	