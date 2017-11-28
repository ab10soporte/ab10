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
                        <small>FCR-II</small>
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
                                <div class="panel-body">
                                    <p>Presentele a la persona evaluada el modelo en su posición normal (triángulo isósceles que prolonga el rectángulo a la derecha, con el pequeño rombo hacía abajo), pidiéndole que lo copie, según la siguiente consigna</p>
                                    <p>Reproduzca la figura que Usted ve aquí (señale la figura) lo mejor que pueda, teniendo en cuenta de no olvidar ningún detalle. Yo le voy a tomar el tiempo</p>
                                    <p>Brindele al sujeto evaluado una hoja y un lápiz y registre: 1) El tiempo que utiliza para completar el dibujo y 2) el orden en que se reproducen los componentes de la copia. Para el registro del orden puede utilizar diferentes colores</p>
                                    <p>Una vez terminada la copia se le retira a la persona evaluada la hoja en que ha dibujado y el modelo</p>
                                </div>
                                
                                <!--Figura--> 
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Detalle</div>
                                    <div class="panel-body">
                                        <table class="table table-bordered" >
                                            <tbody>
                                            <p><strong>Escala 1:</strong> Favor de tomar el tiempo que le lleva al evaluado completar la imagen</p>
                                            <tr>
                                                <td align="center" bgcolor="#EFECEC">Imagen</td>
                                                <td align="center" bgcolor="#EFECEC">Tiempo</td>
                                            </tr>
                                            <tr>
                                                <td align="left" valing="middle">
                                                    <img src="<c:url value="/resource/image/helpdoc/fcr1.jpg" />" class="img-responsive" alt="fcr1"> 
                                                </td>
                                                <td>                                                                  
                                                    <div class="form-check-inline pull-right">
                                                        <button type="button" id="cro1b1" name="cro1b1" class="btn btn-warning btn-sm">Reset</button> 
                                                        <label id="cro1" name="cro1">000</label>
                                                        <button type="button" id="cro1b2" class="btn btn-warning btn-sm">Start</button>                                                        
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <label for="ori1">Observacion</label>
                                                        <textarea class="form-control" id="cro1ob" rows="2"></textarea>
                                                    </div>
                                                </td>
                                            </tr>     

                                            </tr>
                                            </tbody>
                                        </table>

                                        <table class="table table-bordered" >
                                            <p><strong>Escala 2:</strong> Por favor, registre la puntuación de cada uno de los ítems de la copia, en la siguiente grilla 1.</p>
                                            <tbody>
                                                <tr class="row0">
                                                    <td class="column0 style1 s"><strong>Grilla 1</strong></td>
                                                    <td class="column1 style7 s style8" colspan="5"><strong>Puntuación por cada Unidad</strong></td>
                                                </tr>
                                                <tr class="row1">
                                                    <td class="column0 style10 s style11" rowspan="4">Numero de Unidad</td>
                                                    <td class="column1 style7 s style8" colspan="2">Correcta</td>
                                                    <td class="column3 style7 s style8" colspan="2">Deformada o incompleta pero reconocible</td>
                                                    <td class="column5 style2 s">Irreconocible o ausente</td>
                                                </tr>
                                                <tr class="row2">
                                                    <td class="column1 style3 s">Bien situada</td>
                                                    <td class="column2 style3 s">Mal situada</td>
                                                    <td class="column3 style3 s">Bien situada</td>
                                                    <td class="column4 style3 s">Mal situada</td>
                                                    <td class="column5 style3 s">Irreconocible o ausente</td>
                                                </tr>
                                                <tr class="row3">
                                                    <td class="column2 style3 s">(2 puntos)</td>
                                                    <td class="column2 style3 s">(1 punto)</td>
                                                    <td class="column3 style3 s">(1 punto)</td>
                                                    <td class="column4 style3 s">(½ punto)</td>
                                                    <td class="column5 style3 s">(O puntos)</td>
                                                </tr>
                                                <tr class="row4"></tr>
                                                <tr class="row5">
                                                    <td class="column0 style5 n">1</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r1n" id="r1op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r1n" id="r1op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r1n" id="r1op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r1n" id="r1op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r1n" id="r1op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row6">
                                                    <td class="column0 style5 n">2</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r2n" id="r2op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r2n" id="r2op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r2n" id="r2op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r2n" id="r2op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r2n" id="r2op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row7">
                                                    <td class="column0 style5 n">3</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r3n" id="r3op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r3n" id="r3op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r3n" id="r3op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r3n" id="r3op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r3n" id="r3op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row8">
                                                    <td class="column0 style5 n">4</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r4n" id="r4op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r4n" id="r4op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r4n" id="r4op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r4n" id="r4op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r4n" id="r4op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row9">
                                                    <td class="column0 style5 n">5</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r5n" id="r5op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r5n" id="r5op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r5n" id="r5op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r5n" id="r5op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r5n" id="r5op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row10">
                                                    <td class="column0 style5 n">6</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r6n" id="r6op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r6n" id="r6op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r6n" id="r6op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r6n" id="r6op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r6n" id="r6op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row11">
                                                    <td class="column0 style5 n">7</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r7n" id="r7op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r7n" id="r7op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r7n" id="r7op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r7n" id="r7op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r7n" id="r7op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row12">
                                                    <td class="column0 style5 n">8</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r8n" id="r8op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r8n" id="r8op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r8n" id="r8op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r8n" id="r8op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r8n" id="r8op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row13">
                                                    <td class="column0 style5 n">9</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r9n" id="r9op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r9n" id="r9op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r9n" id="r9op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r9n" id="r9op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r9n" id="r9op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row14">
                                                    <td class="column0 style5 n">10</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r10n" id="r10op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r10n" id="r10op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r10n" id="r10op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r10n" id="r10op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r10n" id="r10op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row15">
                                                    <td class="column0 style5 n">11</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r11n" id="r11op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r11n" id="r11op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r11n" id="r11op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r11n" id="r11op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r11n" id="r11op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row16">
                                                    <td class="column0 style5 n">12</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r12n" id="r12op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r12n" id="r12op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r12n" id="r12op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r12n" id="r12op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r12n" id="r12op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row17">
                                                    <td class="column0 style5 n">13</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r13n" id="r13op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r13n" id="r13op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r13n" id="r13op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r13n" id="r13op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r13n" id="r13op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row18">
                                                    <td class="column0 style5 n">14</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r14n" id="r14op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r14n" id="r14op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r14n" id="r14op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r14n" id="r14op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r14n" id="r14op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row19">
                                                    <td class="column0 style5 n">15</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r15n" id="r15op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r15n" id="r15op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r15n" id="r15op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r15n" id="r15op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r15n" id="r15op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row20">
                                                    <td class="column0 style5 n">16</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r16n" id="r16op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r16n" id="r16op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r16n" id="r16op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r16n" id="r16op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r16n" id="r16op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row21">
                                                    <td class="column0 style5 n">17</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r17n" id="r17op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r17n" id="r17op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r17n" id="r17op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r17n" id="r17op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r17n" id="r17op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row22">
                                                    <td class="column0 style5 n">18</td>
                                                    <td align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r18n" id="r18op1" value="2">
                                                        </div>
                                                    </td>
                                                    <td class="column2 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r18n" id="r18op2" value="1">
                                                        </div>
                                                    </td>
                                                    <td class="column3 style2 null" align="center">
                                                        <div class="radio">
                                                            <div class="radio">
                                                                <input type="radio" name="r18n" id="r18op3" value="1">
                                                            </div>
                                                    </td>
                                                    <td class="column4 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r18n" id="r18op4" value="3"> <!-- Si es 3 equivale a medio punto-->
                                                        </div>
                                                    </td>
                                                    <td class="column5 style2 null" align="center">
                                                        <div class="radio">
                                                            <input type="radio" name="r18n" id="r18op5" value="0" checked>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr class="row23">
                                                    <td class="column0 style13 s style13" colspan="6">Puntuación final:</td>
                                                </tr>
                                                <tr class="row24">
                                                    <td class="column0 style12 s style12" colspan="6">Tiempo utilizado para realizar el dibujo:</td>
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