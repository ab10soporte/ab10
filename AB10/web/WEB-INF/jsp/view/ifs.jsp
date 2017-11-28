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
                        <small>IFS</small>
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
                                    <!--<p>Después de una pausa de 3 minutos, se le da al sujeto una nueva hoja y un lápiz y se le pide que ejecute el dibujo de memoria; <strong>Se toma el tiempo como la vez anterior</strong> y se anota si el segundo proceso gráfico es parecido o no al primero.</p>-->
                                    <table class="table table-bordered" >
                                        <tbody>
                                        <p> 1) Decir al sujeto: <strong>“Podría decir las 3 palabras que le pedí que repita y recuerde”</strong>.</p>
                                        <p>Puntuar 1 punto por cada respuesta correcta</p>
                                        <tr>
                                            <td align="center" bgcolor="#EFECEC">Descripcion</td>
                                        </tr>
                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>1) - SERIES MOTORAS</strong></p>
                                                <p>"Mire atentamente lo que estoy haciendo". El examinador realiza tres veces la serie de Luria "puño, canto, palma". Ahora haga lo mismo con
                                                    su mano derecha, primero conmigo y después solo." El examinador realiza las series 3 veces con el paciente y luego le dice. "Ahora, hágalo usted
                                                    solo"</p>
                                                <p>Puntuación: 6 series consecutivas solo: 3 / al menos 3 series consecutivas solo: 2 / El paciente falla en 1 pero logra 3 series consecutivas con
                                                    el examinador: 1 / El paciente no logra 3 series consecutivas con el examinador : 0
                                                </p>
                                                <p></p>
                                                <p></p>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>                                                                  
                                                <div class="form-check-inline pull-right">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate1" id="ate1id0" value="option0"> 0
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate1" id="ate1id1" value="option1"> 1
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate1" id="ate1id2" value="option2"> 2
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate1" id="ate1id3" value="option2"> 3
                                                    </label>                                                                     
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate1">Observacion</label>
                                                    <textarea class="form-control" id="ate1a" rows="2"></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>2) - INSTRUCCIONES CONFLICTIVAS</strong></p>
                                                <p>"Golpee dos veces cuando yo golpeo una vez". Para asegurarse que el paciente comprendió bien la consigna, realice una serie de 3 pruebas:
                                                    1-1-1. "Golpee una vez cuando yo golpeo dos veces". Para asegurarse que el paciente comprendió bien la consigna, realice una serie de 3
                                                    pruebas: 2-2-2. El examinador realiza la siguiente serie: 1-1-2-1-2-2-2-1-1-2.</p>
                                                <p> Puntuación: Sin error: 3 / Uno o dos errores: 2 / Mas de dos errores: 1 /
                                                    El paciente golpea como el examinador al menos 4 veces consecutivas : 0
                                                </p>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>                                                                  
                                                <div class="form-check-inline pull-right">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate2" id="ate2id0" value="option0"> 0
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate2" id="ate2id1" value="option1"> 1
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate2" id="ate2id2" value="option2"> 2
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate2" id="ate2id3" value="option2"> 3
                                                    </label>                                                                     
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate2">Observacion</label>
                                                    <textarea class="form-control" id="ate2a" rows="2"></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>3) - CONTROL INHIBITORIO MOTOR</strong></p>
                                                <p>"Golpee una vez cuando yo golpeo una vez". Para asegurarse que el paciente comprendió bien la consigna, realice una serie de 3 pruebas: 1-1-
                                                    1. "No golpee cuando yo golpeo dos veces". Para asegurarse que el paciente comprendió bien la consigna, realice una serie de 3 pruebas: 2-2-
                                                    2. El examinador realiza la siguiente serie: 1-1-2-1-2-2-2-1-1-2</p>
                                                <p>Puntuación: Sin error: 3 / Uno o dos errores: 2 / Mas de dos errores: 1 / El paciente
                                                    golpea como el examinador al menos 4 veces consecutivas : 0
                                                </p>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>                                                                  
                                                <div class="form-check-inline pull-right">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate3" id="ate3id0" value="option0"> 0
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate3" id="ate3id1" value="option1"> 1
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate3" id="ate3id2" value="option2"> 2
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate3" id="ate3id3" value="option2"> 3
                                                    </label>                                                                     
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate3">Observacion</label>
                                                    <textarea class="form-control" id="ate3a" rows="2"></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>4) - REPETICIÓN DE DÍGITOS ATRÁS </strong></p>
                                                <table class="table table-bordered" >
                                                    <tbody>
                                                    <p>No tengo descripcion, ni procedimiento para puntuar</p>
                                                    <tr>
                                                        <td>2-4</td>
                                                        <td>5-7</td>
                                                    </tr>
                                                    <tr>
                                                        <td>6-2-9 </td>
                                                        <td>4-1-5</td>
                                                    </tr>
                                                    <tr>
                                                        <td>3-2-7-9</td>
                                                        <td>4-9-6-8</td>
                                                    </tr>
                                                    <tr>
                                                        <td>1-5-2-8-6</td>
                                                        <td>6-1-8-4-3</td>
                                                    </tr>
                                                    <tr>
                                                        <td>5-3-9-4-1-8</td>
                                                        <td>7-2-4-8-5-6</td>
                                                    </tr>
                                                    <tr>
                                                        <td>8-1-2-9-3-6-5</td>
                                                        <td>4-7-3-9-1-2-8</td>
                                                    </tr>
                                                    <tr>
                                                        <td>9-4-3-7-6-2-5-8</td>
                                                        <td>7-2-8-1-9-6-5-3</td>
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
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate4">Observacion</label>
                                                    <textarea class="form-control" id="ate4a" rows="2"></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>5) - MESES ATRÁS </strong></p>
                                                <table class="table table-bordered" >
                                                    <tbody>
                                                    <p>No tengo descripcion, ni procedimiento para puntuar</p>
                                                    <tr>
                                                        <td>Diciembre</td>
                                                        <td>Noviembre</td>
                                                        <td>Octubre</td>
                                                        <td>Septiembre</td>
                                                        <td>Agosto</td>
                                                        <td>Julio</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Junio</td>
                                                        <td>Mayo</td>
                                                        <td>Abril</td>
                                                        <td>Marzo</td>
                                                        <td>Febrero</td>
                                                        <td>Enero</td>
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

                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate5">Observacion</label>
                                                    <textarea class="form-control" id="ate5a" rows="2"></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>6) - MEMORIA DE TRABAJO VISUAL</strong></p>
                                                <table class="table table-bordered" >
                                                    <tbody>
                                                    <p>Señale los cubos en el orden indicado, el paciente deberá copiar esta secuencia de movimientos en orden inverso. Hágalo despacio; el paciente decide
                                                        que mano prefiere utilizar.</p>
                                                    <p>No tengo descripcion, ni procedimiento para puntuar</p>
                                                    <tr>
                                                        <td>1-2</td>
                                                        <td>3-4-2-1</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2-4-3</td>
                                                        <td>1-4-2-3-4</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>                                                                  
                                                <div class="form-check-inline pull-right">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate6" id="ate6id0" value="option0"> 0
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate6" id="ate6id1" value="option1"> 1
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate6" id="ate6id2" value="option2"> 2
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate6" id="ate6id3" value="option3"> 3
                                                    </label>  
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate6" id="ate6id4" value="option4"> 4
                                                    </label> 
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate6">Observacion</label>
                                                    <textarea class="form-control" id="ate6a" rows="2"></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>7) - REFRANES </strong></p>
                                                <table class="table table-bordered" >
                                                    <tbody>
                                                    <p>No tengo descripcion, ni procedimiento para puntuar</p>
                                                    <tr>
                                                        <td>Perro que ladra, no muerde </td>
                                                        <td>Los que hablan mucho, suelen hacer poco</td>

                                                    </tr>
                                                    <tr>
                                                        <td>A mal tiempo, buena cara</td>
                                                        <td>Tomar una actitud positiva frente a las adversidades</td>

                                                    </tr>
                                                    <tr>
                                                        <td>En casa de herrero, cuchillo de palo</td>
                                                        <td>Carecer de algo cuando por tu profesión u oficio, no debiera faltarte</td>

                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>                                                                  
                                                <div class="form-check-inline pull-right">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate7" id="ate7id0" value="option0"> 0
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate7" id="ate7id1" value="option1"> 1
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate7" id="ate7id2" value="option2"> 2
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate7" id="ate7id3" value="option3"> 3
                                                    </label>                                                                     
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate7">Observacion</label>
                                                    <textarea class="form-control" id="ate7a" rows="2"></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" valing="middle">
                                                <p><strong>8) - CONTROL INHIBITORIO VERBAL </strong></p>
                                                <p>Iniciación: Escuche cuidadosamente esta oración y cuando yo haya terminado de leerla, usted debe decirme lo más rápido posible, qué palabra podría
                                                    completar la frase. Consignar respuesta. Inhibición. Diferente: 2/ Rel. Semántica: 1/Palabra exacta: 0 punto. Esta vez quiero que me diga una palabra
                                                    que no tenga ningún sentido en el contexto de la oración, que no tenga ninguna relación con la misma. Por ejemplo: Daniel golpeó el clavo con el
                                                    ...lluvia</p>
                                                <p><strong>Iniciación</strong></p>
                                                <p>Me pongo los zapatos y me ato los ………</p>
                                                <p>Peleaban como perro y ………..</p>
                                                <p><strong>Inhibición</strong></p>
                                                <p>Juan compró caramelos en el …………</p>
                                                <p>Ojo por ojo y diente por …………….</p>
                                                <p>Lave la ropa con agua y …………</p>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>                                                                  
                                                <div class="form-check-inline pull-right">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate8" id="ate8id0" value="option0"> 0
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate8" id="ate8id1" value="option1"> 1
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate8" id="ate8id2" value="option2"> 2
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate8" id="ate8id3" value="option3"> 3
                                                    </label>              
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate8" id="ate8id4" value="option4"> 4
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate8" id="ate8id5" value="option5"> 5
                                                    </label>
                                                    &nbsp;
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="ate8" id="ate8id6" value="option6"> 6
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <label for="ate8">Observacion</label>
                                                    <textarea class="form-control" id="ate8a" rows="2"></textarea>
                                                </div>
                                            </td>   
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>




                                <!--Ejercicio--> 
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Memoria no verbal inmediata</div>
                                    <div class="panel-body">

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