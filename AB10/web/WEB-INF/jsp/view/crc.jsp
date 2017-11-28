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
                        <small>CRC</small>
                    </h1>
                    <ol class="breadcrumb">                        
                        <li class="active">Principal</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">                    

                    <div class="panel-group" id="accordion">
                        <!--Panel de Nota-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Nota</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>Se debe permitir al paciente que realice este test en presencia del profecional</p>
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
                                    <p>Se recomienda la evaluacion no dure mas de 10 minutos</p>
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
                                    <p>Escoja cual es su nivel de escolaridad realizando un circulo sobre la opcion</p>                                    

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
                                    <table class="table table-bordered" >
                                        <tbody>                                                                            
                                        <tr>                                          
                                            <td>Escolaridad alcanzada</td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e1n" id="e1op1" value="0" checked>
                                                        Sin estudio
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e1n" id="e1op2" value="1">
                                                        Lee y escribe de manera autodidacta
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e1n" id="e1op3" value="2">
                                                        Basica (< 6años)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e1n" id="e1op4" value="3">
                                                        Primaria (>= 6 años)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e1n" id="e1op5" value="4">
                                                        Secundaria (>= 9 años)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e1n" id="e1op6" value="5">
                                                        Superior (diplomatura/licenciatura)
                                                    </label>
                                                </div>
                                                <input type="hidden" name="e1pn" id="e1p" value="0">
                                            </td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>Escolaridad de los padres (Marcar el de mayor escolaridad)</td>
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e2n" id="e2op1" value="0" checked>
                                                        No escolarizados
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e2n" id="e2op2" value="1">
                                                        Basica o primaria
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e2n" id="e2op3" value="2">
                                                        Secundario o superior
                                                    </label>
                                                </div>
                                                 
                                                <input type="hidden" name="e2pn" id="e2p" value="0">
                                            </td> 
                                        </tr>
                                        
                                        <tr>                                          
                                            <td>Cursos de formacion/td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e3n" id="e3op1" value="0" checked>
                                                        Ninguno
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e3n" id="e3op2" value="1">
                                                        Uno o dos
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e3n" id="e3op3" value="2">
                                                        Entre dos y cinco
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e3n" id="e3op4" value="3">
                                                        Mas de cinco
                                                    </label>
                                                </div>
                                                
                                                <input type="hidden" name="e3pn" id="e3p" value="0">
                                            </td>                                                                                                                                   
                                        </tr>
                                        
                                        <tr>                                          
                                            <td>Ocupacion laboral</td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e4n" id="e4op1" value="0" checked>
                                                        No cualificado (incluye 'sus labores')
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e4n" id="e4op2" value="1">
                                                        Cualificado manual
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e4n" id="e4op3" value="2">
                                                        Cualificado no manual (incluye secretariado y tecnico)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e4n" id="e4op4" value="3">
                                                       Profecional (estudios superiore)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e4n" id="e4op5" value="4">
                                                        Directivo
                                                    </label>
                                                </div>
                                                
                                                <input type="hidden" name="e4pn" id="e4p" value="0">
                                            </td>                                                                                                                                   
                                        </tr>
                                        
                                        <tr>                                          
                                            <td>Formacion musical</td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e5n" id="e5op1" value="0" checked>
                                                        No toca ningun instumento ni escucha musica frecuentemente
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e5n" id="e5op2" value="1">
                                                        Toca podo (aficiionado) o escucha musica frecuentemente
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e5n" id="e5op3" value="2">
                                                        Formacion musical reglada
                                                    </label>
                                                </div>
                                                 
                                                <input type="hidden" name="e5pn" id="e5p" value="0">
                                            </td>                                                                                                                                   
                                        </tr>
                                        
                                        <tr>                                          
                                            <td>Idiomas (Mantiene una conversacion)</td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e6n" id="e6op1" value="0" checked>
                                                        Solamente el idioma materno
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e6n" id="e6op2" value="1">
                                                        Dos idiomas (incluye Calatan, Gallego, Euskera, Castellano)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e6n" id="e6op3" value="2">
                                                        Dos/tres idiomas (uno diferente al Calatan, Gallego, Euskera)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e6n" id="e6op4" value="3">
                                                        Mas de dos idiomas
                                                    </label>
                                                </div>
                                                
                                                <input type="hidden" name="e6pn" id="e6p" value="0">
                                            </td>                                                                                                                                   
                                        </tr>
                                        
                                        <tr>                                          
                                            <td>Actividad lectora</td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e7n" id="e7op1" value="0" checked>
                                                        Nunca
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e7n" id="e7op2" value="1">
                                                        Ocacionalmente (incluye diario/un libro al año)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e7n" id="e7op3" value="2">
                                                        Entre 2 y 5 libros en el año
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e7n" id="e7op4" value="3">
                                                        De 5 a 10 libros en el año
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e7n" id="e7op5" value="4">
                                                        Mas de 10 libros al año
                                                    </label>
                                                </div>
                                                 
                                                <input type="hidden" name="e7pn" id="e7p" value="0">
                                            </td>                                                                                                                                   
                                        </tr>
                                        
                                        <tr>                                          
                                            <td>Juegos intelectuales</td>                                                                                                                                   
                                        </tr>
                                        <tr>                                          
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e8n" id="e8op1" value="0" checked>
                                                        Nunca o alguna vez
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e8n" id="e8op2" value="1">
                                                        Ocacionalmente (entre 1 y 5 veces al mes)
                                                    </label>
                                                </div>
                                                 <div class="radio">
                                                    <label>
                                                        <input type="radio" name="e8n" id="e8op3" value="2">
                                                       Frecuentemente (mas de 5 al mes)
                                                    </label>
                                                </div>
                                                 
                                                <input type="hidden" name="e8pn" id="e8p" value="0">
                                            </td>                                                                                                                                   
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- Calcula la puntuacion de ser necesario-->
                                <div class="panel-body">                                             
<!--                                    <button type="button" class="btn btn-primary">Calcular Puntuación</button>  
                                    <div class="form-inline text-right">
                                        <label>Punt. total</label>
                                        <input class="form-control disabled" id="total" type="text" placeholder="" value="0" >
                                        <label id="total">0000</label>
                                    </div>   -->
                                </div>
                            </div>
                        </div>


                        <!--Submit del formulario-->
                        <div class="panel-body">      
                            <div class="text-right">
                                <a href="home.htm" class="btn btn-primary" >Finalizar</a>                                                               
                            </div>
                        </div>

                    </div>
                </section>

            </div>
            <!--  /.ACA Contenido dinamico de la aplicacion -->      

            <%@ include file="../template/footer.jsp" %>
        </div>
        <!-- ./wrapper -->

        <script>
            $('#ck1').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck2').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck3').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck4').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck5').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck6').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck7').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck8').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck9').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck10').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck11').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck12').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck13').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck14').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck15').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck16').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck17').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck18').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck19').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck20').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck21').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck22').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck23').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck24').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck25').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck26').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck27').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck28').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck29').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck30').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck31').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck32').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck33').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck34').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck35').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck36').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck37').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck38').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck39').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck40').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck41').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck42').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck43').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });


            function updateVal(x) {
                var t = parseInt($('#total').text()) + parseInt(x);
                if (t < 10) {
                    $('#total').html("000" + t);
                } else if (t < 100 && t >= 10) {
                    $('#total').html("00" + t);
                } else if (t < 1000 && t >= 100) {
                    $('#total').html("0" + t);
                    if (t >= 9999) {
                        $('#total').html("0000");
                    }
                }
            }

        </script>

    </body>
</html>