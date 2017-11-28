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
                        <small>BDI-II</small>
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
                                                    <td><strong>Tristesa</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op2" value="0" checked>
                                                                No me siento triste
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op2" value="1">
                                                                Me siento triste gran parte del tiempo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op3" value="2">
                                                                Estoy triste todo el tiempo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e1n" id="e1op4" value="3">
                                                                Estoy triste y soy tan infeliz que no puedo soportarlo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e1pn" id="e1p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Pesimismo</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op2" value="0" checked>
                                                                No estoy desalentado respecto a mi futuro
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op2" value="1">
                                                                Me siento mas desalentado respecto a mi futuro que lo que solia estarlo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op3" value="2">
                                                                No espero que las cosas funcionen para mi
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e2n" id="e2op4" value="3">
                                                                Siento que no hay esperansza para mi futuro y que solo puedo empeorar
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e2pn" id="e2p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Fracaso</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op2" value="0" checked>
                                                                No me siento como un fracasado
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op2" value="1">
                                                                He fracasado mas de lo que hubiera debido
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op3" value="2">
                                                                Cuando miro hacia atras veo muchos fracasos
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e3n" id="e3op4" value="3">
                                                                Sienrto que como persona soy un fracasado total
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e3pn" id="e3p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Perdida de placer</strong></td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op2" value="0" checked>
                                                                Obtengo tanto placer como siempre por las cosas de las que disfruto
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op2" value="1">
                                                                No disfruto tanto las cosas como solia hacerlo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op3" value="2">
                                                                Obtengo muy poco placer de las cosas que solia disfrutar
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e4n" id="e4op4" value="3">
                                                                No purdo obtener ningun placer de las cosas que solia disfrutar
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e4pn" id="e4p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Sentimiento de culpa</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op2" value="0" checked>
                                                                No me siento particularmente culpable 
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op2" value="1">
                                                                Me siento culpable respecto de varias cosas que he hecho o que deberia haber hecho
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op3" value="2">
                                                                Me siento bastante culpable la mayor parte del tiempo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e5n" id="e5op4" value="3">
                                                                Me siento culpable todo el tiempo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e5pn" id="e5p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Sentimiento de castigo</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op2" value="0" checked>
                                                                No siento que estoy siendo castigado
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op2" value="1">
                                                                Siento que tal vez pueda ser castigado
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op3" value="2">
                                                                Espero ser castigado
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e6n" id="e6op4" value="3">
                                                                Siento que estoy siendo castigado
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e6pn" id="e6p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Disconformidad con uno mismo</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op2" value="0" checked>
                                                                Siento acerca de mi lo mismo de siempre
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op2" value="1">
                                                                He perdido la confianzs en mi mismo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op3" value="2">
                                                                Estoy decepcionado conmigo mismo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e7n" id="e7op4" value="3">
                                                                No me gusto a mi mismo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e7pn" id="e7p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Autocritica</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op2" value="0" checked>
                                                                No me critico ni me culpo mas de lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op2" value="1">
                                                                Estoy mas critico conmigo mismo de lo que solia estarlo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op3" value="2">
                                                                Me critico a mi mismo por todos mis errores
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e8n" id="e8op4" value="3">
                                                                Me culpo a mi mismo  por todo lo malo que sucede
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e8pn" id="e8p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Pensamientos o deseos suicidas</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op2" value="0" checked>
                                                                No tengo ningun pensamiento de matarme
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op2" value="1">
                                                                He tenido pensamiento de matarme, pero no lo haria
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op3" value="2">
                                                                Querria matarme
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e9n" id="e9op4" value="3">
                                                                Me mataria si tuviera la oportunidad de hacerlo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e9pn" id="e9p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Llanto</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op2" value="0" checked>
                                                                No lloro mas de lo que solia hacerlo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op2" value="1">
                                                                LLorro mas de lo que soia hacerlo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op3" value="2">
                                                                Lloro por cualquie pequeñez
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e10n" id="e10op4" value="3">
                                                                Siento ganas de llorar pero no puedo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e10pn" id="e10p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Agitacion</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op2" value="0" checked>
                                                                No estoy mas inquieto o tenso que lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op2" value="1">
                                                                Me siento mas inquieto o tenso que me es difisil quedarme quieto
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op3" value="2">
                                                                Estoy tan inquieto o tenso que lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e11n" id="e11op4" value="3">
                                                                Estoy tan inquieto o tenso que tengo que estar siempre en movimiento o haciendo algo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e11pn" id="e11p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Perdida de interes</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op2" value="0" checked>
                                                                No he perdido el interes en otras actividades o personas
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op2" value="1">
                                                                Estoy menos interesado que antes en otras personas o cosas
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op3" value="2">
                                                                He perdido casi todo el interes en otrs personas o cosas
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e12n" id="e12op4" value="3">
                                                                Me es dificil interesarme por algo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e12pn" id="e12p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Indesicion</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op2" value="0" checked>
                                                                Tomo mis sesiciones tan bien como siempre
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op2" value="1">
                                                                Me resulta mas dificil que de costumbre tomar decisiones
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op3" value="2">
                                                                Encuentro mucha mas dificultad que nates para toamar desiciones
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e13n" id="e13op4" value="3">
                                                                Tengo problemas para tomar cualquier desicion 
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e13pn" id="e13p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Desvalorizacion</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op2" value="0" checked>
                                                                No siento que ya no sea valiozo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op2" value="1">
                                                                No me considero a mi mismo tan valioso y util como solia considerarme 
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op3" value="2">
                                                                Me siento menos valioso cuando me comparo con otros
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e14n" id="e14op4" value="3">
                                                                Siento que no valgo nada
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e14pn" id="e14p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Perdida de energia</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op2" value="0" checked>
                                                                Tengo tanta energia como siempre
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op2" value="1">
                                                                Tengo menos energia que la que solia tener
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op3" value="2">
                                                                No tengo suficiente energia para hacer demasiado
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e15n" id="e15op4" value="3">
                                                                No tengo energia suficiente para hacer nada
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e15pn" id="e15p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Cambio de habitos del sueño (INCOMPLETO)</strong></td>
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
                                                    <td><strong>Irritabilidad</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op2" value="0" checked>
                                                                No estoy mas irritable que lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op2" value="1">
                                                                Estoy mas irritable que lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op3" value="2">
                                                                Estoy mucho mas irritable que lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e17n" id="e17op4" value="3">
                                                                Estoy irritable por todo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e17pn" id="e17p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Cambios en el apetito (INCOMPLETO)</strong></td>
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
                                                    <td><strong>Dificultad de concentracion</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op2" value="0" checked>
                                                                Puedo concentrarme tan bien como siempre
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op2" value="1">
                                                                No puedo concentrarme tan bien como habitualmente lo hacia
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op3" value="2">
                                                                Me es difisil mantener la mente en algo por mucho tiempo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e19n" id="e19op4" value="3">
                                                                Encuentro que no puedo concentrarme en nada
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e19pn" id="e19p" value="0">
                                                    </td>                                                                                                                                   
                                                </tr>
                                                <tr>                                          
                                                    <td><strong>Cansancio o fatiga</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op2" value="0" checked>
                                                                No estoy mas cansado o fatigado que lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op2" value="1">
                                                                Me fatigo o me canso mas facilmente que lo habitual
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op3" value="2">
                                                                Estoy demaciado cansado o fatigado para hacer muchas cosas de las que solia hacer
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e20n" id="e20op4" value="3">
                                                                Estoy demaciado cansado o fatigado para hacer la mayoria de las cosas que solia hacer
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e20pn" id="e20p" value="0">
                                                    </td>  
                                                    
                                                    <tr>                                          
                                                    <td><strong>Perdida de interes en el sexo</strong></td>
                                                </tr>
                                                <tr>                                          
                                                    <td>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e21n" id="e21op2" value="0" checked>
                                                                No he notado ningun cambio reciente en mi interes por el sexo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e21n" id="e21op2" value="1">
                                                                Estoy menos interesado en el sexo de lo que solia estarlo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e21n" id="e21op3" value="2">
                                                                Ahora estoy mucho menos interesado en el sexo
                                                            </label>
                                                        </div>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="e21n" id="e21op4" value="3">
                                                                He perdido completamente el interes en el sexo
                                                            </label>
                                                        </div>

                                                        <input type="hidden" name="e20pn" id="e20p" value="0">
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