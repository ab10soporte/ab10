<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AB10 | Lockscreen</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="<c:url value="/resource/libs/bootstrap-3.3.7/css/bootstrap.min.css" />" />
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<c:url value="/resource/libs/font-awesome-4.6.3/css/font-awesome.min.css"/>" />        
        <!-- Ionicons -->
        <link rel="stylesheet" href="<c:url value="/resource/libs/ionicons-2.0.1/css/ionicons.min.css"/>" />
        <!-- Theme style -->
        <link rel="stylesheet" href="<c:url value="/resource/libs/adminlte-1.0.0/css/AdminLTE.min.css"/>" />        

    </head>

    <body class="hold-transition login-page">
        <div class="lockscreen-wrapper">
            <div class="lockscreen-logo">
                <a href="../../index2.html"><b>AB10</b>   tool</a>
            </div>
            <!-- User name -->
            <div class="lockscreen-name">S. Toledo</div>

            <!-- START LOCK SCREEN ITEM -->
            <div class="lockscreen-item">
                <!-- lockscreen image -->
                <div class="lockscreen-image">
                    <img src="<c:url value="/resource/image/adminlte/user2-160x160.jpg" />" alt="User Image">                    
                </div>
                <!-- /.lockscreen-image -->

                <!-- lockscreen credentials (contains the form) -->
                <form class="lockscreen-credentials">
                    <div class="input-group">
                        <input type="password" class="form-control" placeholder="password">

                        <div class="input-group-btn">
                            <button type="button" class="btn"><i class="fa fa-arrow-right text-muted"></i></button>
                        </div>
                    </div>
                </form>
                <!-- /.lockscreen credentials -->

            </div>
            <!-- /.lockscreen-item -->
            <div class="help-block text-center">
                Introduzca su contraseña para recuperar su sesión
            </div>
            <div class="text-center">
                <a href="login.htm">O inicia sesión como un usuario diferente</a>
            </div>
            <div class="lockscreen-footer text-center">
                Copyright &copy; 2014-2016 <b><a href="#" class="text-black">AB10</a></b><br>
                Todos los derechos reservados
            </div>
        </div>

        <!-- REQUIRED JS SCRIPTS -->

        <!-- jQuery 3.1.0 -->        
        <script src="<c:url value="/resource/libs/jquery-3.1.0/js/jquery.min.js" />"></script>
        <!-- Bootstrap 3.3.7 -->        
        <script src="<c:url value="/resource/libs/bootstrap-3.3.7/js/bootstrap.min.js" />"></script>

    </body>
</html>
