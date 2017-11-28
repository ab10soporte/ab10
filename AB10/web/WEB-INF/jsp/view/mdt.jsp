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
                        <small>MDT</small>
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
                                    <p>A continuacion se detalla las dos etapa de esta evaluacion</p>
                                </div>

                                <!--Series en orden directo--> 
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Series en orden directo</div>
                                    <div class="panel-body">
                                        <table class="table table-bordered" >
                                            <tbody>
                                            <p>"Le pido que repita exactamente lo que yo haga. Toque los bloques en el mismo orden que yo"</p>     
                                            <p>Interrupción: Se suspende la tarea si el sujeto falla en dos secuencias de igual longitud, es decir, en ambos intentos de una misma serie</p> 
                                            <tr>
                                                <td>
                                                    <p><strong>Tabla de secuencia </strong></p>
                                                    <table class="table table-bordered" >
                                                        <tbody>                                                        
                                                            <tr>
                                                                <td>3-10</td>
                                                                <td>7-4</td>
                                                            </tr>
                                                            <tr>
                                                                <td>1-9-3 </td>
                                                                <td>8-2-7</td>
                                                            </tr>
                                                            <tr>
                                                                <td>4-9-1-6</td>
                                                                <td>10-6-2-7</td>
                                                            </tr>
                                                            <tr>
                                                                <td>6-5-1-4-8</td>
                                                                <td>5-7-9-8-2</td>
                                                            </tr>
                                                            <tr>
                                                                <td>4-1-9-3-8-10</td>
                                                                <td>9-2-6-7-3-5</td>
                                                            </tr>
                                                            <tr>
                                                                <td>10-1-6-4-8-5-7</td>
                                                                <td>2-6-3-8-2-10-1</td>
                                                            </tr>
                                                            <tr>
                                                                <td>7-3-10-5-7-8-4-9</td>
                                                                <td>6-9-3-2-1-7-10-5</td>
                                                            </tr>
                                                            <tr>
                                                                <td>5-8-4-10-7-3-1-9-6</td>
                                                                <td>8-2-6-1-10-3-7-4-9</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>                                                
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-check-inline pull-right">
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id0" value="option0"> 0
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id1" value="option1"> 1
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id2" value="option2"> 2
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id3" value="option3"> 3
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id4" value="option4"> 4
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id5" value="option5"> 5
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id6" value="option6"> 6
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id6" value="option7"> 7
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id6" value="option8"> 8
                                                        </label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <label for="ate4">Observacion</label>
                                                        <textarea class="form-control" id="ate4a" rows="2"></textarea>
                                                    </div>
                                                </td>                                                
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!--Series en Orden Inverso--> 
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Series en Orden Inverso</div>
                                    <div class="panel-body">
                                        <table class="table table-bordered" >
                                            <tbody>
                                            <p>"Ahora yo voy tocar los bloques y quiero que usted  haga lo mismo pero de manera inversa"</p>
                                            <p>Se debe realizar un ejemplo para verificar que la persona haya comprendido la consigna</p>
                                            <p>Interrupción: Se suspende la tarea si el sujeto falla en dos secuencias de igual longitud, es decir, en ambos intentos de un mismo ítem</p>
                                            <tr>
                                                <td>
                                                    <p><strong>Tabla de secuencia </strong></p>
                                                    <table class="table table-bordered" >
                                                        <tbody>                                                        
                                                            <tr>
                                                                <td>7-4</td>
                                                                <td>3-10</td>
                                                            </tr>
                                                            <tr>
                                                                <td>8-2-7</td>
                                                                <td>1-9-3</td>
                                                            </tr>
                                                            <tr>
                                                                <td>10-6-2-7</td>
                                                                <td>4-9-1-6</td>
                                                            </tr>
                                                            <tr>
                                                                
                                                                <td>5-7-9-8-2</td>
                                                                <td>6-5-1-4-8</td>
                                                            </tr>
                                                            <tr>
                                                                <td>4-1-9-3-8-10</td>
                                                                <td>9-2-6-7-3-5</td>
                                                            </tr>
                                                            <tr>
                                                                
                                                                <td>2-6-3-8-2-10-1</td>
                                                                <td>10-1-6-4-8-5-7</td>
                                                            </tr>
                                                            <tr>
                                                                
                                                                <td>6-9-3-2-1-7-10-5</td>
                                                                <td>7-3-10-5-7-8-4-9</td>
                                                            </tr>
                                                            <tr>
                                                                
                                                                <td>8-2-6-1-10-3-7-4-9</td>
                                                                <td>5-8-4-10-7-3-1-9-6</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>                                                
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-check-inline pull-right">
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id0" value="option0"> 0
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id1" value="option1"> 1
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id2" value="option2"> 2
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id3" value="option3"> 3
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id4" value="option4"> 4
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id5" value="option5"> 5
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id6" value="option6"> 6
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id6" value="option7"> 7
                                                        </label>
                                                        &nbsp;
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="radio" name="ate5" id="ate5id6" value="option8"> 8
                                                        </label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <label for="ate5">Observacion</label>
                                                        <textarea class="form-control" id="ate5a" rows="2"></textarea>
                                                    </div>
                                                </td>                                                
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
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