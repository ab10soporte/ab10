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
                        <small>STAIX</small>
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
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Cuestinoario de ansiedad <strong>A</strong></div>
                                    <div class="panel-body">
                                        <table class="table table-bordered" >
                                            <p>Usted va a leer algunas frases que lass personas frecuentemente usan para describirse. Lea cada uno de las frases y marque como usted <strong>ahora en este momento</strong>. No hay respuesta correctas o incorrectas. No emplee demaciado tiempo para responder a las preguntas y de la respuesta que le parezca para describir su estado actual de animo</p>
                                            <tbody>
                                                <tr>                                          
                                                    <td><strong>Me siento calmo</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e1pn" id="e1p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento seguro</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e2pn" id="e2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Estoy tenso</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e3pn" id="e3p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Tengo nostalgia</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e4pn" id="e4p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me seinto tranquilo</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e5pn" id="e5p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me seinto alterado</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e6pn" id="e6p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Estoy preocupado por lo que me pueda pasar</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e7pn" id="e7p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento descansado</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e8pn" id="e8p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento ancioso</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e9pn" id="e9p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento comodo</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e10pn" id="e10p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento seguro de mi</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e11pn" id="e11p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento nervioso</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e12pn" id="e12p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento tenso</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e13pn" id="e13p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento contento</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e14pn" id="e14p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento desequilibrado</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e15pn" id="e15p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento alegre</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16n" id="e16op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16n" id="e16op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16n" id="e16op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16n" id="e16op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e16pn" id="e16p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento bien</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e17pn" id="e17p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Estoy preocupado</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18n" id="e18op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18n" id="e18op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18n" id="e18op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18n" id="e18op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e18pn" id="e18p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Estoy relajado</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e19pn" id="e19p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Estoy angustiado</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op2" value="0" checked>
                                                                Para nada
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op2" value="1">
                                                                Un poco
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op3" value="2">
                                                                Bastatnte
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op4" value="3">
                                                                Mucho
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e20pn" id="e20p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class=" panel panel-info">
                                    <div class="panel-heading">Cuestinoario de ansiedad <strong>B</strong></div>
                                    <div class="panel-body">
                                        <p>Usted va a leer algunas frases que lass personas frecuentemente usasn para describirse. Lea cada uno de las frases y marque como usted <strong>habitualmente se siente</strong>. No emplee demaciado tiempo para responder a las preguntas y de la respuesta que le parezca para describir su estado actual de animo</p>
                                        <table class="table table-bordered" >
                                            <tbody>
                                                <tr>                                          
                                                    <td><strong>Me siento bien</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1s2n" id="e1s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1s2n" id="e1s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1s2n" id="e1s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1s2n" id="e1s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e1s2pn" id="e1s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me Canso facilmente</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2s2n" id="e2s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2s2n" id="e2s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2s2n" id="e2s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2s2n" id="e2s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e2s2pn" id="e2s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento como si tuviera que llorar</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3s2n" id="e3s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3s2n" id="e3s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3s2n" id="e3s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3s2n" id="e3s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e3s2pn" id="e3s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Quisiera ser feliz como parecen los otros</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4s2n" id="e4s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4s2n" id="e4s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4s2n" id="e4s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4s2n" id="e4s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e4s2pn" id="e4s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Frecuentemente pierdo ocasiones porque no consigo decidirme rapidamente</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5s2n" id="e5s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5s2n" id="e5s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5s2n" id="e5s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5s2n" id="e5s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e5s2pn" id="e5s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento relajado</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6s2n" id="e6s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6s2n" id="e6s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6s2n" id="e6s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6s2n" id="e6s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e6s2pn" id="e6s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Soy calmo, tranquilo y dueño de mi</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7s2n" id="e7s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7s2n" id="e7s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7s2n" id="e7s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7s2n" id="e7s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e7s2pn" id="e7s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Siento que las dificultades se me acumulan al punto de no poder superarlas</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8s2n" id="e8s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8s2n" id="e8s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8s2n" id="e8s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8s2n" id="e8s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e8s2pn" id="e8s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me procupo demaciado por las cosas que en realidad no tienen importancia</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9s2n" id="e9s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9s2n" id="e9s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9s2n" id="e9s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9s2n" id="e9s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e9s2pn" id="e9s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Soy feliz</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10s2n" id="e10s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10s2n" id="e10s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10s2n" id="e10s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10s2n" id="e10s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e10s2pn" id="e10s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Tiendo a conciderar dificiles las cosas</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11s2n" id="e11s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11s2n" id="e11s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11s2n" id="e11s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11s2n" id="e11s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e11s2pn" id="e11s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me falta fe en mi mismo</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12s2n" id="e12s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12s2n" id="e12s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12s2n" id="e12s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12s2n" id="e12s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e12s2pn" id="e12s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento seguro</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13s2n" id="e13s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13s2n" id="e13s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13s2n" id="e13s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13s2n" id="e13s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e13s2pn" id="e13s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Busco evitar afrontar crisis o dificultades</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14s2n" id="e14s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14s2n" id="e14s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14s2n" id="e14s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14s2n" id="e14s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e14s2pn" id="e14s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me siento cansado y deprimido</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15s2n" id="e15s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15s2n" id="e15s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15s2n" id="e15s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15s2n" id="e15s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e15s2pn" id="e15s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Estoy contento</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16s2n" id="e16s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16s2n" id="e16s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16s2n" id="e16s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e16s2n" id="e16s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e16s2pn" id="e16s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Pensamientos de poca importancia me pasan por la mente y me preocupan</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17s2n" id="e17s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17s2n" id="e17s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17s2n" id="e17s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17s2n" id="e17s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e17s2pn" id="e17s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Vivo las desiluciones con tanta participacion de no poder sacarmelo de la cabeza</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18s2n" id="e18s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18s2n" id="e18s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18s2n" id="e18s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e18s2n" id="e18s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e18s2pn" id="e18s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Soy una persona con constancia</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19s2n" id="e19s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19s2n" id="e19s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19s2n" id="e19s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19s2n" id="e19s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e19s2pn" id="e19s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Me vuelvo tenso y perturbado cuando pienso en mis actuales preocupaciones</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20s2n" id="e20s2op2" value="0" checked>
                                                                Casi nunca
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20s2n" id="e20s2op2" value="1">
                                                                Algunas veces
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20s2n" id="e20s2op3" value="2">
                                                                Frecuentemente
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20s2n" id="e20s2op4" value="3">
                                                                Casi siempre
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e20s2pn" id="e20s2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!-- Calcula la puntuacion de ser necesario-->
                                <div class="panel-body">                                             
                                    <button type="button" class="btn btn-primary">Calcular Puntuación</button>                                                                      
                                </div>
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
                                    <!--Muestra el resultado-->
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
            /* Algo de JS
             // Prueba de cron1 
             var ctcro1 = null;
             $('#cro1b2').click(function () {
             if ($('#cro1b2').text()=='Start'){
             $('#cro1b2').text('Stop');
             
             ctcro1 = setInterval(function(){
             var t = parseInt($('#cro1').text()) + 1;
             if (t<10){
             $('#cro1').html("00" + t);
             }else if(t<100 && t>=10){
             $('#cro1').html("0" + t);
             if (t==999){
             $('#cro1').html("000");
             }
             }    
             }, 1000);            
             }else{
             $('#cro1b2').text('Start');
             
             clearInterval(ctcro1);
             }
             });
             $('#cro1b1').click(function () {
             $('#cro1').html("000");
             });
             */
        </script>

    </body>
</html>