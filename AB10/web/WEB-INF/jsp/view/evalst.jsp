<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>                        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AB10</title>

        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <!--Logo de arriba en el navegador-->
        <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resource/image/favicon.ico"/>" />         


        <!-- REQUIRED CSS SCRIPTS -->
        <!--CSS bases-->
        <%@ include file="../include/includecss.jsp" %>         
        <!--Tablas-->
        <!--<link rel="stylesheet" href="<c:url value="/resource/libs/bootstrap-3.3.7/css/dataTables.bootstrap.css" />" />-->
        <!-- bootstrap datepicker -->  
        <link rel="stylesheet" href="<c:url value="/resource/libs/datepicker-1.0.0/datepicker3.css" />" />                
        <!-- REQUIRED CSS SCRIPTS -->        

        <!-- REQUIRED JS SCRIPTS -->
        <!--JS bases-->
        <%@ include file="../include/includejs.jsp" %> 
        <!-- bootstrap datepicker -->
        <script src="<c:url value="/resource/libs/datepicker-1.0.0/bootstrap-datepicker.js" />"></script>
        <!-- REQUIRED JS SCRIPTS -->

    </head>

    <body class="hold-transition skin-blue fixed sidebar-mini">
        <div class="wrapper">
            <%@ include file="../template/header.jsp" %> 

            <!-- ACA Contenido dinamico de la aplicacion -->
            <div class="content-wrapper ">                            

                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Bienvenido
                        <small>Pagina principal</small>
                    </h1>
                    <ol class="breadcrumb">                        
                        <li class="active">Principal</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class=" panel panel-info">
                        <div class="panel-heading">Listado de evaluaciones realizadas</div>
                        <div class="panel-body">
                            <div class="box-footer text-right">
                                <!--<button type="submit" class="btn btn-primary">Nueva Evaluacion</button>-->
                                <a class="btn btn-primary" href="javascript:call_evaldet()">Nueva Evaluacion</a>
                            </div>
                        </div>

                        <!-- Listado de evaluaciones -->
                        <table id="mytable" class="table table-bordred table-striped">

                            <thead>

                            <th>Legajo</th>
                            <th>Fecha de inicio</th>
                            <th>Nombre del paciente</th>                            
                            <th>Email del paciente</th>
                            <th>Derivado por</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                            <th>Estado</th>
                            </thead>
                            <tbody>

                                <c:forEach items="${evalList}" var="current">
                                    <tr>
                                        <td class="nr"><c:out value="${current.legajo}" /></td>
                                        <td><c:out value="${current.fecha}" /></td>
                                        <td><c:out value="${current.pacnombre}" /></td>
                                        <td><c:out value="${current.email}" /></td>
                                        <td><c:out value="${current.derivado}" /></td>                                        
                                        <!--Estao 1-->
                                        <c:if test="${current.estado == '1'}">  
                                            <td><p data-placement="top" data-toggle="tooltip" title="Modificar"><button class="btn btn-primary btn-xs editaction" data-title="Modificar" data-toggle="modal" data-target="#Modificar"><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                            <td><p data-placement="top" data-toggle="tooltip" title="Eliminar"><button class="btn btn-danger btn-xs deleteaction" data-title="Eliminar" data-toggle="modal" data-target="#Eliminar"><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                            <td><p data-placement="top" data-toggle="tooltip" title="Pagar"><button class="btn btn-info btn-xs payaction" data-title="Pagar" data-toggle="modal" data-target="#Pagar" disabled><span class="glyphicon glyphicon-ok-circle"></span></button></p></td> 
                                        </c:if>
                                        <!--Estao 2-->
                                        <c:if test="${current.estado == '2'}">  
                                            <td><p data-placement="top" data-toggle="tooltip" title="Modificar"><button class="btn btn-primary btn-xs editaction" data-title="Modificar" data-toggle="modal" data-target="#Modificar" disabled><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                            <td><p data-placement="top" data-toggle="tooltip" title="Eliminar"><button class="btn btn-danger btn-xs deleteaction" data-title="Eliminar" data-toggle="modal" data-target="#Eliminar" disabled><span class="glyphicon glyphicon-trash"></span></button></p></td>
                                            <td><p data-placement="top" data-toggle="tooltip" title="Pagar"><button class="btn btn-info btn-xs payaction" data-title="Pagar" data-toggle="modal" data-target="#Pagar"><span class="glyphicon glyphicon-ok-circle"></span></button></p></td> 
                                        </c:if>
                                        <!--Estao 3-->
                                        <c:if test="${current.estado == '3'}">  
                                            <td><p data-placement="top" data-toggle="tooltip" title="Modificar"><button class="btn btn-primary btn-xs editaction" data-title="Modificar" data-toggle="modal" data-target="#Modificar" disabled><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                                            <td><p data-placement="top" data-toggle="tooltip" title="Eliminar"><button class="btn btn-danger btn-xs deleteaction" data-title="Eliminar" data-toggle="modal" data-target="#Eliminar" disabled><span class="glyphicon glyphicon-trash"></span></button></p></td>                                            
                                            <td><p data-placement="top" data-toggle="tooltip" title="Imprimir"><button class="btn btn-success btn-xs printaction" data-title="Imprimir" data-toggle="modal" data-target="#Imprimir" ><span class="glyphicon glyphicon-print"></span></button></p></td>
                                        </c:if>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </section>

            </div>
            <!--  /.ACA Contenido dinamico de la aplicacion -->      

            <%@ include file="../template/footer.jsp" %>
        </div>
        <!-- ./wrapper -->

        <!--Esto para realizar el envio post mediante href a cada ejercicio-->
        <form action="evalst.htm" method=post name="callevaldet">
            <input type="hidden" name="action" value="1">
            <input type="hidden" name="userid" value="${requestScope.userid}">
        </form>
        
        <!--Esto para realizar el envio post mediante href a cada ejercicio-->
        <form action="evalst.htm" method=post name="calledit">
            <input type="hidden" name="action" value="2">
            <input type="hidden" name="userid" value="${requestScope.userid}">
            <input type="hidden" name="legajo" id="editleg">
        </form>
            
         <!--Esto para realizar el envio post mediante href a cada ejercicio-->
        <form action="evalst.htm" method=post name="calldelete">
            <input type="hidden" name="action" value="3">
            <input type="hidden" name="userid" value="${requestScope.userid}">
            <input type="hidden" name="legajo" id="delleg">
        </form>
            
        <!--Esto para realizar el envio post mediante href a cada ejercicio-->
        <form action="evalst.htm" method=post name="callpay">
            <input type="hidden" name="action" value="4">
            <input type="hidden" name="userid" value="${requestScope.userid}">
            <input type="hidden" name="legajo" id="payleg">
        </form>
            
        <!--Esto para realizar el envio post mediante href a cada ejercicio-->
        <form action="evalst.htm" method=post name="callprint">
            <input type="hidden" name="action" value="5">
            <input type="hidden" name="userid" value="${requestScope.userid}">
            <input type="hidden" name="legajo" id="printleg">
        </form>

        <script type="text/javascript">
            function call_evaldet() {
                document.callevaldet.submit();
            }
            $(".editaction").click(function () {
                var $row = $(this).closest("tr");    // Find the row
                var $text = $row.find(".nr").text(); // Find the text
                // alert($text);
                $('#editleg').val($text);
                document.calledit.submit();
            });
            $(".deleteaction").click(function () {
                var $row = $(this).closest("tr");    // Find the row
                var $text = $row.find(".nr").text(); // Find the text
                // alert($text);
                $('#delleg').val($text);
                document.calldelete.submit();
            });
            $(".payaction").click(function () {
                var $row = $(this).closest("tr");    // Find the row
                var $text = $row.find(".nr").text(); // Find the text
                // alert($text);
                $('#payleg').val($text);
                document.callpay.submit();
            });
            $(".printaction").click(function () {
                var $row = $(this).closest("tr");    // Find the row
                var $text = $row.find(".nr").text(); // Find the text
                // alert($text);
                $('#printleg').val($text);
                document.callprint.submit();
            });
        </script>

    </body>
</html>

