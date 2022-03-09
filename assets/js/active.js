/**	
	* Template Name: StudyPlus
	* Version: 1.0	
	* Template Scripts
	* Author: Syed Raziul Islam
	
**/


(function ($) {
	"use strict";
    
    
    $(document).ready(function($) {  
        
        //Scroll Top
        $('.scroll-top').on('click', function () {
            $("html, body").animate({
                scrollTop: 0
            }, 600);
            return false;
        });
        
        /* Magnific Popup JS */        
        $('.video-bg a').magnificPopup({
          type: 'iframe',
          gallery:{
            enabled:true
          }          
        });
        
        //Nics Select
        $('.active-select').niceSelect();
        
        /** Owl Carousel Js**/
        $(".home-slider-area").owlCarousel({
            items: 1,
            nav: true,
            dots: true,
            autoplay: true,
            loop: true,
        });        
        $(".home-slider-area-2").owlCarousel({
            items: 1,
            nav: true,
            dots: true,
            autoplay: false,
            loop: true,
            navText:["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        });        
        $(".speakers-wrapper").owlCarousel({
            items: 1,
            nav: true,
            dots: true,
            autoplay: false,
            loop: true,
            navText:["<i class='fa fa-long-arrow-left'></i>", "<i class='fa fa-long-arrow-right'></i>"],
        });        
        $('.feature-wrapper').owlCarousel({
            nav:true,
            dots:false,
            autoplay:false,
            loop:true,
            navText:["<i class='fa fa-long-arrow-left'></i>", "<i class='fa fa-long-arrow-right'></i>"],
             responsive:{
	            0:{
	                items: 1,
	            },
	            600:{
	                items: 2,
	            },
	            1000:{
	                items: 4,
	            }
        	}
        });
        $('.feature-wrapper-2').owlCarousel({
            nav:true,
            dots:false,
            autoplay:false,
            loop:true,
            navText:["<i class='fa fa-long-arrow-left'></i>", "<i class='fa fa-long-arrow-right'></i>"],
             responsive:{
	            0:{
	                items: 1,
	            },
	            600:{
	                items: 2,
	            },
	            1000:{
	                items: 3,
	            }
        	}
        });
        $('.courses-wrapper').owlCarousel({
            nav:true,
            dots:false,
            autoplay:false,
            loop:true,
            navText:["<i class='fa fa-long-arrow-left'></i>", "<i class='fa fa-long-arrow-right'></i>"],
             responsive:{
	            0:{
	                items: 1,
	            },
	            600:{
	                items: 2,
	            },
	            1000:{
	                items: 3,
	            }
        	}
        });
       
        
         /* Counter JS */
    	$('.count').counterUp({
            delay: 10,
            time: 1000
        });
        
        //Time JS
        var myDate = new Date();
        myDate.setDate(myDate.getDate() + 2);
            $("#countdown").countdown(myDate, function (event) {
                $(this).html(
                    event.strftime(
                        '<div class="timer-item"><div class="time">%D</div><span class="text">Days</span></div><div class="timer-item"><div class="time">%H</div><span class="text">Hours</span></div><div class="timer-item"><div class="time">%M</div><span class="text">Minute</span></div><div class="timer-item"><div class="time">%S</div><span class="text">Sec</span></div>'
                    )
                );
            });
        
            $('.accordion-toggle').on('click', function(){
                $(this).closest('.panel-group').children().each(function(){
                $(this).find('>.panel-heading').removeClass('active');
                 });

                $(this).closest('.panel-heading').toggleClass('active');
            });
        
        
        /** Slicknav **/
        $('.mainmenu').slicknav({
            prependTo: '.responsive-menu'
        });
        
    });	   

    jQuery(window).load(function(){
       $(".studyplus-preloader-wrapper").fadeOut("500")        
    });


}(jQuery));


