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
        <div class="register-box">
            <div class="register-logo">
                <a href="#"><b>AB10</b>   tool</a>
            </div>

            <div class="register-box-body">
                <p class="login-box-msg">Registo de un nuevo miembro</p>
                
                <!--Ejemplo de carteles-->
                <!--https://www.tutorialrepublic.com/twitter-bootstrap-tutorial/bootstrap-alerts.php-->
                
                <c:if test="${not empty requestScope.message}">                    
                    <div class="alert alert-danger fade in">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        ${requestScope.message}
                    </div>
                </c:if>  

                <c:if test="${not empty requestScope.messageOK}">                    
                    <div class="alert alert-success fade in">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        ${requestScope.messageOK}
                    </div>
                </c:if> 

                <form action="register.htm" method="post">
                    <input type="hidden" name="action" value="1">
                    <div class="form-group has-feedback">
                        <c:choose>
                            <c:when test="${empty requestScope.nombre}">
                                <input type="text" class="form-control" placeholder="Nombre completo" name="nombre">
                                <span class="glyphicon glyphicon-user form-control-feedback"></span> 
                            </c:when>    
                            <c:otherwise>
                                <input type="text" class="form-control" placeholder="Nombre completo" name="nombre" value="${requestScope.nombre}">
                                <span class="glyphicon glyphicon-user form-control-feedback"></span> 
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div class="form-group has-feedback">
                        <c:choose>
                            <c:when test="${empty requestScope.email}">
                                <input type="email" class="form-control" placeholder="Email" name="email">
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            </c:when>    
                            <c:otherwise>
                                <input type="email" class="form-control" placeholder="Email" name="email" value="${requestScope.email}">
                                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>  
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="Clave" name="clave">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="Repita la clave" name="clave1">
                        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label>
                                    <input type="checkbox" name="termino">  Acepto los  <a href="#">terminos</a>
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-xs-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Registrar</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>

                <div class="social-auth-links text-center">
                    <p>- Opciones -</p>
                    <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
                        Facebook</a>
                    <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
                        Google+</a>
                </div>

                <a href="login.htm" class="text-center">Ya tengo una cuenta</a>
            </div>
            <!-- /.form-box -->
        </div>
        <!-- /.register-box -->

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
