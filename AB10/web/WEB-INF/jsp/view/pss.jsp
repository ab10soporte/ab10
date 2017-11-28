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
                        <small>PSS</small>
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
                                    <p>La misma se va acumulando de acuerdo a lo tildado en cada opcion y se muestra sumarisado al final del ejercicio</p>                                    

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
                                        <p><strong>Enunciado:</strong> Seleccionar con que frecuencia usted se ha encontrado en la situacion expusta por el enunciado teniendo en cuenta el <strong>mes pasado</strong>  </p>
                                        <tr>                                            
                                            <td align="center" bgcolor="#EFECEC">Enunciado</td> 
                                            <td align="center" bgcolor="#EFECEC" style="height:20px">Frecuencia</td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, usted ha estado mas preocupado que a menudo debido a algo inesperado que sucedio?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e1" id="e1id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e1" id="e1id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e1" id="e1id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e1" id="e1id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e1" id="e1id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e1pn" id="e1p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>     
                                        <tr>                            
                                            <td>En el mes pasado, cuan frecuente usted se ha sentido que no podia controlar las cosas importantes en su vida?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e2" id="e2id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e2" id="e2id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e2" id="e2id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e2" id="e2id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e2" id="e2id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e2pn" id="e2p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, usted se ha sentido nervioso y estresado?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e3" id="e3id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e3" id="e3id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e3" id="e3id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e3" id="e3id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e3" id="e3id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e3pn" id="e3p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, usted se a sentido confiado sobre su capacidad para manejar sus problemas personales?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e4" id="e4id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e4" id="e4id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e4" id="e4id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e4" id="e4id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e4" id="e4id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e4pn" id="e4p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, con que frcuencia usted ha sentido que iban las cosas a su manera?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e5" id="e5id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e5" id="e5id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e5" id="e5id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e5" id="e5id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e5" id="e5id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e5pn" id="e5p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, ha encontrado como a menudo que no podia hacer frente a todas las cosas que tuvo que hacer antes ?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e6" id="e6id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e6" id="e6id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e6" id="e6id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e6" id="e6id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e6" id="e6id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e6pn" id="e6p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, con que frecuencia usted a podido controlar irritaciones en su vida?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e7" id="e7id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e7" id="e7id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e7" id="e7id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e7" id="e7id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e7" id="e7id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e7pn" id="e7p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, con que frecuencia usted se ha sentido que estaba encima de todo?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e8" id="e8id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e8" id="e8id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e8" id="e8id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e8" id="e8id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e8" id="e8id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e8pn" id="e8p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, se ha enojado debido a cosas que estaban fuera de control?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e9" id="e9id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e9" id="e9id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e9" id="e9id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e9" id="e9id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e9" id="e9id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e9pn" id="e9p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        <tr>                            
                                            <td>En el mes pasado, con que frecuencia usted ha sentido que las dificultades eran tan grandes que no podia superarlas?</td>  
                                            <td align="center">                                              
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e10" id="e10id0" value="0" checked=""> Nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e10" id="e10id1" value="1"> Casi nunca
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e10" id="e10id2" value="2"> A veces
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e10" id="e10id3" value="3"> Casi a menudo
                                                    </label>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="e10" id="e10id4" value="4"> Muy amenudo
                                                    </label>                                                    
                                                    <input type="hidden" name="e10pn" id="e10p" value="0">
                                                </div>                                                                            
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Calcula la puntuacion de ser necesario-->
                                <div class="panel-body">                                             
                                    <!--<button type="button" class="btn btn-primary">Calcular Puntuación</button>-->  
                                    <div class="form-inline text-right">
                                        <label>Punt. total</label>
                                        <!--<input class="form-control disabled" id="total" type="text" placeholder="" value="0" >-->
                                        <label id="total">0000</label>
                                    </div>   
                                </div>
                            </div>
                        </div>


                        <!--Submit del formulario-->
                        <div class="panel-body">      
                            <div class="text-right">
                                <a href="home.htm" class="btn btn-primary" >Finalizar</a>   
                                <button id="btn1">Set Text</button>
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
//            $(document).ready(function () {
            // Enunciado e1
            $('#e1id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e1p").val($(this).val());
                }
            });
            $('#e1id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e1p').val($(this).val());
                }
            });
            $('#e1id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e1p').val($(this).val());
                }
            });
            $('#e1id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e1p').val($(this).val());
                }
            });
            $('#e1id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e1p').val($(this).val());
                }
            });

            // Enunciado e2
            $('#e2id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e2p").val($(this).val());
                }
            });
            $('#e2id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e2p').val($(this).val());
                }
            });
            $('#e2id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e2p').val($(this).val());
                }
            });
            $('#e2id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e2p').val($(this).val());
                }
            });
            $('#e2id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e2p').val($(this).val());
                }
            });

            // Enunciado e3
            $('#e3id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e3p").val($(this).val());
                }
            });
            $('#e3id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e3p').val($(this).val());
                }
            });
            $('#e3id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e3p').val($(this).val());
                }
            });
            $('#e3id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e3p').val($(this).val());
                }
            });
            $('#e3id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e3p').val($(this).val());
                }
            });

            // Enunciado e4
            $('#e4id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e4p").val($(this).val());
                }
            });
            $('#e4id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e4p').val($(this).val());
                }
            });
            $('#e4id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e4p').val($(this).val());
                }
            });
            $('#e4id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e4p').val($(this).val());
                }
            });
            $('#e4id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e4p').val($(this).val());
                }
            });

            // Enunciado e5
            $('#e5id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e5p").val($(this).val());
                }
            });
            $('#e5id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e5p').val($(this).val());
                }
            });
            $('#e5id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e5p').val($(this).val());
                }
            });
            $('#e5id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e5p').val($(this).val());
                }
            });
            $('#e5id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e5p').val($(this).val());
                }
            });

            // Enunciado e6
            $('#e6id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e6p").val($(this).val());
                }
            });
            $('#e6id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e6p').val($(this).val());
                }
            });
            $('#e6id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e6p').val($(this).val());
                }
            });
            $('#e6id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e6p').val($(this).val());
                }
            });
            $('#e6id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e6p').val($(this).val());
                }
            });

            // Enunciado e7
            $('#e7id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e7p").val($(this).val());
                }
            });
            $('#e7id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e7p').val($(this).val());
                }
            });
            $('#e7id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e7p').val($(this).val());
                }
            });
            $('#e7id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e7p').val($(this).val());
                }
            });
            $('#e7id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e7p').val($(this).val());
                }
            });

            // Enunciado e8
            $('#e8id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e8p").val($(this).val());
                }
            });
            $('#e8id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e8p').val($(this).val());
                }
            });
            $('#e8id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e8p').val($(this).val());
                }
            });
            $('#e8id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e8p').val($(this).val());
                }
            });
            $('#e8id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e8p').val($(this).val());
                }
            });

            // Enunciado e9
            $('#e9id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e9p").val($(this).val());
                }
            });
            $('#e9id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e9p').val($(this).val());
                }
            });
            $('#e9id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e9p').val($(this).val());
                }
            });
            $('#e9id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e9p').val($(this).val());
                }
            });
            $('#e9id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e9p').val($(this).val());
                }
            });

            // Enunciado e10
            $('#e10id0').change(function () {
                if ($(this).is(':checked')) {
                    $("#e10p").val($(this).val());
                }
            });
            $('#e10id1').change(function () {
                if ($(this).is(':checked')) {

                    $('#e10p').val($(this).val());
                }
            });
            $('#e10id2').change(function () {
                if ($(this).is(':checked')) {

                    $('#e10p').val($(this).val());
                }
            });
            $('#e10id3').change(function () {
                if ($(this).is(':checked')) {

                    $('#e10p').val($(this).val());
                }
            });
            $('#e10id4').change(function () {
                if ($(this).is(':checked')) {

                    $('#e10p').val($(this).val());
                }
            });
















//            });

            //Testing
            $("#btn1").click(function () {
                alert($("#e1p").val());
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