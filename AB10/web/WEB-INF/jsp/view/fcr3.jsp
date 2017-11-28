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
                        <small>FCR-III</small>
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
                                    
                                    <a href="<c:url value="/resource/docs/INECO-FRONTAL-SCREENING.pdf" />">descargar archivo</a>
                                                
                                    <%@ include file="../template/header.jsp" %> 
                                    <!--<img src="<c:url value="/resource/image/helpdoc/fcr1.jpg" />" class="img-responsive" alt="fcr1">--> 
                                                
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
                                            <tbody>                                                                            
                                                <tr>                                          
                                                    <td><strong>Escala 2:</strong> Por favor indique el tipo de copia que ha realizado la persona.</td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op1" value="0" checked>
                                                                <strong>Tipo I.- Construcción sobre la armadura:</strong> El sujeto comienza su dibujo por el gran rectángulo central que erige en armadura con relación al cual agrupa todos lo otros elementos de la figura
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op2" value="1">
                                                                <strong>Tipo II.- Detalles englobados en la armadura:</strong> El sujeto empieza por uno u otro detalle anexado al gran rectángulo (por ejemplo: la cruz superior izquierda) lo traza el gran rectángulo englobándolo a él uno u otro detalle (por ejemplo, el cuadrado exterior junto al ángulo inferior izquierdo del rectángulo), después acaba la reproducción del rectángulo central, utilizando como armazón de su dibujo, como el Tipo I: se asimila también al Tipo II el proceso raramente encontrado que consiste en dibujar las dos diagonales del rectángulo antes de su contorno
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op3" value="2">
                                                                <strong>Tipo III.- Contorno general:</strong> El sujeto comienza su dibujo por la reproducción del contorno integral de la figura, sin diferenciar explícitamente el rectángulo central. Obtiene así una especie de “continente” en el cual coloca después los detalles interiores
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op4" value="3">
                                                                <strong>Tipo IV.- Yuxtaposición de detalles:</strong> El sujeto yuxtapone los detalles uno sobre los otros, procediendo como si hiciere un puzzle. No hay elemento director de la reproducción. El conjunto, terminado más o menos bien, es globalmente reconocible y aún puede resultar perfecto
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op5" value="4">
                                                                <strong>Tipo V.- Detalles sobre fondo confuso:</strong> El sujeto produce un grafismo poco o nada estructurado, en el cual no se podría reconocer el modelo, pero donde ciertos detalles de éste, son netamente reconocibles, por lo menos en su intención
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op6" value="5">
                                                                <strong>Tipo VI.- Reducción a un esquema familiar:</strong> El sujeto lleva la figura a un esquema que le es familiar y que puede a veces recordar vagamente la forma general del modelo o ciertos elementos (casa, bote, paz, monigote, etc.)
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op6" value="5">
                                                                <strong>Tipo VII.- Garabato:</strong> El sujeto produce un simple garabato en el cual no se pueden reconocer los elementos del modelo ni su forma global
                                                            </label>
                                                        </div>
                                                        <input type="hidden" name="e1pn" id="e1p" value="0">
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