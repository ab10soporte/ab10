<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
                        <!--Panel de Legajo-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse0">Legajo</a>
                                </h4>
                            </div>
                            <div id="collapse0" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>Favor de seleccionar la evaluacion a la que le desee realizar el test</p>
                                    <div class="form-group">
                                        <select class="form-control" id="sellegajo">
                                            <option>Seleccione un legajo . . .</option>
                                            <c:forEach items="${evalList}" var="current">
                                                <option>${current.legajo} - <fmt:formatDate type = "date"  value = "${current.fecha}" /> - ${current.pacnombre}</option>
                                            </c:forEach>
                                        </select>
                                    </div>                                    
                                </div>
                            </div>
                        </div>

                        <!--Panel de Nota-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Nota</a>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse">
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
                                    <div class="panel-heading">Aplica a personas de mas de 45 años (Memoria)</div>
                                    <div class="panel-body">
                                        <div class="panel-group" id="accordionper45">
                                            <!--Aprendizaje de la lista A (5 ensayos): Recuerdo Inmediato-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper1">Aprendizaje de la lista A (5 ensayos): Recuerdo Inmediato</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper1" class="panel-collapse collapse">                                                    
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p><strong>Ensayo 1:</strong><i>“Supongamos que va a ir de compras el lunes. Le voy a leer una lista de las cosas que tiene que comprar. Escuche atentamente porque, cuando haya terminado de leerla, le voy a pedir que me repita todas las cosas de esa lista que pueda recordar, puede decirlas en cualquier orden pero ha de decir todas las que recuerde. ¿Ha comprendido bien lo que tiene que hacer?” </i>( <strong>Si no estoy seguro que comprendió le pregunto</strong><i> “que tiene que hacer”</i>, <strong>si esta ok</strong> <i>“preparado”</i>).</p>
                                                            <p>Una vez finalizada la lista <i>“ahora dígame las palabras que recuerde”</i>.</p> 
                                                            <p>Pregunta de evaluador (una vez por ensayo): decir <i>“¿Algo más?</i> o, <i>¿está seguro de que no recuerda ninguna más?”</i>, si el paciente añade una palabra se escribe (pr) a la izquierda de la primera de estas palabras.</p>
                                                            <li>Si el paciente pregunta si ya dijo la palabra se le dice: <i>“No le puedo contestar; ha de decidirlo usted mismo” </i></li>
                                                            <li>Si dice que le resulta difícil: <i>“Si, ya sé que es difícil. Pocas personas recuerdan todas las palabras. Pero vamos a ver cuántas consigue recordar usted”</i></li>
                                                            <li>Si pregunta cómo le va se le dice que se le dará un informe detallado de cómo lo está haciendo después</li>
                                                            </p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">N°</td>
                                                                <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                <!--Perseveracion-->
                                                                <td align="center" bgcolor="#EFECEC">P</td>
                                                                <!--Intrucion-->   
                                                                <td align="center" bgcolor="#EFECEC">I</td>        
                                                            </tr>
                                                            <tr>
                                                                <td align="center">1</td>
                                                                <td align="center">Taladro</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e1-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p1-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i1-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>                                                                                                                                                                                                
                                                            </tr>     
                                                            <tr>
                                                                <td align="center">2</td>
                                                                <td align="center">Limones</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e2-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p2-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i2-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">3</td>
                                                                <td align="center">Chaqueta</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e3-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p3-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i3-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">4</td>
                                                                <td align="center">Azafrán</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e4-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p4-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i4-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">5</td>
                                                                <td align="center">Uvas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e5-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p5-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i5-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">6</td>
                                                                <td align="center">Comino</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e6-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p6-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i6-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">7</td>
                                                                <td align="center">Medias</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e7-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p7-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i7-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">8</td>
                                                                <td align="center">Pala</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e8-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p8-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i8-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">9</td>
                                                                <td align="center">Laurel</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e9-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p9-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i9-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">10</td>
                                                                <td align="center">Mandarinas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e10-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p10-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i10-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">11</td>
                                                                <td align="center">Sierra</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e11-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p11-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i11-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">12</td>
                                                                <td align="center">Zapatos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e12-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p12-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i12-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">13</td>
                                                                <td align="center">Romero</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e13-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p13-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i13-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">14</td>
                                                                <td align="center">Ananás</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e14-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p14-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i14-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">15</td>
                                                                <td align="center">Tornillos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e15-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p15-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i15-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">16</td>
                                                                <td align="center">Guantes</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e16-e1" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p16-e1" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i16-e1" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            </tbody>
                                                        </table>                                           

                                                        <!--ENSAYO 2--> 
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p><strong>Ensayo 2:</strong><i>“voy a repetirle la lista de la compra del lunes, escuche atentamente porque, cuando haya terminado de leerla, le volveré a pedir que me repita todas las cosas que recuerde, en cualquier orden. Ha de decirme también todas las cosas que ya ha dicho la primera vez. ¿Preparado?”.</i>.</p>
                                                            <p>Al terminar la lectura <i> “ahora dígame todas las palabras que recuerde. No olvide decirme las que ya me ha dicho antes”</i>.</p>                           
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">N°</td>
                                                                <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                <td align="center" bgcolor="#EFECEC">Ensayo 2</td>
                                                                <!--Perseveracion-->
                                                                <td align="center" bgcolor="#EFECEC">P</td>
                                                                <!--Intrucion-->   
                                                                <td align="center" bgcolor="#EFECEC">I</td>        
                                                            </tr>
                                                            <tr>
                                                                <td align="center">1</td>
                                                                <td align="center">Taladro</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e1-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p1-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i1-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>                                                                                                                                                                                                
                                                            </tr>     
                                                            <tr>
                                                                <td align="center">2</td>
                                                                <td align="center">Limones</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e2-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p2-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i2-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">3</td>
                                                                <td align="center">Chaqueta</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e3-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p3-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i3-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">4</td>
                                                                <td align="center">Azafrán</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e4-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p4-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i4-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">5</td>
                                                                <td align="center">Uvas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e5-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p5-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i5-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">6</td>
                                                                <td align="center">Comino</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e6-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p6-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i6-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">7</td>
                                                                <td align="center">Medias</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e7-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p7-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i7-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">8</td>
                                                                <td align="center">Pala</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e8-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p8-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i8-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">9</td>
                                                                <td align="center">Laurel</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e9-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p9-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i9-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">10</td>
                                                                <td align="center">Mandarinas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e10-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p10-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i10-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">11</td>
                                                                <td align="center">Sierra</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e11-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p11-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i11-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">12</td>
                                                                <td align="center">Zapatos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e12-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p12-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i12-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">13</td>
                                                                <td align="center">Romero</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e13-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p13-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i13-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">14</td>
                                                                <td align="center">Ananás</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e14-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p14-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i14-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">15</td>
                                                                <td align="center">Tornillos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e15-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p15-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i15-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">16</td>
                                                                <td align="center">Guantes</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e16-e2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p16-e2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i16-e2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            </tbody>
                                                        </table>                                                                                                  
                                                        <!--ENSAYO 3 a 5 -->
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p><strong>Ensayo 3 a 5:</strong><i>“voy a repetirle la lista de compra del lunes. Escuche atentamente porque de nuevo, le pediré después que me diga todas las cosas que recuerde, en cualquier orden, y sin dejarse las que ya me ha dicho las veces anteriores ¿preparado?”.</i></p>
                                                            <p>Al terminar de leer la lista <i> “ahora dígame todas las palabras que recuerde. No olvide decirme las que ya me ha dicho antes”</i>.</p>                           
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">N°</td>
                                                                <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                <td align="center" bgcolor="#EFECEC">Ensayo 3</td>
                                                                <!--Perseveracion-->
                                                                <td align="center" bgcolor="#EFECEC">P</td>
                                                                <!--Intrucion-->   
                                                                <td align="center" bgcolor="#EFECEC">I</td>        
                                                            </tr>
                                                            <tr>
                                                                <td align="center">1</td>
                                                                <td align="center">Taladro</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e1-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p1-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i1-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>                                                                                                                                                                                                
                                                            </tr>     
                                                            <tr>
                                                                <td align="center">2</td>
                                                                <td align="center">Limones</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e2-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p2-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i2-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">3</td>
                                                                <td align="center">Chaqueta</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e3-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p3-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i3-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">4</td>
                                                                <td align="center">Azafrán</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e4-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p4-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i4-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">5</td>
                                                                <td align="center">Uvas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e5-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p5-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i5-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">6</td>
                                                                <td align="center">Comino</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e6-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p6-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i6-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">7</td>
                                                                <td align="center">Medias</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e7-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p7-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i7-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">8</td>
                                                                <td align="center">Pala</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e8-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p8-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i8-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">9</td>
                                                                <td align="center">Laurel</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e9-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p9-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i9-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">10</td>
                                                                <td align="center">Mandarinas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e10-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p10-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i10-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">11</td>
                                                                <td align="center">Sierra</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e11-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p11-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i11-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">12</td>
                                                                <td align="center">Zapatos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e12-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p12-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i12-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">13</td>
                                                                <td align="center">Romero</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e13-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p13-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i13-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">14</td>
                                                                <td align="center">Ananás</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e14-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p14-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i14-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">15</td>
                                                                <td align="center">Tornillos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e15-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p15-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i15-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">16</td>
                                                                <td align="center">Guantes</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e16-e3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p16-e3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i16-e3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>                                    
                                                            </tbody>
                                                        </table>                                                                      

                                                        <table class="table table-bordered" >
                                                            <tbody>                                          
                                                                <tr>
                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 4</td>
                                                                    <!--Perseveracion-->
                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                    <!--Intrucion-->   
                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">1</td>
                                                                    <td align="center">Taladro</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e1-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p1-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i1-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>                                                                                                                                                                                                
                                                                </tr>     
                                                                <tr>
                                                                    <td align="center">2</td>
                                                                    <td align="center">Limones</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e2-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p2-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i2-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">3</td>
                                                                    <td align="center">Chaqueta</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e3-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p3-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i3-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">4</td>
                                                                    <td align="center">Azafrán</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e4-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p4-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i4-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">5</td>
                                                                    <td align="center">Uvas</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e5-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p5-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i5-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">6</td>
                                                                    <td align="center">Comino</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e6-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p6-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i6-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">7</td>
                                                                    <td align="center">Medias</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e7-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p7-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i7-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">8</td>
                                                                    <td align="center">Pala</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e8-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p8-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i8-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">9</td>
                                                                    <td align="center">Laurel</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e9-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p9-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i9-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">10</td>
                                                                    <td align="center">Mandarinas</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e10-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p10-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i10-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">11</td>
                                                                    <td align="center">Sierra</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e11-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p11-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i11-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">12</td>
                                                                    <td align="center">Zapatos</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e12-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p12-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i12-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">13</td>
                                                                    <td align="center">Romero</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e13-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p13-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i13-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">14</td>
                                                                    <td align="center">Ananás</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e14-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p14-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i14-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">15</td>
                                                                    <td align="center">Tornillos</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e15-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p15-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i15-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">16</td>
                                                                    <td align="center">Guantes</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e16-e4" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p16-e4" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i16-e4" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr>                                     
                                                            </tbody>
                                                        </table>      

                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                                <tr>
                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 5</td>
                                                                    <!--Perseveracion-->
                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                    <!--Intrucion-->   
                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">1</td>
                                                                    <td align="center">Taladro</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e1-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p1-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i1-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>                                                                                                                                                                                                
                                                                </tr>     
                                                                <tr>
                                                                    <td align="center">2</td>
                                                                    <td align="center">Limones</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e2-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p2-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i2-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">3</td>
                                                                    <td align="center">Chaqueta</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e3-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p3-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i3-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">4</td>
                                                                    <td align="center">Azafrán</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e4-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p4-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i4-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">5</td>
                                                                    <td align="center">Uvas</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e5-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p5-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i5-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">6</td>
                                                                    <td align="center">Comino</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e6-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p6-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i6-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">7</td>
                                                                    <td align="center">Medias</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e7-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p7-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i7-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">8</td>
                                                                    <td align="center">Pala</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e8-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p8-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i8-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">9</td>
                                                                    <td align="center">Laurel</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e9-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p9-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i9-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">10</td>
                                                                    <td align="center">Mandarinas</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e10-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p10-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i10-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">11</td>
                                                                    <td align="center">Sierra</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e11-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p11-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i11-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">12</td>
                                                                    <td align="center">Zapatos</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e12-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p12-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i12-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">13</td>
                                                                    <td align="center">Romero</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e13-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p13-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i13-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">14</td>
                                                                    <td align="center">Ananás</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e14-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p14-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i14-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                                <tr>
                                                                    <td align="center">15</td>
                                                                    <td align="center">Tornillos</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e15-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p15-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i15-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">16</td>
                                                                    <td align="center">Guantes</td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <input type="checkbox" id="c-e16-e5" value="option1">
                                                                        </label>
                                                                    </td>
                                                                    <td align="center">
                                                                        <button type="button" id="b-p16-e5" class="btn btn-warning btn-sm">0</button>
                                                                    </td>
                                                                    <td align="center" style="height:30px" >
                                                                        <label class="checkbox-inline">
                                                                            <button type="button" id="b-i16-e5" class="btn btn-danger btn-sm">0</button>
                                                                        </label>
                                                                    </td>
                                                                </tr> 
                                                            </tbody>
                                                        </table>                                                            
                                                    </div>

                                                </div>
                                            </div>
                                            <!--Aprendizaje de la lista de interferencia (Lista B)-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper2">
                                                            Aprendizaje de la lista de interferencia (Lista B)</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p><i>“Supongamos ahora que va a ir a comprar también el martes.voy a leerle una nueva lista de cosas que tiene que comprar. Cuando haya terminado de leerla, le voy a pedir que me diga todas las que recuerde en cualquier orden. ¿Preparado/a?”</i> (Se repite el procedimiento del primer ensayo de A).</p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">N°</td>
                                                                <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                <!--Perseveracion-->
                                                                <td align="center" bgcolor="#EFECEC">P</td>
                                                                <!--Intrucion-->   
                                                                <td align="center" bgcolor="#EFECEC">I</td>        
                                                            </tr>
                                                            <tr>
                                                                <td align="center">1</td>
                                                                <td align="center">Espumadera</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e1-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p1-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i1-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>                                                                                                                                                                                                
                                                            </tr>     
                                                            <tr>
                                                                <td align="center">2</td>
                                                                <td align="center">Cerezas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e2-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p2-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i2-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">3</td>
                                                                <td align="center">Atún</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e3-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p3-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i3-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">4</td>
                                                                <td align="center">Albahaca</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e4-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p4-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i4-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">5</td>
                                                                <td align="center">Kiwis</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e5-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p5-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i5-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">6</td>
                                                                <td align="center">Batidora</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e6-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p6-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i6-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">7</td>
                                                                <td align="center">Ajo</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e7-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p7-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i7-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">8</td>
                                                                <td align="center">Merluza</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e8-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p8-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i8-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">9</td>
                                                                <td align="center">Pimentón</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e9-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p9-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i9-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">10</td>
                                                                <td align="center">Frutillas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e10-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p10-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i10-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">11</td>
                                                                <td align="center">Salmón</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e11-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p11-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i11-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">12</td>
                                                                <td align="center">Platos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e12-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p12-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i12-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">13</td>
                                                                <td align="center">Damascos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e13-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p13-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i13-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">14</td>
                                                                <td align="center">Trucha</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e14-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p14-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i14-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">15</td>
                                                                <td align="center">Orégano</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e15-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p15-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i15-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">16</td>
                                                                <td align="center">Cazuela</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e16-e1-t2" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p16-e1-t2" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i16-e1-t2" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>  
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Prueba de recuerdo libre a corto plazo (lista A)-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper3">
                                                            Prueba de recuerdo libre a corto plazo (lista A)</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p><i>“Ahora dígame todas las cosas que recuerde de la lista del lunes, la que le he leído cinco veces”</i></p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">N°</td>
                                                                <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                <!--Perseveracion-->
                                                                <td align="center" bgcolor="#EFECEC">P</td>
                                                                <!--Intrucion-->   
                                                                <td align="center" bgcolor="#EFECEC">I</td>        
                                                            </tr>
                                                            <tr>
                                                                <td align="center">1</td>
                                                                <td align="center">Taladro</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e1-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p1-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i1-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>                                                                                                                                                                                                
                                                            </tr>     
                                                            <tr>
                                                                <td align="center">2</td>
                                                                <td align="center">Limones</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e2-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p2-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i2-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">3</td>
                                                                <td align="center">Chaqueta</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e3-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p3-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i3-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">4</td>
                                                                <td align="center">Azafrán</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e4-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p4-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i4-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">5</td>
                                                                <td align="center">Uvas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e5-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p5-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i5-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">6</td>
                                                                <td align="center">Comino</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e6-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p6-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i6-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">7</td>
                                                                <td align="center">Medias</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e7-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p7-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i7-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">8</td>
                                                                <td align="center">Pala</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e8-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p8-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i8-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">9</td>
                                                                <td align="center">Laurel</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e9-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p9-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i9-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">10</td>
                                                                <td align="center">Mandarinas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e10-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p10-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i10-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">11</td>
                                                                <td align="center">Sierra</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e11-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p11-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i11-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">12</td>
                                                                <td align="center">Zapatos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e12-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p12-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i12-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">13</td>
                                                                <td align="center">Romero</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e13-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p13-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i13-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">14</td>
                                                                <td align="center">Ananás</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e14-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p14-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i14-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">15</td>
                                                                <td align="center">Tornillos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e15-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p15-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i15-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">16</td>
                                                                <td align="center">Guantes</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e16-e1-t3" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p16-e1-t3" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i16-e1-t3" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>    
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Prueba de recuerdo con claves semánticas a corto plazo (Lista A)-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionper45" href="#acoper4">
                                                            Prueba de recuerdo con claves semánticas a corto plazo (Lista A)</a>
                                                    </h4>
                                                </div>
                                                <div id="acoper4" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <p><i>“Dígame todas las cosas de la lista del lunes que son especias… ahora todas las que son herramientas… ahora todas las que son frutas… ahora todas las que son prendas de vestir”</i></p>
                                                        <li>Si no sabe lo que son las especias se le dice <i>“es lo que se le echa a la comida para darle sabor”</i></li>
                                                        <li>Concluido esto se anota la hora exacta </li>
                                                        <br/>
                                                        <br/>
                                                        <div class="nav-tabs-custom">
                                                            <ul class="nav nav-tabs">
                                                                <li class="active"><a href="#tab_1" data-toggle="tab">ESPECIAS</a></li>
                                                                <li><a href="#tab_2" data-toggle="tab">HERRAMIENTAS</a></li>
                                                                <li><a href="#tab_3" data-toggle="tab">FRUTAS</a></li>
                                                                <li><a href="#tab_4" data-toggle="tab">PRENDAS DE VESTIR</a></li>

                                                                <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                                                            </ul>

                                                            <!--Tabs-->
                                                            <div class="tab-content">
                                                                <div class="tab-pane active" id="tab_1">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Azafrán</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e4-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p4-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i4-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Comino</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e6-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p6-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i6-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Laurel</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e9-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p9-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i9-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Romero</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e13-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p13-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i13-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div class="tab-pane" id="tab_2">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Taladro</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e1-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p1-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i1-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>                                                                                                                                                                                                
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Pala</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e8-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p8-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i8-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Sierra</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e11-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p11-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i11-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Tornillos</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e15-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p15-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i15-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div class="tab-pane" id="tab_3">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Limones</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e2-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p2-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i2-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Uvas</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e5-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p5-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i5-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Mandarinas</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e10-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p10-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i10-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Ananás</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e14-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p14-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i14-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div class="tab-pane" id="tab_4">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Chaqueta</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e3-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p3-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i3-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Medias</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e7-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p7-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i7-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Zapatos</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e12-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p12-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i12-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Guantes</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e16-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p16-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i16-e1-t4" class="btn btn-danger btn-sm">0</button>
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
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>
                                <!--Consigna 2-->
                                <br/>
                                <div class=" panel panel-info">
                                    <div class="panel-heading">Aplicar pasados 20 min. de la primera parte</div>
                                    <div class="panel-body">
                                        <div class="panel-group" id="accordionpost20">
                                            <!--Prueba de recuerdo libre a largo plazo-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionpost20" href="#acopost1">Prueba de recuerdo libre a largo plazo</a>
                                                    </h4>
                                                </div>
                                                <div id="acopost1" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                            <p>Consigna:<i> “¿Recuerda la lista de la compra que le he leído antes? Me refiero a la lista del lunes, aquella que le he leído cinco veces. Repítame otra vez todas las cosas que pueda recordar de ella”.</i></p>
                                                            <tr>
                                                                <td align="center" bgcolor="#EFECEC">N°</td>
                                                                <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                <!--Perseveracion-->
                                                                <td align="center" bgcolor="#EFECEC">P</td>
                                                                <!--Intrucion-->   
                                                                <td align="center" bgcolor="#EFECEC">I</td>        
                                                            </tr>
                                                            <tr>
                                                                <td align="center">1</td>
                                                                <td align="center">Taladro</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e1-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p1-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i1-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>                                                                                                                                                                                                
                                                            </tr>     
                                                            <tr>
                                                                <td align="center">2</td>
                                                                <td align="center">Limones</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e2-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p2-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i2-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">3</td>
                                                                <td align="center">Chaqueta</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e3-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p3-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i3-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">4</td>
                                                                <td align="center">Azafrán</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e4-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p4-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i4-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">5</td>
                                                                <td align="center">Uvas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e5-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p5-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i5-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">6</td>
                                                                <td align="center">Comino</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e6-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p6-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i6-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">7</td>
                                                                <td align="center">Medias</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e7-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p7-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i7-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">8</td>
                                                                <td align="center">Pala</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e8-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p8-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i8-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">9</td>
                                                                <td align="center">Laurel</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e9-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p9-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i9-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">10</td>
                                                                <td align="center">Mandarinas</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e10-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p10-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i10-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">11</td>
                                                                <td align="center">Sierra</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e11-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p11-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i11-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">12</td>
                                                                <td align="center">Zapatos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e12-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p12-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i12-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">13</td>
                                                                <td align="center">Romero</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e13-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p13-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i13-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">14</td>
                                                                <td align="center">Ananás</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e14-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p14-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i14-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td align="center">15</td>
                                                                <td align="center">Tornillos</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e15-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p15-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i15-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">16</td>
                                                                <td align="center">Guantes</td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <input type="checkbox" id="c-e16-e1-t5" value="option1">
                                                                    </label>
                                                                </td>
                                                                <td align="center">
                                                                    <button type="button" id="b-p16-e1-t5" class="btn btn-warning btn-sm">0</button>
                                                                </td>
                                                                <td align="center" style="height:30px" >
                                                                    <label class="checkbox-inline">
                                                                        <button type="button" id="b-i16-e1-t5" class="btn btn-danger btn-sm">0</button>
                                                                    </label>
                                                                </td>
                                                            </tr>    
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Prueba de recuerdo con claves semánticas a largo plazo-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionpost20" href="#acopost2">
                                                            Prueba de recuerdo con claves semánticas a largo plazo</a>
                                                    </h4>
                                                </div>
                                                <div id="acopost2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <p>Consign: <i>“Dígame todas las cosas de la lista del lunes que son prendas de vestir…ahora las que son frutas… etc.”</i></p>
                                                        <br/>
                                                        <br/>
                                                        <div class="nav-tabs-custom">
                                                            <ul class="nav nav-tabs">
                                                                <li class="active"><a href="#tab_1a" data-toggle="tab">ESPECIAS</a></li>
                                                                <li><a href="#tab_2a" data-toggle="tab">HERRAMIENTAS</a></li>
                                                                <li><a href="#tab_3a" data-toggle="tab">FRUTAS</a></li>
                                                                <li><a href="#tab_4a" data-toggle="tab">PRENDAS DE VESTIR</a></li>

                                                                <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                                                            </ul>

                                                            <!--Tabs-->
                                                            <div class="tab-content">
                                                                <div class="tab-pane active" id="tab_1a">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Azafrán</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e4-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p4-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i4-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Comino</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e6-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p6-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i6-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Laurel</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e9-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p9-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i9-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Romero</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e13-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p13-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i13-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div class="tab-pane" id="tab_2a">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Taladro</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e1-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p1-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i1-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>                                                                                                                                                                                                
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Pala</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e8-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p8-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i8-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Sierra</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e11-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p11-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i11-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Tornillos</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e15-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p15-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i15-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div class="tab-pane" id="tab_3a">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Limones</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e2-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p2-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i2-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Uvas</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e5-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p5-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i5-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Mandarinas</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e10-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p10-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i10-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Ananás</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e14-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p14-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i14-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                                <div class="tab-pane" id="tab_4a">
                                                                    <div class="panel-body">
                                                                        <table class="table table-bordered" >
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td align="center" bgcolor="#EFECEC">N°</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Prod.</td>
                                                                                    <td align="center" bgcolor="#EFECEC">Ensayo 1</td>
                                                                                    <!--Perseveracion-->
                                                                                    <td align="center" bgcolor="#EFECEC">P</td>
                                                                                    <!--Intrucion-->   
                                                                                    <td align="center" bgcolor="#EFECEC">I</td>        
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">1</td>
                                                                                    <td align="center">Chaqueta</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e3-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p3-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i3-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">2</td>
                                                                                    <td align="center">Medias</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e7-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p7-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i7-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">3</td>
                                                                                    <td align="center">Zapatos</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e12-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p12-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i12-e1-t4" class="btn btn-danger btn-sm">0</button>
                                                                                        </label>
                                                                                    </td>
                                                                                </tr> 
                                                                                <tr>
                                                                                    <td align="center">4</td>
                                                                                    <td align="center">Guantes</td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <input type="checkbox" id="c-e16-e1-t4" value="option1">
                                                                                        </label>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <button type="button" id="b-p16-e1-t4" class="btn btn-warning btn-sm">0</button>
                                                                                    </td>
                                                                                    <td align="center" style="height:30px" >
                                                                                        <label class="checkbox-inline">
                                                                                            <button type="button" id="b-i16-e1-t4" class="btn btn-danger btn-sm">0</button>
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
                                                </div>
                                            </div>
                                            <!--Prueba de reconocimiento-->
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordionpost20" href="#acopost3">
                                                            Prueba de reconocimiento</a>
                                                    </h4>
                                                </div>
                                                <div id="acopost3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <div>
                                                            <p>Consigna: <i>“Voy a leerle una lista de cosas que se pueden comprar. Después de cada cosa, diga SI, si esa cosa estaba en la lista del lunes, y NO si no estaba en ella. ¿Preparado?”</i></p>
                                                        </div>
                                                        <table class="table table-bordered" >
                                                            <tbody>
                                                                <tr>
                                                                    <td align="center">M</td>
                                                                    <td align="center">S/N</td>                                    
                                                                    <td align="center">Mecedora</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Vitaminas</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Ajo</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Damasco</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                </tr>
                                                                <tr>                             
                                                                    <td align="center">Zapatos *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                    
                                                                    <td align="center">Pala *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Clavel</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Chaqueta</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Aspirinas</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>               
                                                                </tr>  
                                                                <tr>                             
                                                                    <td align="center">Orégano</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                    
                                                                    <td align="center">Mandarinas *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Uvas *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Alfombra</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Cartera</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                
                                                                </tr>
                                                                <tr>                             
                                                                    <td align="center">Merluza</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                    
                                                                    <td align="center">Cazuela *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Hilo</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Romero *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Tornillos *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                
                                                                </tr>
                                                                <tr>                             
                                                                    <td align="center">Reloj</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                 
                                                                    <td align="center">Frutillas</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Saco</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Guantes *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Batidora</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                
                                                                </tr>   
                                                                <tr>                             
                                                                    <td align="center">Jarra</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                  
                                                                    <td align="center">Bombones</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Limones *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Manzanas *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Tenazas</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>          
                                                                </tr>   
                                                                <tr>                             
                                                                    <td align="center"></td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                    
                                                                    <td align="center">Comino *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Truchas</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Palillos</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Laurel *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>            
                                                                </tr>
                                                                <tr>                             
                                                                    <td align="center"></td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                   
                                                                    <td align="center">Libros</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Azafrán *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Ananás *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Plumero</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                
                                                                </tr>    
                                                                <tr>                             
                                                                    <td align="center"></td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>                                  
                                                                    <td align="center">Taladro *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Silbato</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Sierra *</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>
                                                                    <td align="center">Jabón</td>
                                                                    <td>
                                                                        <form class="form">
                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2011" type="radio">SI
                                                                                </label>
                                                                                <label class="btn btn-default">
                                                                                    <input name="year" value="2012" type="radio">NO
                                                                                </label>
                                                                            </div>
                                                                        </form>
                                                                    </td>              
                                                                </tr>                            
                                                            </tbody>
                                                        </table>
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
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Detalle de la puntuacion</a>
                                </h4>
                            </div>
                            <div id="collapse5" class="panel-collapse collapse">
                                <div class="panel-body">                                    
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <td>01-RI-A1</td>
                                                <td align="right"><input type="number" id="01RIA1" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>--> 
                                                <td>02-RI-A5</td>
                                                <td align="right"><input type="number" id="02RIA5" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->
                                            </tr>                                          
                                            <tr>
                                                <td>03-RI-AT</td>
                                                <td align="right"><input type="number" id="03RIAT" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->  
                                                <td>04-RI-B</td>
                                                <td align="right"><input type="number" id="04RIB" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                   
                                                <!--<td align="center"><input type="text" size="4"></td>-->
                                            </tr>                                            
                                            <tr>
                                                <td>08-RL-CP</td>
                                                <td align="right"><input type="number" id="08RLCP" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                  
                                                <!--<td align="center"><input type="text" size="4"></td>-->  
                                                <td>09-RCI-CP</td>
                                                <td align="right"><input type="number" id="09RCICP" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->  
                                            </tr>                                           
                                            <tr>
                                                <td>10-RL-LP</td>
                                                <td align="right"><input type="number" id="10RLLP" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                  
                                                <!--<td align="center"><input type="text" size="4"></td>--> 
                                                <td>11-RCI-LP</td>
                                                <td align="right"><input type="number" id="11RCILP" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->
                                            </tr>                                           
                                            <tr>
                                                <td>20-P</td>
                                                <td align="right"><input type="number" id="20P" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->    
                                                <td>21-I-RL</td>
                                                <td align="right"><input type="number" id="21IRL" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                   
                                                <!--<td align="center"><input type="text" size="4"></td>-->
                                            </tr>                                            
                                            <tr>
                                                <td>22-I-RCI</td>
                                                <td align="right"><input type="number" id="22IRCI" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->  
                                                <td>23-Rec.Ac</td>
                                                <td align="right"><input type="number" id="23RecAc" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->
                                            </tr>                                            
                                            <tr>
                                                <td>24-FP</td>
                                                <td align="right"><input type="number" id="24FP" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                    
                                                <!--<td align="center"><input type="text" size="4"></td>-->   
                                                <td>25-Discrim:</td>
                                                <td align="right"><input type="number" id="25Discrim" min="0" max="50" class="form-control" value="0" style="text-align:center;"></td>                                   
                                                <!--<td align="center"><input type="text" size="4"></td>-->                                                                                                                               
                                            </tr>
                                        </tbody>                                    
                                    </table>                                    
                                    <div class="text-right">
                                        <!--<a href="weschler.html" class="btn btn-primary" >Finalizar</a>--> 
                                        <p>Para habilitar el boton debe seleccionar un legajo  </p>
                                        <button type="button" class="btn btn-primary disabled" id="idbtnsave">Finalizar</button>
                                    </div>

                                    <form action="tavec.htm" method=post name="callSave">
                                        <input type="hidden" name="action" value="1">
                                        <input type="hidden" name="userid" value="${requestScope.userid}">
                                        
                                        <input type="hidden" name="legajo" id="idlegajo">                                        
                                        <input type="hidden" name="01RIA1" id="id01RIA1">
                                        <input type="hidden" name="02RIA5" id="id02RIA5">
                                        <input type="hidden" name="03RIAT" id="id03RIAT">
                                        <input type="hidden" name="04RIB" id="id04RIB">
                                        <input type="hidden" name="08RLCP" id="id08RLCP">
                                        <input type="hidden" name="09RCICP" id="id09RCICP">
                                        <input type="hidden" name="10RLLP" id="id10RLLP">
                                        <input type="hidden" name="11RCILP" id="id11RCILP">
                                        <input type="hidden" name="20P" id="id20P">
                                        <input type="hidden" name="21IRL" id="id21IRL">
                                        <input type="hidden" name="22IRCI" id="id22IRCI">
                                        <input type="hidden" name="23RecAc" id="id23RecAc">
                                        <input type="hidden" name="24FP" id="id24FP">
                                        <input type="hidden" name="25Discrim" id="id25Discrim">

                                    </form>
                                </div>
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
            $(document).ready(function () {
                $('#sellegajo').change(function () {
                    // alert($('#sellegajo').val());
                    var leg = $("#sellegajo").val();
                    if (leg !== 'Seleccione un legajo . . .') {
                        $("#idbtnsave").removeClass("disabled");                       
                    } else {
                        $("#idbtnsave").addClass("disabled");
                    }
                });
            });

            // Boton de grabado
            $('#idbtnsave').click(function () {
                if ($(this).hasClass('disabled')) {
                    return false;
                } else {
                    // Cargo el form 
                    $("#idlegajo").val($("#sellegajo").val());
                    $("#id01RIA1").val($("#01RIA1").val());
                    $("#id02RIA5").val($("#02RIA5").val());
                    $("#id03RIAT").val($("#03RIAT").val());
                    $("#id04RIB").val($("#04RIB").val());
                    $("#id08RLCP").val($("#08RLCP").val());
                    $("#id09RCICP").val($("#09RCICP").val());
                    $("#id10RLLP").val($("#10RLLP").val());
                    $("#id11RCILP").val($("#11RCILP").val());
                    $("#id20P").val($("#20P").val());
                    $("#id21IRL").val($("#21IRL").val());
                    $("#id22IRCI").val($("#22IRCI").val());
                    $("#id23RecAc").val($("#23RecAc").val());
                    $("#id24FP").val($("#24FP").val());
                    $("#id25Discrim").val($("#25Discrim").val());
                    
                    // Lo envio
                    document.callSave.submit();
                }                
            });

            // Incrementa cada perseverancia del ensayo 1
            $('#b-p1-e1').click(function () {
                $('#b-p1-e1').html(parseInt($('#b-p1-e1').text()) + 1);
            });
            $('#b-p2-e1').click(function () {
                $('#b-p2-e1').html(parseInt($('#b-p2-e1').text()) + 1);
            });
            $('#b-p3-e1').click(function () {
                $('#b-p3-e1').html(parseInt($('#b-p3-e1').text()) + 1);
            });
            $('#b-p4-e1').click(function () {
                $('#b-p4-e1').html(parseInt($('#b-p4-e1').text()) + 1);
            });
            $('#b-p5-e1').click(function () {
                $('#b-p5-e1').html(parseInt($('#b-p5-e1').text()) + 1);
            });
            $('#b-p6-e1').click(function () {
                $('#b-p6-e1').html(parseInt($('#b-p6-e1').text()) + 1);
            });
            $('#b-p7-e1').click(function () {
                $('#b-p7-e1').html(parseInt($('#b-p7-e1').text()) + 1);
            });
            $('#b-p8-e1').click(function () {
                $('#b-p8-e1').html(parseInt($('#b-p8-e1').text()) + 1);
            });
            $('#b-p9-e1').click(function () {
                $('#b-p9-e1').html(parseInt($('#b-p9-e1').text()) + 1);
            });
            $('#b-p10-e1').click(function () {
                $('#b-p10-e1').html(parseInt($('#b-p10-e1').text()) + 1);
            });
            $('#b-p11-e1').click(function () {
                $('#b-p11-e1').html(parseInt($('#b-p11-e1').text()) + 1);
            });
            $('#b-p12-e1').click(function () {
                $('#b-p12-e1').html(parseInt($('#b-p12-e1').text()) + 1);
            });
            $('#b-p13-e1').click(function () {
                $('#b-p13-e1').html(parseInt($('#b-p13-e1').text()) + 1);
            });
            $('#b-p14-e1').click(function () {
                $('#b-p14-e1').html(parseInt($('#b-p14-e1').text()) + 1);
            });
            $('#b-p15-e1').click(function () {
                $('#b-p15-e1').html(parseInt($('#b-p15-e1').text()) + 1);
            });
            $('#b-p16-e1').click(function () {
                $('#b-p16-e1').html(parseInt($('#b-p16-e1').text()) + 1);
            });


            // Incrementa todas las i del ensayo 1
            $('#b-i1-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i2-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i3-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i4-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i5-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i6-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i7-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i8-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i9-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i10-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i11-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i12-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i13-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i14-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i15-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
            $('#b-i16-e1').click(function () {
                $('#b-i1-e1').html(parseInt($('#b-i1-e1').text()) + 1);
                $('#b-i2-e1').html(parseInt($('#b-i2-e1').text()) + 1);
                $('#b-i3-e1').html(parseInt($('#b-i3-e1').text()) + 1);
                $('#b-i4-e1').html(parseInt($('#b-i4-e1').text()) + 1);
                $('#b-i5-e1').html(parseInt($('#b-i5-e1').text()) + 1);
                $('#b-i6-e1').html(parseInt($('#b-i6-e1').text()) + 1);
                $('#b-i7-e1').html(parseInt($('#b-i7-e1').text()) + 1);
                $('#b-i8-e1').html(parseInt($('#b-i8-e1').text()) + 1);
                $('#b-i9-e1').html(parseInt($('#b-i9-e1').text()) + 1);
                $('#b-i10-e1').html(parseInt($('#b-i10-e1').text()) + 1);
                $('#b-i11-e1').html(parseInt($('#b-i11-e1').text()) + 1);
                $('#b-i12-e1').html(parseInt($('#b-i12-e1').text()) + 1);
                $('#b-i13-e1').html(parseInt($('#b-i13-e1').text()) + 1);
                $('#b-i14-e1').html(parseInt($('#b-i14-e1').text()) + 1);
                $('#b-i15-e1').html(parseInt($('#b-i15-e1').text()) + 1);
                $('#b-i16-e1').html(parseInt($('#b-i16-e1').text()) + 1);
            });
        </script>

    </body>
</html>