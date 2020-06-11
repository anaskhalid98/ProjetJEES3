<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bubbly - Boootstrap 4 Admin template by Bootstrapious.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png?3">
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
        <a href="ChefProjet.jsp" class="navbar-brand font-weight-bold text-uppercase text-base">Chef de Projet</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
            <li class="nav-item">
                <form id="searchForm" class="ml-auto d-none d-lg-block">
                    <div class="form-group position-relative mb-0">
                        <button type="submit" style="top: -3px; left: 0;" class="position-absolute bg-white border-0 p-0"><i class="o-search-magnify-1 text-gray text-lg"></i></button>
                        <input type="search" placeholder="Search ..." class="form-control form-control-sm border-0 no-shadow pl-4">
                    </div>
                </form>
            </li>
            <li class="nav-item dropdown mr-3"><a id="notifications" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle text-gray-400 px-1"><i class="fa fa-bell"></i><span class="notification-icon"></span></a>
                <div aria-labelledby="notifications" class="dropdown-menu"><a href="#" class="dropdown-item">

                    <div class="d-flex align-items-center">
                        <div class="icon icon-sm bg-green text-white"><i class="fas fa-envelope"></i></div>
                        <div class="text ml-2">
                            <p class="mb-0">Vous avez 3 recommandations</p>
                        </div>
                    </div></a><a href="#" class="dropdown-item"></a>

                    <div class="dropdown-divider">
                    </div>
                    <a href="#" class="dropdown-item text-center">
                        <small class="font-weight-bold headings-font-family text-uppercase">Voir toutes les recommandations</small>
                    </a>
                </div>
            </li>
            <li class="nav-item dropdown ml-auto">
                <a id="userInfo" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">
                    <img src="img/anas.jpg" alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow">
                </a>
                <div aria-labelledby="userInfo" class="dropdown-menu">
                    <a href="#" class="dropdown-item">
                        <strong class="d-block text-uppercase headings-font-family">KHALID Anas</strong>
                        <small>Ingénieur en informatique</small>
                    </a>
                    <div class="dropdown-divider"></div><a href="#" class="dropdown-item">Paramètres</a>
                    <div class="dropdown-divider"></div><a href="login.html" class="dropdown-item">Se Déconnecter</a>
                </div>
            </li>
        </ul>
    </nav>
</header>
<div class="d-flex align-items-stretch">
    <div id="sidebar" class="sidebar py-3">
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
        <ul class="sidebar-menu list-unstyled">
            <li class="sidebar-list-item"><a href="ChefProjet.jsp" class="sidebar-link text-muted active"><i class="o-home-1 mr-3 text-gray"></i><span>Home</span></a></li>
            <li class="sidebar-list-item"><a href="index.jsp" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>Se Déconnecter</span></a></li>
        </ul>
    </div>
    <div class="page-holder w-100 d-flex flex-wrap">
        <div class="container-fluid px-xl-5">
            <section class="py-5">
                <div class="row">
                    <form method="get" action="ChefProjetShowAnswersServlet">
                        <div class="col-md-4 center-block">
                            <input type="submit" class="btn btn-primary shadow px-5 align-self-center" value="test" />
                        </div>
                    </form>
                    <div class="col-lg-12">
                        <a href="WEB-INF/JspFiles/ReponseRecommandationChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Hamza Bouqdir</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">User testing</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Fahd Gemran</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Design</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Oussama Siyagh</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Psychologie</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Hamza Bouqdir</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">User testing</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Fahd Gemran</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Design</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Oussama Siyagh</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Psychologie</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Hamza Bouqdir</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">User testing</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Fahd Gemran</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Design</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-12">
                        <a href="ChefProjet.jsp" class="message card px-5 py-3 mb-4 bg-hover-gradient-primary no-anchor-style">
                            <div class="row">
                                <div class="col-lg-3 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <strong class="h5 mb-0">
                                        <h6 class="mb-0">Oussama Siyagh</h6>
                                    </strong>
                                    <img src="img/avatar-1.jpg" alt="..." style="max-width: 3rem" class="rounded-circle mx-3 my-2 my-lg-0">
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-column flex-lg-row text-center text-md-left">
                                    <div class="bg-gray-100 roundy px-4 py-1 mr-0 mr-lg-3 mt-2 mt-lg-0 text-dark exclode">Psychologie</div>
                                    <p class="mb-0 mt-3 mt-lg-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
            </section>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"> </script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
<script src="js/charts-home.js"></script>
<script src="js/front.js"></script>
</body>
</html>