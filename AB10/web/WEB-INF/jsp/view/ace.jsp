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
                        <small>Pagina principal</small>
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
                                <div class="panel-body">Marcar las opciones correctas con un tilde.</div>
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
                                <div class="panel-body">Exponer las 24 láminas 2 segundos cada una.</div>
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
                                <div class="panel-body">0 o 1 punto en cada elemento.</div>
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
                                <!--Consigna 1-->
                                <br/>
                                <div class=" panel panel-info">
                                    <div class="panel-heading">El MMSE esta incluido com parte del ACE</div>
                                    <div class="panel-body">
                                        <div class="panel-group" id="accordionper45">
                                            <!--Orientación-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper2">
                                                            Orientación</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p><i>*Tolerancia de +/- 2 en fecha y piso
                                                                    Cambio de estación: si el paciente dice la estación que acaba de finalizar, preguntar ¿que otra estació podría ser?
                                                                    Se puntúa 1 por respuesta correcta</i>
                                                            </p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Descripcion</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <strong>Temporal:</strong> Año/Estacion/Mes/Fecha/Dia
                                                                </td>
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
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="rate1" id="ate1id4" value="option2"> 4
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="ate1" id="ate1id5" value="option2"> 5
                                                                        </label>
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="ori1">Observacion</label>
                                                                        <textarea class="form-control" id="ori1" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>     
                                                            <tr>
                                                                <td align="left">
                                                                    <strong>Espacial:</strong> Pais/Ciudad/Barrio/Lugar/Pico
                                                                </td>
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
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="ate2" id="ate2id4" value="option2"> 4
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="ate2" id="ate2id5" value="option2"> 5
                                                                        </label>
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="ori2">Observacion</label>
                                                                        <textarea class="form-control" id="ori2" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Atención y Concentración-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper3">
                                                            Atención y Concentración</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p> 1) Decir al sujeto: <strong>“Podría decir las 3 palabras que le pedí que repita y recuerde”</strong>.</p>
                                                            <p>Puntuar 1 punto por cada respuesta correcta</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Descripcion</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <strong>Palabras:</strong> PELOTA      BANDERA      ARBOL
                                                                </td>
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
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="ate1">Observacion</label>
                                                                        <textarea class="form-control" id="ate1" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>     
                                                            </tbody>
                                                        </table>
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p> 2)a. Preguntar al sujeto: <strong>¿cuánto es 100 menos 7?</strong>.</p>
                                                            <p>Luego de que el sujeto responda, pídale que reste otros 7 hasta un total de 5 restas. Si el sujeto se equivoca, continúe desde el valor 
                                                                respondido por el sujeto (ej. 93, 84, 77, 70, 63 score 4). Otorgue 1 punto solo a las respuestas correctas.
                                                            </p>                                          
                                                            <p>En el cálculo, si el sujeto falla, darle una segunda oportunidad pero si persiste equivocándose, pasar al deletreo de palabras en orden inverso.</p>
                                                            <p> 2)b. Pedir  al sujeto que <strong>deletree la palabra MUNDO. Luego pedirle que lo haga al revés</strong>. El score es el número de letras en el orden correcto. Siempre tomar el deletreo independientemente del resultado de la tarea anterior.</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Descripcion</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>2)a.</strong> (100 – 7) 93 – 86 – 79 – 72 – 65</p> 
                                                                    <p><strong>2)b.</strong> O  D  N  U  M</p> 
                                                                </td>
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
                                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id3" value="option2"> 3
                                                                        </label>    
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id4" value="option2"> 4
                                                                        </label> 
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="ate4" id="ate4id4" value="option2"> 5
                                                                        </label> 
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="ate2">Observacion</label>
                                                                        <textarea class="form-control" id="ate2" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>     
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Memoria-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper4">
                                                            Memoria</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper4" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p> 1) Decir al sujeto: <strong>“Podría decir las 3 palabras que le pedí que repita y recuerde”</strong>.</p>
                                                            <p>Puntuar 1 punto por cada respuesta correcta</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Descripcion</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <strong>Palabras:</strong> PELOTA      BANDERA      ARBOL
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem1" id="mem1id1" value="option1"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem1" id="mem1id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem1" id="mem1id3" value="option2"> 3
                                                                        </label>                                                                     
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="mem1">Observacion</label>
                                                                        <textarea class="form-control" id="mem1" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>     
                                                            </tbody>
                                                        </table>
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p> 2) <strong>MEMORIA ANTERÓGRADA:</strong> Decir al sujeto: <strong>“Voy a decirle un nombre y una dirección y me gustaría que la repita después de mí. Vamos a hacerlo 3 veces, para que pueda aprenderlo. Luego se lo volveré a preguntar” </strong>.</p>
                                                            <p> Si el paciente empieza a repetir junto con examinador pedirle que espere hasta que haya terminado el examinador.</p>
                                                            <p>Otorgue 1 punto por cada elemento recordado correctamente. Luego de puntuar el primer trial, realice la tarea dos veces más exactamente de la misma manera.</p>
                                                            <p>Registrar la puntuación en cada trial.</p>
                                                            <p>Para el score sólo cuenta el 3 trial.</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Intento</td>
                                                                <td align="center" bgcolor="#EFECEC">Aciertos</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <strong>1er. Trial</strong>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline" >
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id1" value="option1"><strong>Luis</strong> 
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id2" value="option2"><strong>Reinal</strong>
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id3" value="option2"><strong>Pedro</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id4" value="option2"><strong>Goyena</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id5" value="option2"><strong>420</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Rosario</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">  
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Santa Fe</strong>
                                                                        </label>                                                                        
                                                                    </div>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id0" value="option0"> 0
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id1" value="option1"> 1 
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id3" value="option2"> 3
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id4" value="option2"> 4
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id5" value="option2"> 5
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id6" value="option2"> 6
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem2" id="mem2id7" value="option2"> 7
                                                                        </label>                                                                        
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="mem2">Observacion</label>
                                                                        <textarea class="form-control" id="mem2" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>   
                                                            <tr>
                                                                <td>
                                                                    <strong>2er. Trial</strong>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline">
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id1" value="option1"><strong>Luis</strong> 
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id2" value="option2"><strong>Reinal</strong>
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id3" value="option2"><strong>Pedro</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id4" value="option2"><strong>Goyena</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id5" value="option2"><strong>420</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Rosario</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">  
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Santa Fe</strong>
                                                                        </label>                                                                        
                                                                    </div>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id0" value="option0"> 0
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id1" value="option1"> 1 
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id3" value="option2"> 3
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id4" value="option2"> 4
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id5" value="option2"> 5
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id6" value="option2"> 6
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem3" id="mem3id7" value="option2"> 7
                                                                        </label>                                                                        
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="mem3">Observacion</label>
                                                                        <textarea class="form-control" id="mem3" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <strong>3er. Trial</strong>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline">
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id1" value="option1"><strong>Luis</strong> 
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id2" value="option2"><strong>Reinal</strong>
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id3" value="option2"><strong>Pedro</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id4" value="option2"><strong>Goyena</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id5" value="option2"><strong>420</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Rosario</strong>
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">  
                                                                            <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Santa Fe</strong>
                                                                        </label>                                                                        
                                                                    </div>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id0" value="option0"> 0 
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id1" value="option1"> 1 
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id3" value="option2"> 3
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id4" value="option2"> 4
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id5" value="option2"> 5
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id6" value="option2"> 6
                                                                        </label>  
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <label class="form-check-label">                                                                            
                                                                            <input class="form-check-input" type="radio" name="mem4" id="mem4id7" value="option2"> 7
                                                                        </label>                                                                        
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="mem4">Observacion</label>
                                                                        <textarea class="form-control" id="mem4" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr> 
                                                            </tbody>
                                                        </table>
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p> 3) <strong>MEMORIA RETRÓGRADA: Dígame el nombre completo del:</strong> </p>
                                                            <p>Otorgue 1 punto por cada respuesta correcta y registre los errores. Si sólo dice el apellido también se puntúa correcto.</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Pregunta</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>a.</strong> Presidente actual ?</p> 
                                                                    <p><strong>b.</strong> Presidente mujer en Argentina ?</p>
                                                                    <p><strong>c.</strong> Papa ?</p> 
                                                                    <p><strong>d.</strong> Presidente estadounidense asesinado en la decada del 60 ?</p> 
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem5" id="mem5id0" value="option0"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem5" id="mem5id1" value="option1"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem5" id="mem5id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem5" id="mem5id3" value="option2"> 3
                                                                        </label>    
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="mem5" id="mem5id4" value="option2"> 4
                                                                        </label>                                                                         
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="mem5">Observacion</label>
                                                                        <textarea class="form-control" id="mem5" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>     
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Fluencia Verbal-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper5">
                                                            Fluencia Verbal</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper5" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <p> 1) Pedir al sujeto: <strong> Voy a decirle una letra del abecedario y quisiera que usted generara/dijera la mayor cantidad de palabras que pueda con esa letra, pero que no sean nombres propios de personas o lugares. ¿Está listo? Tiene un minuto y la letra es P.</strong>.</p>
                                                        <p> 2) Decir al sujeto: <strong> Ahora nombre todos los animales que pueda, comenzando con cualquier letra. El participante puede equivocarse y decir sólo nombres de animales que comiencen con la letra P, en ese caso repetir las instrucciones durante los 60 segundos, si es necesario.</strong>.</p>
                                                        <table class="table table-bordered">
                                                            <tbody>
                                                                <tr>
                                                                    <th scope="row">Letra P</th>
                                                                    <td>>17</td>
                                                                    <td>14-17</td>
                                                                    <td>11-13</td>
                                                                    <td>8-10</td>
                                                                    <td>6-7</td>
                                                                    <td>4-5</td>
                                                                    <td>3-4</td>
                                                                    <td><3</td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Animales</th>
                                                                    <td>>21</td>
                                                                    <td>17-21</td>
                                                                    <td>14-16</td>
                                                                    <td>11-13</td>
                                                                    <td>9-10</td>
                                                                    <td>7-8</td>
                                                                    <td>5-6</td>
                                                                    <td><5</td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">Puntaje</th>
                                                                    <td>7</td>
                                                                    <td>6</td>
                                                                    <td>5</td>
                                                                    <td>4</td>
                                                                    <td>3</td>
                                                                    <td>2</td>
                                                                    <td>2</td>
                                                                    <td>1</td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                                <tr>
                                                                    <td align="center" bgcolor="#EFECEC">Caso</td>
                                                                    <td align="center" bgcolor="#EFECEC">Contador</td>
                                                                    <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" valing="middle">
                                                                        <p><strong> Letra P:</strong></p> 
                                                                    </td>
                                                                    <td align="center" valing="middle">                                                                        
                                                                        <button type="button" id="flu1id1" class="btn btn-warning btn-sm">0</button>                                                               
                                                                    </td>
                                                                    <td>                                                                  
                                                                        <div class="form-check-inline pull-right">
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id0" value="option0"> 0
                                                                            </label>
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id1" value="option1"> 1
                                                                            </label>
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id2" value="option2"> 2
                                                                            </label>
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id3" value="option2"> 3
                                                                            </label>    
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id4" value="option2"> 4
                                                                            </label>          
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id5" value="option2"> 5
                                                                            </label> 
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id6" value="option2"> 6
                                                                            </label> 
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu2" id="flu2id7" value="option2"> 7
                                                                            </label> 
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                            <label for="flu1">Observacion</label>
                                                                            <textarea class="form-control" id="flu1" rows="2"></textarea>
                                                                        </div>
                                                                    </td>
                                                                </tr>   
                                                                <tr>
                                                                    <td align="left" valing="middle">
                                                                        <p><strong> Animales</strong></p> 
                                                                    </td>
                                                                    <td align="center" valing="middle">
                                                                        <button type="button" id="flu3id1" class="btn btn-warning btn-sm">0</button>                                                               
                                                                    </td>
                                                                    <td>                                                                  
                                                                        <div class="form-check-inline pull-right">
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id0" value="option0"> 0
                                                                            </label>
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id1" value="option1"> 1
                                                                            </label>
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id2" value="option2"> 2
                                                                            </label>
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id3" value="option2"> 3
                                                                            </label>    
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id4" value="option2"> 4
                                                                            </label>          
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id5" value="option2"> 5
                                                                            </label> 
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id6" value="option2"> 6
                                                                            </label> 
                                                                            &nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="flu3" id="flu3id7" value="option2"> 7
                                                                            </label> 
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                            <label for="flu3">Observacion</label>
                                                                            <textarea class="form-control" id="flu3" rows="2"></textarea>
                                                                        </div>
                                                                    </td>
                                                                </tr> 
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Lenguaje-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper6">
                                                            Lenguaje</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper6" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p> A continuación se describen los ejercicios:</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Enunciado</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Comprension A:</strong> Mostrar al paciente la siguiente instruccion y pedirle: Lea y obedezca lo siguiente</p> 
                                                                    <div align="center">
                                                                        <p><strong>CIERRE LOS OJOS</strong></p> 
                                                                    </div>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len1" id="len1id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len1" id="len1id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len1">Observacion</label>
                                                                        <textarea class="form-control" id="len1" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>     
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Comprension B (3 ordenes):</strong> Dar al sujeto un papel y decirle: (Otorgar un punto por cada orden correcta)</p> 
                                                                    <p>Tome este papel con su mano derecha.</p>
                                                                    <p>Doblelo por la mitad</p> 
                                                                    <p>Luego pongalo en el suelo</p> 

                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len2" id="len2id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len2" id="len2id2" value="option2"> 1
                                                                        </label>      
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len2" id="len2id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len2" id="len2id2" value="option2"> 3
                                                                        </label>
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len2">Observacion</label>
                                                                        <textarea class="form-control" id="len2" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Escritura:</strong> Pedir al sujeto: Piense una oracion y escribala en estos renglones</p> 
                                                                    <p>Si refiere no poder, sugerirle un topico: por ejemplo el clima de hoy</p>
                                                                    <p>Otorgar un punto si la oracion esta bien formada (sujeto-verbo-predicado) y si tiene sentido</p> 
                                                                    <p>No se concidera correcto oraciones del tipo 'Feliz cumpleaños' o 'Lindo dia'</p> 

                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len3" id="len3id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len3" id="len3id2" value="option2"> 1
                                                                        </label> 
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len3">Observacion</label>
                                                                        <textarea class="form-control" id="len3" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Repeticion:</strong> Pedir al sujeto que repita las siguientes palabras despuesde que yo las diga</p>
                                                                    <p>Puntue 2 si estan todas correctas, 1 si 3 fueron correctas, 0 para el resto</p> 
                                                                    <div align="center">
                                                                        <p><strong>HIPOPOTAMO - EXCENTRICIDAD - ININTELIGIBLE - ESTADISTICO</strong></p> 
                                                                    </div>

                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len4" id="len4id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len4" id="len4id2" value="option2"> 1
                                                                        </label> 
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len4" id="len4id2" value="option2"> 2
                                                                        </label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len4">Observacion</label>
                                                                        <textarea class="form-control" id="len4" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Repeticion de frases:</strong> Pedir al sujeto que repita cda una de las siguinetes fases</p>
                                                                    <p>Permitir una sola repeticion</p> 
                                                                    <div align="center">
                                                                        <p><strong>El flan tiene frutillas y frambuesas</strong></p> 
                                                                        <p><strong>La orquesta toco y la audiencia aplaudio</strong></p> 
                                                                    </div>

                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len5" id="len5id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len5" id="len5id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len5">Observacion</label>
                                                                        <textarea class="form-control" id="len5" rows="2"></textarea>
                                                                    </div>
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len6" id="len6id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len6" id="len6id2" value="option2"> 1
                                                                        </label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len6">Observacion</label>
                                                                        <textarea class="form-control" id="len6" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Denominacion:</strong> Mostrar al sujeto los 12 dibujos y pedir que nombre cada uno de ellos</p>
                                                                    <p>Otorgar 1 punto por cada respuesta correcta</p> 
                                                                    <p>Permitir los sinonimos</p> 
                                                                    <div align="center">
                                                                        <p><strong>Mostrar material de apoyo con las 12 imagenes</strong></p>                                                                        
                                                                    </div>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len7" id="len7id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len7" id="len7id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len7" id="len7id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len7">Observacion</label>
                                                                        <textarea class="form-control" id="len7" rows="2"></textarea>
                                                                    </div>
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id0" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id1" value="option1"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 3
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 4
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 5
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 6
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 7
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 8
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 9
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len8" id="len8id2" value="option2"> 10
                                                                        </label>

                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="len8">Observacion</label>
                                                                        <textarea class="form-control" id="len8" rows="2"></textarea>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Comprencion C:</strong> Usando las figuras anteriores, pida al sujeto:</p>
                                                                    <p>Señale cual se asocia con la monarquia</p>    
                                                                    <p>Señale cual es un marsupial</p> 
                                                                    <p>Señale cual se puede encontrar en la Antartida</p> 
                                                                    <p>Señale cual se relaciona con la nautica (navegacion)</p> 
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len9" id="len9id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len9" id="len9id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len9" id="len9id3" value="option2"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len9" id="len9id4" value="option2"> 3
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len9" id="len9id5" value="option2"> 4
                                                                        </label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="exampleTextarea">Observacion</label>
                                                                        <textarea class="form-control" id="exampleTextarea" rows="2"></textarea>
                                                                    </div>                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Lectura (irregular):</strong> Pedir al sujeto que lea lass siguientes palabras.</p>
                                                                    <p>Mostrarles al paciente las mismas</p> 
                                                                    <p>Otorge un punto si todas las palabras son leidas correctamente</p> 
                                                                    <div align="center">
                                                                        <p><strong>Mostrar material de apoyo con la lista de palabras</strong></p> 
                                                                        <p>JASS - LASAGNA - JEAN - HIPPIE - JUMBO</p>
                                                                    </div>
                                                                </td>
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len10" id="len10id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="len10" id="len10id2" value="option2"> 1
                                                                        </label>

                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="exampleTextarea">Observacion</label>
                                                                        <textarea class="form-control" id="exampleTextarea" rows="2"></textarea>
                                                                    </div>                                                                    
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Habilidades Visuoespaciales-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper7">
                                                            Habilidades Visuoespaciales</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper7" class="panel-collapse collapse">                                           
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p> A continuación se describen los ejercicios:</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">Enunciado</td>
                                                                <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Pentágonos Superpuestos:</strong> Mostrar al paciente la siguiente figura y pedirle que copie este diagrama en el espacio provisto.</p> 
                                                                    <p>Otorgar 1 punto si la copia es correcta.</p>
                                                                    <div align="center">
                                                                        <p><strong>Mostrar material de apoyo con la figura.</strong></p>                                                                        
                                                                    </div>
                                                                </td>                                                            
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab1" id="hab1id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab1" id="hab1id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;&nbsp;
                                                                        <label>MMSE</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="hab1">Observacion</label>
                                                                        <textarea class="form-control" id="hab1" rows="2"></textarea>
                                                                    </div>                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Cubo:</strong> Mostrar al paciente la figura (cubo) y pedirle que copie este diagrama en el espacio provisto.</p> 
                                                                    <p>Puntuar según guía.</p>
                                                                    <div align="center">
                                                                        <p><strong>Mostrar material de apoyo con la figura.</strong></p>                                                                        
                                                                    </div>
                                                                </td>                                                            
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab2" id="hab2id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab2" id="hab2id2" value="option2"> 1
                                                                        </label>
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab2" id="hab2id3" value="option3"> 2
                                                                        </label>

                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="hab2">Observacion</label>
                                                                        <textarea class="form-control" id="hab2" rows="2"></textarea>
                                                                    </div>                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Reloj:</strong> Pedir al paciente que dibuje un reloj con los números y las agujas indicando que son las 10:05 hs.</p> 
                                                                    <p>Otorgue 1 punto por el círculo correcto, por la numeración correcta (0-2) y por la posición correcta de ls aguas (0-2).</p>
                                                                </td>                                                            
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab3" id="hab3id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab3" id="hab3id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab3" id="hab3id3" value="option3"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab3" id="hab3id4" value="option3"> 3
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab3" id="hab3id5" value="option3"> 4
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab3" id="hab3id6" value="option3"> 5
                                                                        </label>

                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="hab3">Observacion</label>
                                                                        <textarea class="form-control" id="hab3" rows="2"></textarea>
                                                                    </div>                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Pedirle al sujeto que cuente los puntos sin señalarlos.</strong></p> 
                                                                    <div align="center">
                                                                        <p><strong>Mostrar material de apoyo con la figura.</strong></p>                                                                        
                                                                    </div>
                                                                </td>                                                            
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab4" id="hab4id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab4" id="hab4id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab4" id="hab4id3" value="option3"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab4" id="hab4id4" value="option3"> 3
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab4" id="hab4id5" value="option3"> 4
                                                                        </label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="hab4">Observacion</label>
                                                                        <textarea class="form-control" id="hab4" rows="2"></textarea>
                                                                    </div>                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" valing="middle">
                                                                    <p><strong>Pedirle al sujeto que identifique las letras.</strong></p> 
                                                                    <div align="center">
                                                                        <p><strong>Mostrar material de apoyo con la figura.</strong></p>                                                                        
                                                                    </div>
                                                                </td>                                                            
                                                                <td>                                                                  
                                                                    <div class="form-check-inline pull-right">
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab5" id="hab5id1" value="option1"> 0
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab5" id="hab5id2" value="option2"> 1
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab5" id="hab5id3" value="option3"> 2
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab5" id="hab5id4" value="option3"> 3
                                                                        </label>
                                                                        &nbsp;
                                                                        <label class="form-check-label">
                                                                            <input class="form-check-input" type="radio" name="hab5" id="hab5id5" value="option3"> 4
                                                                        </label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <label for="hab5">Observacion</label>
                                                                        <textarea class="form-control" id="hab5" rows="2"></textarea>
                                                                    </div>                                                                    
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Delayed Memoria-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper8">
                                                            Delayed Memoria</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper8" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                                <tr>
                                                                    <td align="center" bgcolor="#EFECEC">Enunciado</td>
                                                                    <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" valing="middle">
                                                                        <p> En este item se deberá <strong>chequear el delayed</strong></p>
                                                                        <p> Decirle al sujeto <strong>Puede ud. decirme el nombre y las direcciones que repetimos al principio ?</strong>:</p>
                                                                        <p>Registrar la puntuación, scores, errores.</p>
                                                                        <div class="form-check-inline" >
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id1" value="option1"><strong>Luis</strong> 
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id2" value="option2"><strong>Reinal</strong>
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id3" value="option2"><strong>Pedro</strong>
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id4" value="option2"><strong>Goyena</strong>
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id5" value="option2"><strong>420</strong>
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Rosario</strong>
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">  
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id6" value="option2"><strong>Santa Fe</strong>
                                                                            </label>                                                                        
                                                                        </div>
                                                                    </td>                                                            
                                                                    <td>                                                                  
                                                                        <div class="form-check-inline pull-right">
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id0" value="option0"> 0
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id1" value="option1"> 1 
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id2" value="option2"> 2
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id3" value="option2"> 3
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id4" value="option2"> 4
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id5" value="option2"> 5
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id6" value="option2"> 6
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="del1" id="del1id7" value="option2"> 7
                                                                            </label>                                                                        
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                            <label for="del1">Observacion</label>
                                                                            <textarea class="form-control" id="del1" rows="2"></textarea>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>    
                                                </div>
                                            </div>
                                            <!--Reconocimiento-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper9">
                                                            Reconocimiento</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper9" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <div class="panel-body">                                               
                                                            <p> Este test solo debe realizarse si el sujeto no recordó todos los items en el subset anterior.</p>
                                                            <p> Si todos los items fueron recordados correctamente, no realice el test y puntúe 5.</p>
                                                            <p>Si solo una parte fue recordada en el subtest anterior comience marcando los datos recordados. Luego testee los items no recordados diciendo: <strong>Bueno, le voy a dar algunas pistas: el hombre se llamaba X, Y o Z</strong> y así sucesivamente.</p>
                                                            <p>Cada item reconocido cuenta un punto que se suma a los puntos recordados originalmete.</p>
                                                            <table class="table table-bordered">
                                                                <tr>
                                                                    <td align="center"><strong>Luis Reynal</strong></td>
                                                                    <td align="center">Lucas Reynal</td>
                                                                    <td align="center"><strong>Luis Reynal</strong></td>
                                                                    <td align="center">Luis Royal</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center"><strong>Pedro Goyena</strong></td>
                                                                    <td align="center">Pedro Galeano</td>
                                                                    <td align="center">Pablo Goyena</td>
                                                                    <td align="center"><strong>Pedro Goyena</strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center"><strong>420</strong></td>
                                                                    <td align="center">240</td>
                                                                    <td align="center"><strong>420</strong></td>
                                                                    <td align="center">450</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center"><strong>Rosario</strong></td>
                                                                    <td align="center">Capital Federal</td>
                                                                    <td align="center"><strong>Rosario</strong></td>
                                                                    <td align="center">Resistencia</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center"><strong>Santa Fe</strong></td>
                                                                    <td align="center"><strong>Santa Fe</strong></td>
                                                                    <td align="center">Buenos Aires</td>
                                                                    <td align="center">Chaco</td>
                                                                </tr>
                                                            </table>
                                                            <table class="table table-bordered">
                                                                <tr>
                                                                    <td align="center" bgcolor="#EFECEC"></td>
                                                                    <td align="center" bgcolor="#EFECEC">Puntaje</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" valing="middle">
                                                                        <div class="form-check-inline" >
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id1" value="option1"><strong>Luis Reynal</strong> 
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id2" value="option2"><strong>Pedro Goyena</strong>
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id3" value="option2"><strong>420</strong>
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id4" value="option2"><strong>Rosario</strong>
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="checkbox" name="mem2" id="mem2id5" value="option2"><strong>Santa Fe</strong>
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;                                                                                                                                              
                                                                        </div>
                                                                    </td>                                                            
                                                                    <td>                                                                  
                                                                        <div class="form-check-inline pull-right">
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="rec1" id="rec1id0" value="option1"> 0
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="rec1" id="rec1id1" value="option1"> 1 
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="rec1" id="rec1id2" value="option2"> 2
                                                                            </label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">
                                                                                <input class="form-check-input" type="radio" name="rec1" id="rec1id3" value="option2"> 3
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="rec1" id="rec1id4" value="option2"> 4
                                                                            </label>  
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <label class="form-check-label">                                                                            
                                                                                <input class="form-check-input" type="radio" name="rec1" id="rec1id5" value="option2"> 5
                                                                            </label>  
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                            <label for="rec1">Observacion</label>
                                                                            <textarea class="form-control" id="rec1" rows="2"></textarea>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>  
                                                    </div>
                                                </div>
                                            </div>  

                                        </div>
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
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Detalle de la puntuación</a>
                                </h4>
                            </div>
                            <div id="collapse5" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <table class="table table-bordered" style="width:500px;">
                                        <tbody>
                                            <tr>
                                                <td align="center" bgcolor="#EFECEC">Dominio</td>
                                                <td align="center" bgcolor="#EFECEC">Puntaje MMSE</td>
                                                <td align="center" bgcolor="#EFECEC">Puntaje ACE</td>
                                            </tr>                                 
                                            <tr>
                                                <td align="center"><strong>Orientación</strong></td>
                                                <td align="center"></td>
                                                <td align="center"></td>
                                            </tr> 
                                            <tr>
                                                <td align="center"><strong>Atención</strong></td>
                                                <td align="center"></td>
                                                <td align="center"></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><strong>Memoria</strong></td>
                                                <td align="center"></td>
                                                <td align="center"></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><strong>Fluencia</strong></td>
                                                <td align="center"></td>
                                                <td align="center"></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><strong>Lenguaje</strong></td>
                                                <td align="center"></td>
                                                <td align="center"></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><strong>Habilidades Visuoespaciales</strong></td>
                                                <td align="center"></td>
                                                <td align="center"></td>
                                            </tr>
                                            <tr>
                                                <td align="center" bgcolor="#EFECEC">TOTAL</td>
                                                <td align="center" bgcolor="#EFECEC"></td>
                                                <td align="center" bgcolor="#EFECEC"></td>
                                            </tr>  
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>                        

                        <!--Submit del formulario-->
                        <div class="panel-body">      
                            <div class="text-right">
                                <a href="weschler.html" class="btn btn-primary" >Finalizar</a>                                                               
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
            //Fluencia verbal
            $('#flu1id1').click(function () {
                $('#flu1id1').html(parseInt($('#flu1id1').text()) + 1);
            });
            $('#flu3id1').click(function () {
                $('#flu3id1').html(parseInt($('#flu3id1').text()) + 1);
            });


            // Incrementa cada perseverancia del ensayo 1
            $('#b-e1-idd1').click(function () {
                //                alert('down');
                $('#t-e1-id1').html(parseInt($('#t-e1-id1').text()) - 1);
            });
            $('#b-e1-idu1').click(function () {
                //                $('#t-e1-id1').html('a');
                alert($('#t-e1-id1').text());
            });

        </script>

    </body>
</html>