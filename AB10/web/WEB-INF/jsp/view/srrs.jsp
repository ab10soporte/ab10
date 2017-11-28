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
                        <small>SRRS</small>
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
                                    <p>Se debe permitir al paciente que realice este test en presencia del profecional</p>
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
                                    <p>Se recomienda la evaluacion no dure mas de 10 minutos</p>
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
                                    <p>La misma se va acumulando de acuerdo a lo tildado en cada opcion y se muestra sumarisado al final del ejercicio</p>                                    
                                                                        
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
                                    <table class="table table-bordered" >
                                        <tbody>
                                        <p><strong>Enunciado:</strong> Favor de tildar el enunciado correspondiente si usted a vivido alguno de estos episocidios en los ultimos <strong>12 meses</strong>  </p>
                                        <tr>
                                            <td align="center" bgcolor="#EFECEC">Correcto</td>
                                            <td align="center" bgcolor="#EFECEC">Enunciado</td>                                                                                                                                   
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck1" value="100">
                                                </label>
                                            </td>
                                            <td>Muerte de un esposo</td>                                                                                                                                                                                        
                                        </tr>     
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck2" value="73">
                                                </label>
                                            </td>
                                            <td>Divorcio</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck3" value="65">
                                                </label>
                                            </td>
                                            <td>Separacion marital</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck4" value="63">
                                                </label>
                                            </td>
                                            <td>Condena de carcel</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck5" value="63">
                                                </label>
                                            </td>
                                            <td>Muertede unmiembre de la familia</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck6" value="53">
                                                </label>
                                            </td>
                                            <td>Daños corporales o enfermedad</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck7" value="50">
                                                </label>
                                            </td>
                                            <td>Casamiento</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck8" value="47">
                                                </label>
                                            </td>
                                            <td>Despido de trabajo</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck9" value="45">
                                                </label>
                                            </td>
                                            <td>Reconciliacion marital</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck10" value="45">
                                                </label>
                                            </td>
                                            <td>Retiro</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck11" value="45">
                                                </label>
                                            </td>
                                            <td>Cambio de salus de un miembro de la familia</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck12" value="40">
                                                </label>
                                            </td>
                                            <td>Embarazo</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck13" value="39">
                                                </label>
                                            </td>
                                            <td>Dificultades en la actividad sexual</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck14" value="39">
                                                </label>
                                            </td>
                                            <td>Adqusicion de un nuevo miembro en la familia</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck15" value="39">
                                                </label>
                                            </td>
                                            <td>Reajuste de negocio</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck16" value="38">
                                                </label>
                                            </td>
                                            <td>Cambio de estado financiero</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck17" value="37">
                                                </label>
                                            </td>
                                            <td>Muerte de un amigo cercano</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck18" value="36">
                                                </label>
                                            </td>
                                            <td>Cambio de rubro en el trabajo</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck19" value="35">
                                                </label>
                                            </td>
                                            <td>Cambio en el n°. de discuciones con el esposo</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck20" value="31">
                                                </label>
                                            </td>
                                            <td>Hipoteca que exceda $50000</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck21" value="30">
                                                </label>
                                            </td>
                                            <td>Ejecucin de una hipoteca</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck22" value="29">
                                                </label>
                                            </td>
                                            <td>Cambio en las responsabilidades del trabajo</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck23" value="29">
                                                </label>
                                            </td>
                                            <td>Hijo/a que sale del hogar</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck24" value="29">
                                                </label>
                                            </td>
                                            <td>Problemas con familiares politicos</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck25" value="28">
                                                </label>
                                            </td>
                                            <td>Logors personales excepcionales</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck26" value="26">
                                                </label>
                                            </td>
                                            <td>La esposa comienza o deja le trabajo</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck27" value="26">
                                                </label>
                                            </td>
                                            <td >Comienza o termina la escuela</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck28" value="25">
                                                </label>
                                            </td>
                                            <td >Cambio en condiciones de vida</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck29" value="24">
                                                </label>
                                            </td>
                                            <td >Revision de los habitos personales</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck30" value="23">
                                                </label>
                                            </td>
                                            <td >Problemas con el jefe</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck31" value="20">
                                                </label>
                                            </td>
                                            <td >Cambios sobre horas o condiciones de trabajo</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck32" value="22">
                                                </label>
                                            </td>
                                            <td >Camibo en la resdencia</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck33" value="20">
                                                </label>
                                            </td>
                                            <td >Cambio de escuela</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck34" value="19">
                                                </label>
                                            </td>
                                            <td >Cambios en actividades recreativas</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck35" value="19">
                                                </label>
                                            </td>
                                            <td >Cambios en actividades religiosas</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck36" value="18">
                                                </label>
                                            </td>
                                            <td >Cambio en actividades sociales</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck37" value="17">
                                                </label>
                                            </td>
                                            <td >Prestamo menos $50000</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck38" value="16">
                                                </label>
                                            </td>
                                            <td >Cambio en habitos al dormir</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck39" value="15">
                                                </label>
                                            </td>
                                            <td >Cambio en el n°. de la familia buscado juntos</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck40" value="15">
                                                </label>
                                            </td>
                                            <td >Cambios en habitos de comer</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck41" value="13">
                                                </label>
                                            </td>
                                            <td >Vacaciones</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck42" value="12">
                                                </label>
                                            </td>
                                            <td >Dias de fiestas</td>                                                                                                                                                                                        
                                        </tr>
                                        <tr>
                                            <td align="center" style="height:30px" >
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="ck43" value="11">
                                                </label>
                                            </td>
                                            <td >Violacion de menor importancia delas leyes</td>                                                                                                                                                                                        
                                        </tr>
                                                                                
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Calcula la puntuacion de ser necesario-->
                                <div class="panel-body">                                             
                                    <!--<button type="button" class="btn btn-primary">Calcular Puntuación</button>-->  
                                    <div class="form-inline text-right">
                                        <label>Punt. total</label>
                                        <!--<input class="form-control disabled" id="total" type="text" placeholder="" value="0" >-->
                                        <label id="total">0000</label>
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
             $('#ck1').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck2').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck3').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck4').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck5').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck6').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck7').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck8').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck9').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck10').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck11').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck12').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck13').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck14').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck15').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck16').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck17').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck18').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck19').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck20').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck21').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck22').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck23').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck24').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck25').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck26').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck27').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck28').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck29').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck30').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck31').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck32').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck33').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck34').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck35').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck36').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck37').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck38').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck39').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck40').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck41').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck42').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            $('#ck43').change(function () {
                if ($(this).is(':checked')) {
                    updateVal($(this).val());
                } else {
                    updateVal(-$(this).val());
                }
            });
            
            
            function updateVal(x) {
                var t = parseInt($('#total').text()) + parseInt(x);
                if (t < 10) {
                    $('#total').html("000" + t);
                } else if (t < 100 && t >= 10) {
                    $('#total').html("00" + t);
                } else if (t < 1000 && t >= 100) {
                    $('#total').html("0" + t);
                    if (t >= 9999) {
                        $('#total').html("0000");
                    }
                }
            }
            
        </script>

    </body>
</html>