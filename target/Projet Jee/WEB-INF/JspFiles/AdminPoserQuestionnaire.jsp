<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Poser questionnaire Admin</title>
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
        <a href="Admin.jsp" class="navbar-brand font-weight-bold text-uppercase text-base">Page Admin</a>
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
                    <img src="<%=application.getContextPath()%>/img/chefprojet.png" alt="Jason Doe" style="max-width: 2.5rem;" class="img-fluid rounded-circle shadow">
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
            <li class="sidebar-list-item"><a href="Admin.jsp" class="sidebar-link text-muted "><i class="o-home-1 mr-3 text-gray"></i><span>Questionnaires</span></a></li>
            <li class="sidebar-list-item"><a href="<%=application.getContextPath()%>/PoserQuestionnaireServlet" class="sidebar-link text-muted active"><i class="o-survey-1 mr-3 text-gray"></i><span>Poser<br>Questionnaire</span></a></li>
            <li class="sidebar-list-item"><a href="logout" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>Se Déconnecter</span></a></li>
        </ul>
    </div>
    <div class="page-holder w-100 d-flex flex-wrap">
        <div class="container-fluid px-xl-5">

            <section class="py-5">
                <div class="row">
                    <!-- Form Elements -->
                    <div class="col-lg-12 mb-5">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="h6 text-uppercase mb-0">Ajouter questionnaire manuelement</h3>
                            </div>
                            <div class="card-body">
                                <form method="post" action="SetQuestionServlet">
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Titre:</label>
                                        <div class="col-md-9">
                                            <input name="QuizTitle" id="inputHorizontalSuccess" type="text" placeholder="Titre de questionnaire" class="form-control form-control-success" required><small class="form-text text-muted ml-3">Example help text that remains unchanged.</small>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 1</label>
                                        <div class="col-md-9">
                                            <textarea name="Question1" id="Admin_question_1" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 2</label>
                                        <div class="col-md-9">
                                            <textarea name="Question2"  id="Admin_question_2" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 3</label>
                                        <div class="col-md-9">
                                            <textarea name="Question3"  id="Admin_question_3" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 4</label>
                                        <div class="col-md-9">
                                            <textarea name="Question4"  id="Admin_question_4" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 5</label>
                                        <div class="col-md-9">
                                            <textarea name="Question5" id="Admin_question_5" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 6</label>
                                        <div class="col-md-9">
                                            <textarea  name="Question6" id="Admin_question_6" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 7</label>
                                        <div class="col-md-9">
                                            <textarea name="Question7" id="Admin_question_7" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 8</label>
                                        <div class="col-md-9">
                                            <textarea name="Question8" id="Admin_question_8" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 9</label>
                                        <div class="col-md-9">
                                            <textarea name="Question9" id="Admin_question_9" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">Question 10</label>
                                        <div class="col-md-9">
                                            <textarea name="Question10" id="Admin_question_10" type="text" placeholder="Question" class="form-control form-control-warning" rows="4" required></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <div class="col-md-9 ml-auto">
                                            <button type="submit" value="Signin" class="btn btn-primary">Confirmer </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">got
                <div class="row">
                    <!-- Form Elements -->
                    <div class="col-lg-12 mb-5">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="h6 text-uppercase mb-0">Ajouter questionnaire CSV </h3>
                            </div>
                            <div class="card-body">
                                <form method="post" action="SetQuestionCSVServlet">
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Titre:</label>
                                        <div class="col-md-9">
                                            <input name="QuizTitle" id="Quiztitle" type="text" placeholder="Titre de questionnaire" class="form-control form-control-success" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-3 form-control-label">Ajouter un fichier CSV:</label>
                                        <div class="col-md-9">
                                            <input name="CSV_Path" id="CSV_Path_id" type="text" placeholder="URI de fichier CSV" class="form-control form-control-success" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-9 ml-auto">
                                            <button type="submit" value="Signin" class="btn btn-primary">Confirmer </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="../../vendor/jquery/jquery.min.js"></script>
<script src="../../vendor/popper.js/umd/popper.min.js"> </script>
<script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../../vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../../vendor/chart.js/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
<script src="../../js/front.js"></script>
</body>
</html>