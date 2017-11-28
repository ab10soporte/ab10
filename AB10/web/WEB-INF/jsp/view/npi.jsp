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
                        <small>NPI</small>
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
                                            Por favor, responda las siguiente preguntas basadas en los cambios. Indique <strong>'SI'</strong> solo si el sintoma se ha presentado en el <strong>'ultimo mes'</strong>; sin no ha aparecido indique <strong>'NO'</strong>.
                                        </p>
                                        <p>Por favor responda cada pregunta honestamente. Pregunte si necesita ayuda con alguna pregunta.</p>
                                        <p>Por cada item que se marque con un <strong>'SI'</strong></p>
                                        <br/>
                                        <table class="table table-bordered" >
                                            <tbody>

                                                <tr>
                                                    <td align="center" bgcolor="#EFECEC">Severidad</td>
                                                    <td align="center" bgcolor="#EFECEC">Distress</td>
                                                </tr>
                                                <tr>
                                                    <td>Medir el grado de SEVERIDAD de los sintomas (como este afecta al paciente)</td>
                                                    <td>Medir el DISTRESS que usted exerimenta con el sintoma (como esto lo afecta)</td>
                                                </tr>
                                                <tr>
                                                    <td>1.- Levemente (notorio, pero no un cambio significativo)</td>
                                                    <td>0.- Nada en aboluto</td>
                                                </tr>
                                                <tr>
                                                    <td>2.- Moderadamente (significativo, pero no un cambio muy marcado)</td>
                                                    <td>1.- Minimamente</td>
                                                </tr>
                                                <tr>
                                                    <td>3.- Severamente (muy marcado o prominente, un cambio dramatico)</td>
                                                    <td>2.- Levemente</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>3.- Levemente</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>4.- Levemente</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>5.- Levemente</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br/>
                                        <div class="table-responsive table-bordered">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <td align="center" bgcolor="#EFECEC">Sintomas</td>
                                                        <td align="center" bgcolor="#EFECEC">Respuesta</td>
                                                        <td align="center" bgcolor="#EFECEC">Severidad</td>
                                                        <td align="center" bgcolor="#EFECEC">Distress</td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>DELIRIOS</strong></p>
                                                            <p> Tiene el paciente ideas que usted sabe que no son reales?</p>
                                                            <p>Ha dicho que los miembros de la familia no son quienes dicen ser?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c2" id="ff1c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c2" id="ff1c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>                                                            
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c3" id="ff1c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c3" id="ff1c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c3" id="ff1c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c4" id="ff1c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c4" id="ff1c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c4" id="ff1c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c4" id="ff1c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c4" id="ff1c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff1c4" id="ff1c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>   
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>ALUCINACIONES</strong></p>
                                                            <p>Tiene el pciente alucinaciones tales como visiones o escucha voces imaginarias?</p>
                                                            <p>Parecever, oir o experimentar cosas que no existen?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c2" id="ff2c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c2" id="ff2c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c3" id="ff2c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c3" id="ff2c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c3" id="ff2c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c4" id="ff2c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c4" id="ff2c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c4" id="ff2c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c4" id="ff2c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c4" id="ff2c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff2c4" id="ff2c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>AGITACION O AGRESION</strong></p>
                                                            <p>Tiene el paciente periodos en los que se niega a cooperar o no deja que la gente le ayude?</p>
                                                            <p>Es dificil de tratar</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c2" id="ff3c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c2" id="ff3c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c3" id="ff3c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c3" id="ff3c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c3" id="ff3c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c4" id="ff3c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c4" id="ff3c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c4" id="ff3c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c4" id="ff3c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c4" id="ff3c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff3c4" id="ff3c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>DEPRESION O DISFORIA</strong>
                                                            <p>Dice cosas o actua como si estuviera triste o desanimado?</p>
                                                            <p>El o ella llora?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c2" id="ff4c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c2" id="ff4c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff4c3" id="ff4c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c3" id="ff4c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c3" id="ff4c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c4" id="ff4c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c4" id="ff4c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c4" id="ff4c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c4" id="ff4c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c4" id="ff4c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff4c4" id="ff4c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>ANSIEDAD</strong>
                                                            <p>El paciente esta muy nervioso, preocupado o tiene miedo sin motivo aparente?</p>
                                                            <p>Paarece muy tenso o agitado, tiene miedo de esta lejos de usted?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c2" id="ff5c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c2" id="ff5c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff5c3" id="ff5c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c3" id="ff5c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c3" id="ff5c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c4" id="ff5c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c4" id="ff5c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c4" id="ff5c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c4" id="ff5c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c4" id="ff5c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff5c4" id="ff5c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>ALEGRIA EXCESIVA O EUFORIA</strong>
                                                            <p>El paciente parece demaciado feliz o contento sin motivo aparente?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c2" id="ff6c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c2" id="ff6c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff6c3" id="ff6c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c3" id="ff6c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c3" id="ff6c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c4" id="ff6c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c4" id="ff6c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c4" id="ff6c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c4" id="ff6c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c4" id="ff6c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff6c4" id="ff6c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>APATIA O INDIFERENCIA</strong>
                                                            <p>Ha perdido interes el paciente por e lmundo que le rodea?</p>
                                                            <p>ha perdido el interes por hacer cosas o le falta motivacion para empezar nuevas actividades? </p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c2" id="ff7c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c2" id="ff7c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff7c3" id="ff7c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c3" id="ff7c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c3" id="ff7c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c4" id="ff7c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c4" id="ff7c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c4" id="ff7c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c4" id="ff7c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c4" id="ff7c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff7c4" id="ff7c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>DESHINIICION</strong>
                                                            <p>Parece actual el paciente de manera impulsiva, sin reflexionar?</p>
                                                            <p>Hace o dice cosas que por lo general no se hacen ni se dicen en publico?</p>
                                                            <p>Hace cosas embarazosas para usted o para otros?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c2" id="ff8c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c2" id="ff8c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff8c3" id="ff8c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c3" id="ff8c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c3" id="ff8c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c4" id="ff8c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c4" id="ff8c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c4" id="ff8c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c4" id="ff8c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c4" id="ff8c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff8c4" id="ff8c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>IRRITABILIDAD O LABILIDAD</strong>
                                                            <p>El paciente se irrita y enoja con facilidad?</p>
                                                            <p>Cambian mucho sus estados de animo, es mas impaciente de lo normal?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c2" id="ff9c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c2" id="ff9c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff9c3" id="ff9c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c3" id="ff9c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c3" id="ff9c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c4" id="ff9c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c4" id="ff9c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c4" id="ff9c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c4" id="ff9c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c4" id="ff9c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff9c4" id="ff9c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>CONDUCTA MOTORA ANORMAL</strong>
                                                            <p>Va i viene el pacienete por la casa, hace una y otra vez cosas tales como abrir armarios o cajones?</p>
                                                            <p>Toma las cosas repetidas veces o enrrolla un un cordel de hilo</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c2" id="ff10c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c2" id="ff10c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff10c3" id="ff10c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c3" id="ff10c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c3" id="ff10c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c4" id="ff10c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c4" id="ff10c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c4" id="ff10c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c4" id="ff10c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c4" id="ff10c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff10c4" id="ff10c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>SUEÑO Y CONDUCTA NOCTURNA</strong>
                                                            <p>Presenta el paciente dificultades para dormir (no se concidera valida si el paciente simplemente se levanta una o dos veces por la noche para ir al baño y luego vuelve a dormirse inmediatamente)?</p>                                                          
                                                            <p>Se levanta por la noches o pasea o bien se viste durante la noche o le impide dormir a usted</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c2" id="ff11c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c2" id="ff11c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff11c3" id="ff11c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c3" id="ff11c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c3" id="ff11c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c4" id="ff11c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c4" id="ff11c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c4" id="ff11c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c4" id="ff11c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c4" id="ff11c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff11c4" id="ff11c4op5" value="5"> 5
                                                            </label>
                                                        </td>   
                                                    </tr>
                                                    <tr>                                            
                                                        <td>
                                                            <p><strong>APETITO Y HABITOS ALIMENTICIOS</strong>
                                                            <p>Ha presentado el paciente algun cambio en el apetito, el peso o los habitos alimenticios</p>
                                                            <p>Ha habido algun cambio en el tio de comida que prefiere?</p>
                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c2" id="ff12c2op0" value="0"> SI
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c2" id="ff12c2op1" value="1" checked> NO
                                                            </label>                                                                                                                       
                                                        </td>
                                                        <td>

                                                            <label class="radio">
                                                                <input type="radio" name="ff12c3" id="ff12c3op1" value="1" checked> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c3" id="ff12c3op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c3" id="ff12c3op3" value="3"> 3
                                                            </label> 

                                                        </td>
                                                        <td>
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c4" id="ff12c4op0" value="0" checked> 0
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c4" id="ff12c4op1" value="1"> 1
                                                            </label>
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c4" id="ff12c4op2" value="2"> 2
                                                            </label>      
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c4" id="ff12c4op3" value="3"> 3
                                                            </label> 
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c4" id="ff12c4op4" value="4"> 4
                                                            </label>         
                                                            <label class="radio">
                                                                <input type="radio" name="ff12c4" id="ff12c4op5" value="5"> 5
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