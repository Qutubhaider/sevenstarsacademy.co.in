<%@ Control Language="C#" AutoEventWireup="true" CodeFile="slider.ascx.cs" Inherits="control_slider" %>
<asp:Literal ID="slidercss" runat="server"></asp:Literal>
<div class="home-slider-area" id="slider" runat="server">
</div>
<script type="text/javascript">
    function callslider() {
        $(".home-slider-area").owlCarousel({
            items: 1,
            nav: true,
            dots: true,
            autoplay: true,
            loop: true,
        });

        //$(".home-slider-area").owlCarousel({
        //    items: 4,
        //    loop: true,
        //    margin: 10,
        //    autoplay: true,
        //    autoplayTimeout: 1000,
        //    autoplayHoverPause: true
        //});
        //$('.play').on('click', function () {
        //    owl.trigger('play.owl.autoplay', [1000])
        //})
        //$('.stop').on('click', function () {
        //    owl.trigger('stop.owl.autoplay')
        //})

        //$(".home-slider-area-2").owlCarousel({
        //    items: 1,
        //    nav: true,
        //    dots: true,
        //    autoplay: false,
        //    loop: true,
        //    navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        //});
    }
</script>
