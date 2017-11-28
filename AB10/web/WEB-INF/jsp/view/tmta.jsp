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
                        <small>TMT A</small>
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
                                    <p>Consta de dos partes :</p>
                                    <p><strong>Parte A:</strong> Consiste en una hoja en la cual se encuentran distribuidos al azar los números del 1 a 25. El sujeto debe unir los números con una línea recta en orden consecutiva creciente lo más rápido posible.</p>
                                    <p><strong>Parte B:</strong> Guarda cierta semejanza formal con la forma A, pero con una diferencia en la demanda cognitiva.</p>
                                    <p>Hay números (del 1 al 13) y letras (de A a L), distribuidos al azar.</p>
                                    <p>El sujeto debe unir los estímulos alternando números y letras, respetando el orden numérico ascendente y alfabético.</p>

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
                                <div class="panel-body">Para medir la prueba se realiza mediante el tomado del tiempo en segundos en cada una de las partes</div>
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
                                    <p>Cronometrar el tiempo, luego de finalizar la consigna.</p>
                                    <p>Consignar errores. Interrumpir al sujeto y corregirlo.</p>
                                    <p><strong>NO</strong> debe detenerse e cronometro durante la corrección.</p>
                                    <p>Registrar el tiempo empleado en segundos.</p>
                                    <p>Las normas habituales sólo consideran el tiempo empleado.</p>
                                    <p>Tener en cuenta el tipo de errores cometidos.</p>
                                    <p><strong>Parte A:</strong></p>
                                    <p> - Omisión de números</p>
                                    <p><strong>Parte B:</strong></p>
                                    <p><strong> - Perseverativo:</strong> El sujeto no logara alternar entre un número y unaletra.</p>
                                    <p><strong> - No perseverativo:</strong> Mantiene la alternancia , equivoca el orden (Ej:1-A-2-B-4-D)</p>
                                    <p></p>

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
                                    <p>Hacer el HTML imprimible con los dibujos AB10/web/WEB-INF/jsp/view/helpdoc/tmtahelpdoc.html</p>                                    
                                    <p>En esta pag estan los pdf https://sv.wikipedia.org/wiki/Trail_making_test</p>
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
                                <form action="tmta.htm" method="post">
                                    <input type="hidden" name="action" value="1">

                                    <!--Ensayo A-->
                                    <br/>
                                    <div class=" panel panel-info">
                                        <div class="panel-heading">Ensayo A</div>
                                        <div class="panel-body">
                                            <table class="table table-bordered" >
                                                <tbody>
                                                <p><strong>Ensayo A:</strong> Consiste en una hoja en la cual se encuentran distribuidos al azar los números del 1 a 8. El sujeto debe unir los números con una línea recta en orden consecutiva creciente lo más rápido posible.</p>
                                                <tr>
                                                    <td align="center" bgcolor="#EFECEC">Imagen</td>
                                                    <td align="center" bgcolor="#EFECEC">Tiempo</td>
                                                </tr>
                                                <tr>
                                                    <td align="left" valing="middle">
                                                        <img src="<c:url value="/resource/image/helpdoc/tmta1.jpg" />" class="img-responsive" alt="tmta1"> 
                                                    </td>
                                                    <td>                                                                  
                                                        <div class="form-check-inline pull-right">
                                                            <button type="button" id="cro1b1" class="btn btn-warning btn-sm">Reset</button> 
                                                            <label id="cro1">000</label>
                                                            <button type="button" id="cro1b2" class="btn btn-warning btn-sm">Start</button>                                                        
                                                        </div>
                                                    </td>
                                                </tr>     

                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>                                    
                                    </div>
                                    <!--Prueba A-->
                                    <br/>
                                    <div class=" panel panel-info">
                                        <div class="panel-heading">Prueba A</div>
                                        <div class="panel-body">
                                            <table class="table table-bordered" >
                                                <tbody>
                                                <p><strong>Prueba A:</strong> Consiste en una hoja en la cual se encuentran distribuidos al azar los números del 1 a 25. El sujeto debe unir los números con una línea recta en orden consecutiva creciente lo más rápido posible.</p>
                                                <tr>
                                                    <td align="center" bgcolor="#EFECEC">Imagen</td>
                                                    <td align="center" bgcolor="#EFECEC">Tiempo</td>
                                                </tr>
                                                <tr>
                                                    <td align="left" valing="middle">
                                                        <img src="<c:url value="/resource/image/helpdoc/tmta2.jpg" />" class="img-responsive" alt="tmta1"> 
                                                    </td>
                                                    <td>                                                                  
                                                        <div class="form-check-inline pull-right">
                                                            <button type="button" id="cro2b1" class="btn btn-warning btn-sm">Reset</button> 
                                                            <label id="cro2">000</label>
                                                            <button type="button" id="cro2b2" class="btn btn-warning btn-sm">Start</button>                                                        
                                                        </div>
                                                    </td>
                                                </tr>     

                                                </tr>
                                                </tbody>
                                            </table>
                                        </div> 
                                    </div>    

                                    <!-- Calcula la puntuacion de ser necesario-->
                                    <div class="panel-body">                                             
                                        <!--                                    <button type="button" class="btn btn-primary">Calcular Puntuación</button> -->
                                        <button type="submit" class="btn btn-primary">Calcular Puntuación</button> 
                                    </div>
                                </form> 
                            </div>                   
                        </div>

                        <!--Detalle del resultado-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Detalle de la puntuacion</a>
                                </h4>
                            </div>
                            <div id="collapse5" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Los siguentes son los valores utilizados para realizar el calculo con los baremos.</p>
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <td>Educacion alcansada (cnt. años)</td>
                                                <td align="right"><input type="number" id="ideal" nane="eal" min="0" max="50" class="form-control" value="0" style="text-align:center; width:100px;"></td>                                                                                    
                                                <td>Prueba A</td>
                                                <td align="right"><input type="number" id="idpruebaa" name="pruebaa" min="0" max="50" class="form-control" value="0" style="text-align:center; width:100px;"></td>                                               
                                            </tr> 
                                            <tr>
                                                <td>Ensayo A</td>
                                                <td align="right"><input type="number" id="idensayoa" name="ensayoa" min="0" max="50" class="form-control" value="0" style="text-align:center; width:100px;"></td>                                                                                   
                                                <td></td>
                                                <td></td>
                                            </tr> 
                                        </tbody>
                                    </table>
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

                        <form action="tmta.htm" method=post name="callSave">
                            <input type="hidden" name="action" value="1">
                            <input type="hidden" name="userid" value="${requestScope.userid}">

                            <input type="hidden" name="legajo" id="idlegajo">                                        
                            <input type="hidden" name="ealc" id="idealc">
                            <input type="hidden" name="ensa" id="idensa">
                            <input type="hidden" name="prua" id="idprua">
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
                    /*
                     alert($('#ideal').val());
                     $("input[name='ocu']").each(function () {
                     if (this.checked) {
                     alert(this.value);
                     }
                     });
                     alert($('#idensayob').val());
                     alert($('#idpruebab').val());
                     */

                    // Cargo el form 
                    $("#idlegajo").val($("#sellegajo").val());
                    $("#idealc").val($("#ideal").val());
                    $("#idensa").val($("#idensayoa").val());
                    $("#idprua").val($("#idpruebaa").val());

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