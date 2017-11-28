<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
                        <small>TFV</small>
                    </h1>
                    <ol class="breadcrumb">                        
                        <li class="active">Principal</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">                    

                    <div class="panel-group" id="accordion">

                        <!--Panel de Legajo-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse0">Legajo</a>
                                </h4>
                            </div>
                            <div id="collapse0" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>Favor de seleccionar la evaluacion a la que le desee realizar el test</p>
                                    <div class="form-group">
                                        <select class="form-control" id="sellegajo">
                                            <option>Seleccione un legajo . . .</option>
                                            <c:forEach items="${evalList}" var="current">
                                                <option>${current.legajo} - <fmt:formatDate type = "date"  value = "${current.fecha}" /> - ${current.pacnombre}</option>
                                            </c:forEach>
                                        </select>
                                    </div>                                    
                                </div>
                            </div>
                        </div>

                        <!--Panel de Nota-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Nota</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <!--<p>Consta de dos partes :</p>-->
                                    <!--<p><strong>Parte A:</strong> Consiste en una hoja en la cual se encuentran distribuidos al azar los números del 1 a 25. El sujeto debe unir los números con una línea recta en orden consecutiva creciente lo más rápido posible.</p>-->                                    
                                </div>
                            </div>
                        </div>

                        <!--Panel de Tiempo limite-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                        Tiempo Límite</a>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <!--<p>Para medir la prueba se realiza mediante el tomado del tiempo en segundos en cada una de las partes</p>-->
                                </div>
                            </div>
                        </div>
                        <!--Panel de Puntuacion-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                                        Puntuación</a>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <!--<p>Cronometrar el tiempo, luego de finalizar la consigna.</p>-->                                    
                                    <!--<p><strong>NO</strong> debe detenerse e cronometro durante la corrección.</p>-->                                    
                                </div>
                            </div>
                        </div>
                        <!--Panel de Material de apoyo-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
                                        Material de apoyo</a>
                                </h4>
                            </div>
                            <div id="collapse6" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <!--<p>Hacer el HTML imprimible con los dibujos AB10/web/WEB-INF/jsp/view/helpdoc/tmtahelpdoc.html</p>-->                                    
                                    <!--<p>En esta pag estan los pdf https://sv.wikipedia.org/wiki/Trail_making_test</p>-->
                                </div>
                            </div>
                        </div>

                        <!--Panel de Ejercicio-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                                        Ejercicio</a>
                                </h4>
                            </div>
                            <div id="collapse4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>A continuacion se detalla las dos etapa de esta evaluacion</p>
                                </div>

                                <!--Consigna fluencia verbal fonológica--> 
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Consigna fluencia verbal fonológica</div>
                                    <div class="panel-body">
                                        <p>"Voy a decirle una letra del abecedario y quisiera que usted generara/dijera la mayor cantidad de palabras que pueda con esa letra, pero que no sean nombres propios de personas o lugares. ¿Está listo? Tiene un minuto y la letra es P"</p>
                                        <p>Registre la cantidad de palabras expresadas en 1 minuto por la persona evaluada, sin contar las perseveraciones</p>
                                        <div class="form-group" >
                                            <div class="form-check-inline pull-right">
                                                <button type="button" id="cro1b1" name="cro1b1" class="btn btn-warning btn-sm">Reset</button> 
                                                <label id="cro1" name="cro1">000</label>
                                                <button type="button" id="cro1b2" class="btn btn-warning btn-sm">Start</button>                                                        
                                            </div>
                                            <br/>
                                            <input type="number" min="0" max="70" class="form-control" placeholder="Totalizador de palablas." id="idcro1tot" name="cro1tot">
                                        </div>
                                    </div>
                                </div>

                                <!--Consigna fluencia verbal semántica--> 
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Consigna fluencia verbal semántica</div>
                                    <div class="panel-body">

                                        <p>"Le voy a pedir que diga en un minuto todos los nombres  de animales que pueda. Pueden empezar por cualquier letra del abecedario"</p>
                                        <p>El participante puede equivocarse y decir sólo nombres de animales que comiencen con la letra P, en ese caso repetir las instrucciones durante los 60 segundos, si es necesario</p>
                                        <p>Registre la cantidad de animales expresado en 1 minuto por la persona evaluada, sin contar las perseveraciones</p>
                                        <div class="form-group" >
                                            <div class="form-check-inline pull-right">
                                                <button type="button" id="cro2b1" name="cro2b1" class="btn btn-warning btn-sm">Reset</button> 
                                                <label id="cro2" name="cro2">000</label>
                                                <button type="button" id="cro2b2" class="btn btn-warning btn-sm">Start</button>                                                        
                                            </div>
                                            <input type="number" min="0" max="70" class="form-control" placeholder="Totalizador de palablas." id="idcro2tot" name="cro2tot">
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <!--Submit del formulario-->
                        <div class="panel-body">      
                            <div class="text-right">
                                <p>Para habilitar el boton debe seleccionar un legajo  </p>
                                <button type="button" class="btn btn-primary disabled" id="idbtnsave">Finalizar</button>                                                               
                            </div>
                        </div>

                        <form action="tfv.htm" method=post name="callSave">
                            <input type="hidden" name="action" value="1">
                            <input type="hidden" name="userid" value="${requestScope.userid}">

                            <input type="hidden" name="legajo" id="idlegajo">                                        
                            <input type="hidden" name="tfvf" id="idtfvf">
                            <input type="hidden" name="tfvs" id="idtfvs">
                        </form>
                    </div>
                </section> 

            </div>
            <!--  /.ACA Contenido dinamico de la aplicacion -->      

            <%@ include file="../template/footer.jsp" %>
        </div>
        <!-- ./wrapper -->

        <script>
            $(document).ready(function () {
                $('#sellegajo').change(function () {
                    // alert($('#sellegajo').val());
                    var leg = $("#sellegajo").val();
                    if (leg !== 'Seleccione un legajo . . .') {
                        $("#idbtnsave").removeClass("disabled");
                    } else {
                        $("#idbtnsave").addClass("disabled");
                    }
                });
            });

            // Boton de grabado
            $('#idbtnsave').click(function () {
                if ($(this).hasClass('disabled')) {
                    return false;
                } else {
                    // Cargo el form 
                    $("#idlegajo").val($("#sellegajo").val());
                    $("#idtfvf").val($("#idcro1tot").val());
                    $("#idtfvs").val($("#idcro2tot").val());

                    // Lo envio
                    document.callSave.submit();
                }
            });

            // Prueba de cron1 
            var ctcro1 = null;
            $('#cro1b2').click(function () {
                if ($('#cro1b2').text() == 'Start') {
                    $('#cro1b2').text('Stop');

                    ctcro1 = setInterval(function () {
                        var t = parseInt($('#cro1').text()) + 1;
                        if (t < 10) {
                            $('#cro1').html("00" + t);
                        } else if (t < 100 && t >= 10) {
                            $('#cro1').html("0" + t);
                            if (t == 999) {
                                $('#cro1').html("000");
                            }
                        }
                    }, 1000);
                } else {
                    $('#cro1b2').text('Start');

                    clearInterval(ctcro1);
                }
            });
            $('#cro1b1').click(function () {
                $('#cro1').html("000");
            });

            // Prueba de cro2 
            var ctcro2 = null;
            $('#cro2b2').click(function () {
                if ($('#cro2b2').text() == 'Start') {
                    $('#cro2b2').text('Stop');

                    ctcro2 = setInterval(function () {
                        var t = parseInt($('#cro2').text()) + 1;
                        if (t < 10) {
                            $('#cro2').html("00" + t);
                        } else if (t < 100 && t >= 10) {
                            $('#cro2').html("0" + t);
                            if (t == 999) {
                                $('#cro2').html("000");
                            }
                        }
                    }, 1000);
                } else {
                    $('#cro2b2').text('Start');

                    clearInterval(ctcro2);
                }
            });
            $('#cro2b1').click(function () {
                $('#cro2').html("000");
            });
        </script>

    </body>
</html>