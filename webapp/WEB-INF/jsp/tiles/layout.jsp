<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title><tiles:getAsString name="title"/></title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<c:url value="/resources/bootstrap/assets/img/favicon.png"/>" rel="icon">
    <link href="<c:url value="/resources/bootstrap/assets/img/apple-touch-icon.png"/>" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/vendor/aos/aos.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/vendor/bootstrap/css/bootstrap.min.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/vendor/bootstrap-icons/bootstrap-icons.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/vendor/boxicons/css/boxicons.min.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/vendor/glightbox/css/glightbox.min.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/vendor/remixicon/remixicon.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/vendor/swiper/swiper-bundle.min.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap/assets/css/style.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>" />
</head>
<body>
    <!-- header -->
    <tiles:insertAttribute name="header"/>
    <!-- content -->
    <tiles:insertAttribute name="body"/>
    <!-- footer -->
    <tiles:insertAttribute name="footer"/>
    <!-- Bootstrap core JS-->
    <script src="<c:url value="/resources/bootstrap/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
    <!-- Core theme JS-->
    <script src="<c:url value="/resources/bootstrap/assets/vendor/purecounter/purecounter_vanilla.js"/>"></script>
    <script src="<c:url value="/resources/bootstrap/assets/vendor/aos/aos.js"/>"></script>
    <script src="<c:url value="/resources/bootstrap/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/resources/bootstrap/assets/vendor/glightbox/js/glightbox.min.js"/>"></script>
    <script src="<c:url value="/resources/bootstrap/assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
    <script src="<c:url value="/resources/bootstrap/assets/vendor/swiper/swiper-bundle.min.js"/>"></script>
    <script src="<c:url value="/resources/jquery/jquery-1.11.1.min.js"/>"></script>

    <!-- Template Main JS File -->
    <script src="<c:url value="/resources/bootstrap/assets/js/main.js"/>"></script>
</body>
</html>