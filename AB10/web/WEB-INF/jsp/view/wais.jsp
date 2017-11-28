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
                        <small>WAIS III</small>
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
                                <!--Digitos discretos e Inversos-->
                                <br/>
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Digitos discretos e Inversos</div>
                                    <div class="panel-body">
                                        <table class="table table-bordered" >
                                        <tbody>
                                        <p><strong>Enunciado discretos:</strong></p>
                                        <p>Voy a decir algunos números. Escuche con cuidado, y cuando haya terminado usted me los repite. Diga lo que dije yo</p>
                                        <tr>
                                            <td align="center" bgcolor="#EFECEC">Correcto</td>
                                            <td align="left" bgcolor="#EFECEC">Intento</td>        
                                            <td align="left" bgcolor="#EFECEC">Secuencia</td>     
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>1 - 7</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>6 - 3</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 2 A</td>
                                            <td>5 - 8 - 2</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck4" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 2 B</td>
                                            <td>6 - 9 - 4</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck5" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 3 A</td>
                                            <td>6 - 4 - 3 - 9</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck6" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 3 B</td>
                                            <td>7 - 2 - 8 - 6</td>
                                        </tr><tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck7" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 4 A</td>
                                            <td>4 - 2 - 7 - 3 - 1</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck8" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 4 B</td>
                                            <td>7 - 5 - 8 - 3 - 6</td>
                                        </tr> 
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck9" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 5 A</td>
                                            <td>6 - 1 - 9 - 4 - 7 - 3</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck10" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 5 B</td>
                                            <td>3 - 9 - 2 - 4 - 9 - 7</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck11" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 6 A</td>
                                            <td>5 - 9 - 1 - 7 - 4 - 2 - 8</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck12" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 6 B</td>
                                            <td>4 - 1 - 7 - 9 - 3 - 8 - 6</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck13" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 7 A</td>
                                            <td>5 - 8 - 1 - 9 - 2 - 6 - 4 - 7</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck14" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 7 B</td>
                                            <td>3 - 8 - 2 - 9 - 5 - 1 - 7 - 4</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck15" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 8 A</td>
                                            <td>2 - 7 - 5 - 8 - 6 - 2 - 5 - 8 - 4</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck16" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 8 B</td>
                                            <td>7 - 1 - 3 - 9 - 4 - 2 - 5 - 6 - 8</td>
                                        </tr>
                                        
                                                     
                                        
                                        
                                        </tbody>
                                    </table>
                                        
                                        <table class="table table-bordered" >
                                        <tbody>
                                        <p><strong>Enunciado inversos</strong></p>
                                        <p>Ahora la voy a decir algunos números más, pero esta vez, cuando yo termine, repítalos de atrás para adelante. Por ejemplo si yo digo 7-1-9, ¿qué tendría que decir usted?</p>
                                        <p> Si el examinado responde bien (9-1-7), se dirá: <strong>'Muy bien'</strong></p>
                                        <p> Si responde mal, se dirá: 'No, debió decir 9-1-7 yo dije 7-1-9, de modo que, de atrás hacia adelante, usted debió decir 9-1-7. Vamos a probar con otros números. Recuerde que debe decirlos de atrás hacia adelante 3-4-8, ¿qué tendría que decir usted?'</p>
                                        <p><strong>Observaciones</strong></p>
                                        <p> - Se administrará Dígitos hacia Atrás aunque el examinado obtenga un puntaje de 0 en Dígitos hacia Adelante.</p>
                                        <p> - Se deben administrar ambos intentos de cada ítem aunque el examinado apruebe el intento 1</p>
                                        <p> - Se inicia en el intento 1 del ítem 1, y se interrumpe cuando obtenga puntajes de 0 en ambos intentos de cualquier ítem</p>
                                        <p> - En dígitos hacia atrás: no proporcione ninguna ayuda en el ejemplo. Sea que el examinado responda correctamente o no en el segundo ejemplo cuando no entendió la primera vez pase al intento 1 del ítem 1</p>
                                        <tr>
                                            <td align="center" bgcolor="#EFECEC">Correcto</td>
                                            <td align="left" bgcolor="#EFECEC">Intento</td>        
                                            <td align="left" bgcolor="#EFECEC">Secuencia</td>     
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>1 - 7</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>6 - 3</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 2 A</td>
                                            <td>5 - 8 - 2</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck4" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 2 B</td>
                                            <td>6 - 9 - 4</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck5" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 3 A</td>
                                            <td>6 - 4 - 3 - 9</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck6" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 3 B</td>
                                            <td>7 - 2 - 8 - 6</td>
                                        </tr><tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck7" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 4 A</td>
                                            <td>4 - 2 - 7 - 3 - 1</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck8" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 4 B</td>
                                            <td>7 - 5 - 8 - 3 - 6</td>
                                        </tr> 
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck9" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 5 A</td>
                                            <td>6 - 1 - 9 - 4 - 7 - 3</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck10" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 5 B</td>
                                            <td>3 - 9 - 2 - 4 - 9 - 7</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck11" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 6 A</td>
                                            <td>5 - 9 - 1 - 7 - 4 - 2 - 8</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck12" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 6 B</td>
                                            <td>4 - 1 - 7 - 9 - 3 - 8 - 6</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck13" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 7 A</td>
                                            <td>5 - 8 - 1 - 9 - 2 - 6 - 4 - 7</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck14" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 7 B</td>
                                            <td>3 - 8 - 2 - 9 - 5 - 1 - 7 - 4</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck15" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 8 A</td>
                                            <td>2 - 7 - 5 - 8 - 6 - 2 - 5 - 8 - 4</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck16" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 8 B</td>
                                            <td>7 - 1 - 3 - 9 - 4 - 2 - 5 - 6 - 8</td>
                                        </tr>
                                        
                                                     
                                        
                                        
                                        </tbody>
                                    </table>
                                    </div>                                    
                                </div>
                                                
                                <!--Digitos y Simbolos-->
                                <br/>
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Digitos y Simbolos</div>
                                    <div class="panel-body">
                                        <table class="table table-bordered" >
                                            <tbody>
                                            <p><strong>Consigna:</strong> Ubique la paguina delante del el examinado y luego digale</p>
                                            <p>'Quiero que copie cada marca en la casilla vacia que esta debajo de ella, observe como lo hago yo'</p>
                                            <p>Copie los tres primeros simbolos en las casillas vacias. Señale la linea gruesa verticaly diga</p>
                                            <p>'Ahora hagalo usted hasta la linea'</p>
                                            <p>Corrija al examinado de ser necasario. Despues diga</p>
                                            <p>'Ahora copie el resto de las marcas, tan rapido como pueda, hasta que yo le diga que se detenga. Esta listo? Comiense'</p>
                                            <p>Empiese a tomar el tiempo y despues de 90 segundos</p>
                                            <p><strong>Observaciones</strong></p>
                                            <p> - Registre un punto por cada simolo dibujado correctamente, las respuestas a los siete itemn de prueba no se incluyen en el puntaje. No se asignan puntos por  los items completados sin seguir el orden de presentacion</p>
                                            <p> - Una respuesta se considera correcta cuando es claramente identificable el simbolo modelo, aunque el dibujo se inperfecto o corrija un simbolo previamente mal dibujado, siempre que la correccion haya sido espontanea</p>                                           
                                            <tr>
                                                <td align="center" bgcolor="#EFECEC">Imagen</td>
                                                <td align="center" bgcolor="#EFECEC">Tiempo</td>
                                            </tr>
                                            <tr>
                                                <td align="left" valing="middle">
                                                    <img src="<c:url value="/resource/image/helpdoc/wais1.jpg" />" class="img-responsive" alt="wais1"> 
                                                </td>
                                                <td>                                                                  
                                                    <div class="form-check-inline pull-right">
                                                        <button type="button" id="cro2b1" class="btn btn-warning btn-sm">Reset</button> 
                                                        <label id="cro2">000</label>
                                                        <button type="button" id="cro2b2" class="btn btn-warning btn-sm">Start</button>                                                        
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <label for="ori1">Observacion</label>
                                                        <textarea class="form-control" id="cro2ob" rows="2"></textarea>
                                                    </div>
                                                </td>
                                            </tr>     
                                            
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div> 
                                </div>    
                                
                                <!--Ordenamiento de Letras-->
                                <br/>
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Ordenamiento de Letras</div>
                                    <div class="panel-body">
                                        <table class="table table-bordered" >
                                        <tbody>
                                        <p><strong>Enunciado</strong></p>
                                        <p>Item de práctica: 'voy a leerle un grupo de números y letras. Después quiero que usted me diga los números primero, de menor a mayor y luego las letras en orden alfabético. Por ejemplo si yo leo T-7, su respuesta debe ser 7-T.El numero debe ir primero, y después la letra. Si yo digo 9-c-3 su respuesta deberá ser 3-9-c; primero los números de menor a mayor y después las letras en orden alfabético. Practiquemos'</p>
                                        <p><strong>Observaciones</strong></p>
                                        <p> - Si hay errores se corrige y se repite las instrucciones de ser necesario, aunque fracase en práctica se toma</p>
                                        <p> - Registrar al pie de la letra la respuesta del examinado en cada intento, el puntaje por intento, el puntaje por ítem, y el puntaje bruto total del subtest</p>
                                        <p> - Siempre y cuando los números y las letras sean recordados en los órdenes especificados, considere aprobado el intento aunque el examinado empiece por las letras y siga con los números</p>
                                        <tr>
                                            <td align="center" bgcolor="#EFECEC">Correcto</td>
                                            <td align="left" bgcolor="#EFECEC">Intento</td>        
                                            <td align="left" bgcolor="#EFECEC">Secuencia</td>     
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>L - 2 (2 - l)</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>6 - P (6 - P)</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 C</td>
                                            <td>ccc</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>aaa</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>bbb</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 C</td>
                                            <td>ccc</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>aaa</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>bbb</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 C</td>
                                            <td>ccc</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>aaa</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>bbb</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 C</td>
                                            <td>ccc</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>aaa</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>bbb</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 C</td>
                                            <td>ccc</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>aaa</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>bbb</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 C</td>
                                            <td>ccc</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 A</td>
                                            <td>aaa</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 B</td>
                                            <td>bbb</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:10px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="100">
                                                </label>
                                            </td>
                                            <td>Intento 1 C</td>
                                            <td>ccc</td>
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