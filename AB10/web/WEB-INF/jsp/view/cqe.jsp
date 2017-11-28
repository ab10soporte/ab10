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
                        <small>CQE</small>
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

                                <!--Cuestionario quejas ejecutivas--> 
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Cuestionario quejas ejecutivas</div>
                                    <div class="panel-body">
                                        <p>
                                            Por favor, lea cada uno de los siguientes comportamientos de la vida diaria relativos al funcionamiento mental en general. Seleccione en qué medida le ocurren actualmente, estableciendo diferencias por muy pequeñas que sean, considerando todas las opciones según la escala.
                                        </p>
                                        <br/>
                                        <div class="text-center">
                                            <p>
                                                <b>
                                                    0 = Nunca,   1 = Casi nunca,   2 = Algunas veces,   3 = Con frecuencia,   4 = Siempre
                                                </b>
                                            </p>
                                        </div>  
                                        <br/>
                                        <div class="table-responsive table-bordered">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Pregunta</th>
                                                        <th>Puntuacion</th>                                            
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>                                            
                                                        <td><p>¿Se distrae con facilidad en situaciones cotidianas?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri1" id="ri11" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri1" id="ri12" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri1" id="ri13" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri1" id="ri14" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri1" id="ri15" value="option3"> 4
                                                            </label>                                         
                                                        </td>   
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Necesita un esfuerzo para ponerse en marcha?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri2" id="ri21" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri2" id="ri22" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri2" id="ri23" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri2" id="ri24" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri2" id="ri25" value="option3"> 4
                                                            </label>                                               
                                                        </td> 
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Encuentra dificultad en adaptarse a lo nuevo?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri3" id="ri31" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri3" id="ri32" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri3" id="ri33" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri3" id="ri34" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri3" id="ri35" value="option3"> 4
                                                            </label>                                                        
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Parece apático o que todo le da lo mismo?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri4" id="ri41" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri4" id="ri42" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri4" id="ri43" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri4" id="ri44" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri4" id="ri45" value="option3"> 4
                                                            </label>
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Encuentra dificultad para controlarse cuando lo necesita?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri5" id="ri51" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri5" id="ri52" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri5" id="ri53" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri5" id="ri54" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri5" id="ri55" value="option3"> 4
                                                            </label>
                                                        </td>  
                                                    </tr>




                                                    <tr>
                                                        <td><p>¿Desconfía de su memoria reciente?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri6" id="ri61" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri6" id="ri62" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri6" id="ri63" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri6" id="ri64" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri6" id="ri65" value="option3"> 4
                                                            </label>                                                       
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Dice que hará cosas que nunca inicia o hace?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri7" id="ri71" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri7" id="ri72" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri7" id="ri73" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri7" id="ri74" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri7" id="ri75" value="option3"> 4
                                                            </label>                                                       
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Le cuesta mantener la atención por mucho tiempo?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri8" id="ri81" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri8" id="ri82" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri8" id="ri83" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri8" id="ri84" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri8" id="ri85" value="option3"> 4
                                                            </label>                                               
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Le cuesta interesarse por cosas nuevas?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri9" id="ri91" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri9" id="ri92" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri9" id="ri93" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri9" id="ri94" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri9" id="ri95" value="option3"> 4
                                                            </label>                                                      
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Su humor puede cambiar en forma abrupta y notable?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri10" id="ri101" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri10" id="ri102" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri10" id="ri103" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri10" id="ri104" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri10" id="ri105" value="option3"> 4
                                                            </label>                                                   
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Resulta trabajoso recordar mensajes luego de unos minutos?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri11" id="ri111" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri11" id="ri112" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri11" id="ri113" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri11" id="ri114" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri11" id="ri115" value="option3"> 4
                                                            </label>                                                
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Necesita que lo empujen para que inicie alguna actividad? </p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri12" id="ri121" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri12" id="ri122" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri12" id="ri123" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri12" id="ri124" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri12" id="ri125" value="option3"> 4
                                                            </label>  
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Le resulta difícil o molesto salirse de la rutina diaria?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri13" id="ri131" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri13" id="ri132" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri13" id="ri133" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri13" id="ri134" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri13" id="ri135" value="option3"> 4
                                                            </label>                              
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>¿Tiene problemas para tomar decisiones o decidir qué hacer?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri14" id="ri141" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri14" id="ri142" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri14" id="ri143" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri14" id="ri144" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri14" id="ri145" value="option3"> 4
                                                            </label>                                                    
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td><p>Le cuesta inhibir interferencias o impulsos en vida cotidiana?</p></td>
                                                        <td>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri15" id="ri151" value="option1"> 0
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri15" id="ri152" value="option2"> 1
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri15" id="ri153" value="option3"> 2
                                                            </label>      
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri15" id="ri154" value="option3"> 3
                                                            </label> 
                                                            <label class="radio-inline">
                                                                <input type="radio" name="ri15" id="ri155" value="option3"> 4
                                                            </label>                                                   
                                                        </td>  
                                                    </tr>                                           
                                                </tbody>                                    
                                            </table>
                                        </div>  
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