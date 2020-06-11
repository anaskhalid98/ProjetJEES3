<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Signin</title>
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
<div class="page-holder d-flex align-items-center">
    <div class="container">
        <div class="row align-items-center py-5">
            <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                <div class="pr-lg-5"><img src="<%=application.getContextPath() %>/img/b11.png" alt="" class="img-fluid"></div>
            </div>
            <div class="col-lg-5 px-lg-4">
                <h2 class="mb-4">S'INSCRIRE</h2>
                <form action="signin" method="post" class="mt-4">
                    <div class="form-group mb-4">
                        <input type="text" name="Nom_Client" placeholder="Nom" class="form-control border-0 shadow form-control-lg">
                    </div>
                    <div class="form-group mb-4">
                        <input type="text" name="Prenom_Client" placeholder="Prénom" class="form-control border-0 shadow form-control-lg">
                    </div>

                    <div class="form-group mb-4">
                        <input type="text" name="Email_Client" placeholder="Email" class="form-control border-0 shadow form-control-lg">
                    </div>
                    <div class="form-group mb-4">
                        <input type="text" name="Mot_Pass_CLient" placeholder="Mot de pass" class="form-control border-0 shadow form-control-lg">
                    </div>
                    <div class="form-group mb-4">
                        <input type="text" name="Confirmer_Mot_Pass_Client" placeholder="Confirmer le mot de pass" class="form-control border-0 shadow form-control-lg">
                    </div>
                    <div class="form-group mb-4">
                        <select class="form-control border-0 shadow form-control-lg" name="poste">
                            <option value="employee" selected>Employee</option>
                            <option value="chefprojet">Chef de projet</option>
                        </select>
                    </div>
                    <input type="submit" class="btn btn-primary shadow px-5"  value="S'inscrire"/>
                </form>
            </div>
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