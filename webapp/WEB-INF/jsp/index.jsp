<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<body>
<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up">

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
            <div class="col-xl-6 col-lg-8">
                <h1><span>.</span></h1>
                <button type="button" onclick="api()">API</button>
                <h2>We are team of talented digital marketers</h2>
            </div>
        </div>

        <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
            <div class="input">
                <form action="" method="post">
                    <input type="text" required/>
                    <label>Name</label>
                    <span></span>
                </form>
            </div>
        </div>

    </div>
</section><!-- End Hero -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<script type="text/javascript">
    window.onload = function() {

    }
    
    const api = function () {
        $.ajax({
            url : "/bgkb/api",
            type: "GET",
            contentType : 'application/json; charset=utf-8',
            success: function (data) {
                alert("호출성공");
                let bgData = JSON.parse(data);
                console.log(bgData);
            }
        })
    }
</script>

</body>
</html>