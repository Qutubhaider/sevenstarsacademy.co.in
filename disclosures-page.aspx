<%@ Page Language="C#" AutoEventWireup="true" CodeFile="disclosures-page.aspx.cs" Inherits="disclosures_page" %>

<%@ Register Src="~/control/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/control/headercss.ascx" TagPrefix="uc1" TagName="headercss" %>
<%@ Register Src="~/control/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Disclosures Details - SEVEN STARS ACADEMY | Boarding and Day Academy, CBSE Board</title>
    <uc1:headercss runat="server" ID="headercss" />
    <link rel="stylesheet" type="text/css" media="screen" href="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.css" />
    <style type="text/css">
        a.fancybox img {
            border: none;
            box-shadow: 0 1px 7px rgba(0,0,0,0.6);
            -o-transform: scale(1,1);
            -ms-transform: scale(1,1);
            -moz-transform: scale(1,1);
            -webkit-transform: scale(1,1);
            transform: scale(1,1);
            -o-transition: all 0.2s ease-in-out;
            -ms-transition: all 0.2s ease-in-out;
            -moz-transition: all 0.2s ease-in-out;
            -webkit-transition: all 0.2s ease-in-out;
            transition: all 0.2s ease-in-out;
        }

        a.fancybox:hover img {
            position: relative;
            z-index: 999;
            -o-transform: scale(1.03,1.03);
            -ms-transform: scale(1.03,1.03);
            -moz-transform: scale(1.03,1.03);
            -webkit-transform: scale(1.03,1.03);
            transform: scale(1.03,1.03);
        }
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.pack.min.js"></script>
    <script type="text/javascript">
        $(function ($) {
            var addToAll = false;
            var gallery = true;
            var titlePosition = 'inside';
            $(addToAll ? 'img' : 'img.fancybox').each(function () {
                var $this = $(this);
                var title = $this.attr('title');
                var src = $this.attr('data-big') || $this.attr('src');
                var a = $('<a href="#" class="fancybox"></a>').attr('href', src).attr('title', title);
                $this.wrap(a);
            });
            if (gallery)
                $('a.fancybox').attr('rel', 'fancyboxgallery');
            $('a.fancybox').fancybox({
                titlePosition: titlePosition
            });
        });
        $.noConflict();
    </script>
</head>
<body>
    <!-- Mainmenu Area Start -->
    <uc1:header runat="server" ID="header" />
    <!-- Mainmenu Area End -->
    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area breadcrumb-bg overlay-black pd-70">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2>Disclosures Details</h2>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <span class="saparator"><i class="fa fa-long-arrow-right"></i></span>
                        <li>Disclosures Details</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End -->
    <!-- About School Area Start -->

    <div class="blog-area pd-top-100 pd-bottom-70">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="section-title" id="txt_gallery_title" runat="server"></h2>
                </div>
                <div class="col-md-12">
                    <blockquote id="txt_intro" runat="server">

                    </blockquote>
                    <blockquote id="txt_details" runat="server">

                    </blockquote>
                </div>
            </div>
            <div class="row" id="Gallerylist" runat="server">
            </div>
        </div>
    </div>
    <!-- Footer Area Start -->
    <uc1:footer runat="server" ID="footer" />
    <!-- Footer Area End -->
</body>
</html>


