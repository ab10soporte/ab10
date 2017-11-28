<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AB10 | Starter</title>
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
        <!-- iCheck -->
        <link rel="stylesheet" href="<c:url value="/resource/libs/iCheck-1.0.0/square/blue.css"/>" />

    </head>

    <body class="hold-transition login-page">
        <div class="login-box">
            <div class="login-logo">
                <a href="#"><b>AB10</b>   tool</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Inicie su sesion</p>
                                                
                <c:if test="${not empty requestScope.message}">                    
                    <div class="alert alert-error">
                        <button class = "close" data-dismiss = "alert"><span>&times;</span></button>
                        ${requestScope.message}
                    </div>
                </c:if>                

                <form action="login.htm" method="post">
                    <input type="hidden" name="action" value="1">
                    <div class="form-group has-feedback">
                        <input name="email" type="email" class="form-control" placeholder="Email">
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input name="password" type="password" class="form-control" placeholder="Clave">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
<!--                            <div class="checkbox icheck">
                                <label>
                                    <input name="checkbox" type="checkbox" > Recordarme
                                </label>
                            </div>-->
                        </div>
                        <!-- /.col -->
                        <div class="col-xs-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Inicio </button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>                                            

                <div class="social-auth-links text-center">
                    <p>- Opciones -</p>                    
                    <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
                        Facebook</a>
                    <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
                        Google+</a>
                </div>
                <!-- /.social-auth-links -->

                <c:url value="/login.htm?p=1" var="guestBookLink" />                
                <a href="${guestBookLink}">Olvide mi clave</a><br>
                
                <a href="register.htm" class="text-center">Registo de un nuevo miembro</a>

            </div>
            <!-- /.login-box-body -->
        </div>

        <!-- REQUIRED JS SCRIPTS -->

        <!-- jQuery 3.1.0 -->        
        <script src="<c:url value="/resource/libs/jquery-3.1.0/js/jquery.min.js" />"></script>
        <!-- Bootstrap 3.3.7 -->        
        <script src="<c:url value="/resource/libs/bootstrap-3.3.7/js/bootstrap.min.js" />"></script>
        <!-- iCheck -->
        <script src="<c:url value="/resource/libs/iCheck-1.0.0/icheck.min.js" />"></script>
        
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>
    </body>
</html>
