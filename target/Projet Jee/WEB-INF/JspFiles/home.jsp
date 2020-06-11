<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Employee</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="<%=application.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="<%=application.getContextPath() %>/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<%=application.getContextPath() %>/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<%=application.getContextPath() %>/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="<%=application.getContextPath() %>/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<!-- navbar-->
<header class="header">
    <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow">
        <a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left">
        </i>
        </a>
        <a href="login" class="navbar-brand font-weight-bold text-uppercase text-base">Page principale</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
            <li class="nav-item dropdown ml-auto">
                <a id="userInfo" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">
                    <img src="<%=application.getContextPath()%>/img/user.png" alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow">
                </a>
                <div aria-labelledby="userInfo" class="dropdown-menu">
                    <a href="#" class="dropdown-item">
                        <strong class="d-block text-uppercase headings-font-family"><%=session.getAttribute("user_name") %></strong>
                    </a>
                    <div class="dropdown-divider"></div><a href="logout" class="dropdown-item">Se Deconnecter</a>
                </div>
            </li>
        </ul>
    </nav>
</header>
<div class="d-flex align-items-stretch">
    <div id="sidebar" class="sidebar py-3">
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
        <ul class="sidebar-menu list-unstyled">
            <li class="sidebar-list-item"><a href="#" class="sidebar-link text-muted active"><i class="o-home-1 mr-3 text-gray"></i><span>Home</span></a></li>
            <li class="sidebar-list-item"><a href="recommandation" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>Recommandations</span></a></li>
            <li class="sidebar-list-item"><a href="logout" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>Se Deconnecter</span></a></li>
        </ul>
    </div>
    <div class="page-holder w-100 d-flex flex-wrap">
        <div class="container-fluid px-xl-5">
            <section class="py-5">
                <div class="row">

                    <form action="questionnaire" method="post" class="col-lg-12">
                        <%
                            ArrayList<String> questionnaire = (ArrayList<String>) request.getAttribute("questionnaire");
                            for (int i = 0 ; i < questionnaire.size() ; i++) {
                                %> <div class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                                        <div class="row">
                                        <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                        <strong class="h5 mb-0"> Questionnaire <%=(i+1)%></strong>
                                        </div>
                                        <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                        <input type="submit" name="nom_quiz" value="<%=questionnaire.get(i)%>" class="btn btn-primary shadow px-5" />
                                        </div>
                                        </div>
                                    </div>
                           <% }%>
                    </form>
                </div>

            </section>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="<%=application.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
<script src="<%=application.getContextPath()%>/vendor/popper.js/umd/popper.min.js"> </script>
<script src="<%=application.getContextPath()%>/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=application.getContextPath()%>/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="<%=application.getContextPath()%>/vendor/chart.js/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
<script src="<%=application.getContextPath()%>/js/front.js"></script>
</body>
</html>