<%@ Control Language="C#" AutoEventWireup="true" CodeFile="testimonial.ascx.cs" Inherits="control_testimonial" %>
<div class="tastimonial-wrapper" id="testimonial_list" runat="server">
    
    <%--<div class="tastimonial-item-area">
        <div class="single-testimonial">
            <p>
                Ut wis enim ad minim veniam, quis nostrud exerci tation ullamcorper slob tortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dohendrerit putate velit esse molestie consequat vel illum dolore eu feu <i class="fa fa-quote-left"></i>
            </p>
        </div>
        <div class="testimonial-author">
            <img src="assets/img/testimonial-img.png" alt="">
            <h4>Mary janu <span>CMT Student</span></h4>
        </div>
    </div>--%>
</div>
<script type="text/javascript">
    function calltastimonial()
    {
        $('.tastimonial-wrapper').owlCarousel({
            items: 1,
            nav: false,
            dots: true,
            autoplay: false,
            loop: true,
        });
    }
</script>