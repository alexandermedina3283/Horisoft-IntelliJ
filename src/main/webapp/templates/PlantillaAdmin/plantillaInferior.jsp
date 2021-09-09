<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 2/09/2021
  Time: 5:10 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--Comienza plantilla parte inferior-->
</div>
<!-- Main content ends -->
<!-- Container-fluid ends -->
<!--<div class="fixed-button">
    <a href="#!" class="btn btn-md btn-primary">
        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Upgrade To Pro
    </a>
</div>-->
</div>
</div>


<!-- Warning Section Starts -->
<!-- Older IE warning message -->
<!--[if lt IE 9]>
<div class="ie-warning">
<h1>Warning!!</h1>
<p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
<div class="iew-container">
<ul class="iew-download">
<li>
<a href="http://www.google.com/chrome/">
<img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/browser/chrome.png" alt="Chrome">
<div>Chrome</div>
</a>
</li>
<li>
<a href="https://www.mozilla.org/en-US/firefox/new/">
<img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/browser/firefox.png" alt="Firefox">
<div>Firefox</div>
</a>
</li>
<li>
<a href="http://www.opera.com">
<img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/browser/opera.png" alt="Opera">
<div>Opera</div>
</a>
</li>
<li>
<a href="https://www.apple.com/safari/">
<img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/browser/safari.png" alt="Safari">
<div>Safari</div>
</a>
</li>
<li>
<a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
<img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/browser/ie.png" alt="">
<div>IE (9 & above)</div>
</a>
</li>
</ul>
</div>
<p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<!-- Warning Section Ends -->

<!-- Required Jqurey -->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/Jquery/dist/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/tether/dist/js/tether.min.js"></script>

<!-- Required Fremwork -->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Scrollbar JS-->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/jquery.nicescroll/jquery.nicescroll.min.js"></script>

<!--classic JS-->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/classie/classie.js"></script>

<!-- notification -->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/notification/js/bootstrap-growl.min.js"></script>

<!-- Sparkline charts -->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/jquery-sparkline/dist/jquery.sparkline.js"></script>

<!-- Counter js  -->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/waypoints/jquery.waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/countdown/js/jquery.counterup.js"></script>

<!-- Echart js -->
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/charts/echarts/js/echarts-all.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>

<!-- custom js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/js/main.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/pages/dashboard.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/pages/elements.js"></script>
<script src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/js/menu.min.js"></script>
<script>
    var $window = $(window);
    var nav = $('.fixed-button');
    $window.scroll(function(){
        if ($window.scrollTop() >= 200) {
            nav.addClass('active');
        }
        else {
            nav.removeClass('active');
        }
    });
</script>
<!--iconos-->
<script src="https://kit.fontawesome.com/d51e0c6239.js" crossorigin="anonymous"></script>

</body>


