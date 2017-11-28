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
                        <small>Weschler IT2</small>
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
                                    <div class=" panel panel-info">
                                        <div class="panel-heading">Iteracion numero 2</div>
                                        <div class="panel-body">
                                            <div class="panel-group" id="acIt1">
                                                <!--Panel de Texto-->
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#acIt1" href="#acIt1Coll1">Texto 2</a>
                                                        </h4>
                                                    </div>
                                                    <div id="acIt1Coll1" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <div class="panel-group" id="acIt1N1"> <!-- Mi Acordeon -->
                                                                <!--Panel de Texto A-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N1" href="#acIt1N1Coll1">Texto A</a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N1Coll1" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-info">
                                                                                <div class="panel-heading">Consigna</div>
                                                                                <div class="panel-body">
                                                                                    <em>
                                                                                        <p>Voy a leerle una historia. Escuche atentamente y trate de recordarla tal y como yo se la cuento, con las mismas palabras. Cuando termine, le pediré que me repita todo lo que yo he leído. Deberá decirme todo lo que recuerde, incluso aquello de lo que no está seguro. ¿Está preparado?”.</p>
                                                                                        <p>Cuando se termina de leer la historia diga “Cuénteme todo lo que recuerde de la historia que acabo de leer. Comience por el principio”.</p>
                                                                                        <p>Si el examinado duda o se queda parado cuando se le pide que recuerde las historias, se le puede ayudar diciendo: “Dígame las cosas que recuerde” o “¿qué es lo primero que paso?” o “que ocurrió después”.</p>
                                                                                    </em>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Texto</div>
                                                                                <div class="panel-body"><strong>Ana López, de Alta Córdoba, empleada como cocinera en la cafetería de una empresa, denunció en la seccional de la policia que había sido asaltada la noche anterior frente al número 56 de la calle Colón y que le habían robado su dinero. Tenía cuatro niños pequeños, no había podido pagar el alquiler y llevaba dos días sin comer. La policía, conmovida por la historia de la mujer, realizó una colecta para ayudarla.</div>
                                                                                </strong>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="warning">Texto A</th>
                                                                                                <th class="warning">Unidad</th>
                                                                                                <th class="warning">Tema</th>
                                                                                                <th class="warning">Criterio de Puntuación</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>Ana</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Ana, o una variante del Nombre.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>López</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige López.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>de Alta</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>de Alta (en cualquier contexto).</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Córdoba</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Córdoba (en cualquier contexto).</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de un protagonista femenino.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>empleada</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que tiene  un trabajo.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>cocinera</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Cocinera u otra palabra similar.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>en la cafetería</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige cafetería.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>de una empresa</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige empresa.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que la protagonista está trabajando.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>denunció</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que ha presentado una demanda oficial ante la autoridad, en cualquier contexto.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>en la seccional</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>en la secciona sinónima, en cualquier cotexto.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>de policía</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Policía (en cualquier contexto).</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>había sido asaltada</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de asaltó, atraco, amenaza con arma, etc.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>la noche anterior</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que el atraco se produjo la noche anterior.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>frente al número 56</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Número comprendido entre 49 y 60.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>calle Colón</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Calle Colón (en cualquier contexto).</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>robado su dinero</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que le robaron.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que habían robado a la protagonista.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Tenía cuatro</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige el número 4 y la idea de que los niños eran suyos.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>niños pequeños</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige niño o algún sinónimo.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que la protagonista tenía hijos pequeños.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>no había podido pagar el alquiler</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Cualquier frase que refleje esta idea.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>llevaban dos días</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige la indicación de dos días o duración similar.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>sin comer</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que la familia estaba sin comer.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">indicación de que los protagonistas estaban necesitados de ayuda.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>La policía</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Palabra o frase que signifique uno o mas miembros de la policia, en cualquier contexto. </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>conmovida por la historia</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>indicación de que la historia provocó simpatía y emoción.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que a policía se conmovió con la historia de la mujer.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>realizó una colecta</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Cuaquier frase que indique la recogida de dinero.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>para ayudarla</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que el dinero era para la mujer o los niños.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que la policía ayudó a la mujer.</td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                    <hr>              
                                                                                </div>
                                                                                <hr>
                                                                            </div>
                                                                            <!-- panel panel-primary-->
                                                                            <div class="panel-body">                                             
                                                                                <button type="button" class="btn btn-primary">Calcular Puntuación</button>                                                                      
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--Panel de Texto B 1° Recuerdo-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N1" href="#acIt1N1Coll2">Texto B 1° Recuerdo </a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N1Coll2" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-info">
                                                                                <div class="panel-heading">Consigna</div>
                                                                                <div class="panel-body">
                                                                                    <em>
                                                                                        <p>1 ensayo: Le voy a leer otra historia. Escuche con atención e intente recordarla tal cual
                                                                                            yo se la digo, la mayor cantidad de detalles que pueda.
                                                                                        </p>
                                                                                        <p>Luego de leerla decir “Dígame todo lo que recuerde, empezando desde el inicio”.</p>
                                                                                        <br>
                                                                                        <p>2 ensayo: Ahora le voy a leer la historia nuevamente. Quiero que intente recordar la mayor cantidad de detalles que pueda.</p>
                                                                                        <p>Luego de leerla decir “Dígame todo lo que recuerde, empezando desde el inicio”.</p>
                                                                                        <br>
                                                                                        <p>Al terminar: “Quiere que recuerdes estas historias porque te las voy a volver a preguntar más adelante”</p>
                                                                                    </em>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Texto</div>
                                                                                <div class="panel-body"><strong> A las 8 de la tarde del viernes, Juan Francisco Rodriguez escuchaba la radio mientras preparaba su maleta para viajar. Una noticia llamó su atención: se había producido un accidente en la pista número 2 del aeropuerto de su ciudad. El locutor informaba que no se habían producido víctimas, aunque al menos 15 personas estaban siendo atendidas. El incidente estaba provocando entre 4 y 5 horas de retraso en todos los vuelos internacionales. Juan decidió aplazar su viaje. Llamó a la compañía y reservo un vuelo para la mañana siguiente.
                                                                                    </strong>
                                                                                </div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="warning">Texto B</th>
                                                                                                <th class="warning">Unidad</th>
                                                                                                <th class="warning">Tema</th>
                                                                                                <th class="warning">Criterio de Puntuación</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>A las ocho</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige la hora exacta.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>de la tarde</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Tarde (en cualquier contexto).</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>del viernes</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige citar el viernes.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Juan</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Juan o una variante del nombre.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Francisco</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Francisco o una variante del nombre.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Rodriguez</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige citar el apellido.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de un personaje principal masculino.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>escuchaba la radio</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que estaba oyendo la radio.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>mientras preparaba la maleta</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de preparar la maleta.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>para viajar</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que pensaba ir de viaje.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que el protagonista pensaba marcharse.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Una noticia</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que había una información.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>llamó su atención</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que captó su interés.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que surge una noticia.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>se había producido un accidente</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de la existencia de un accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>en la pista número 2</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Debe aparecer el número de la pista.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>del aeropuerto de su ciudad</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación del lugar del accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que se ha producido un accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>el locutor informaba</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que alguien estaba dando la noticia.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>que no se habían producido víctimas</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que no había habido muertos.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>aunque al menos 15 personas estaban siendo atendidas</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Mencionar el número de 15 personas heridas o afectadas.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>el accidente estaba provocando</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de las consecuencias.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>entre 4 y 5 horas de retraso</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Deben mencionarse las 4 o 5 horas de retraso.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>en todos los vuelos</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se debe mencionar todos.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>internacionales</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Deben citarse los vuelos internacionales.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de los retrasos debido al accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Juan decidió aplazar su viaje</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación del aplazamiento.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación del cambio de planes del personaje.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>llamó a la compañía</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que se puso en contacto con la compañía.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>y reservó un vuelo</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que se hizo una reserva.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>para la mañana siguiente</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se debe mencionar la mañana siguiente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que el personaje cambio su vuelo.</td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                    <hr>              
                                                                                </div>
                                                                                <hr>
                                                                            </div>
                                                                            <!-- panel panel-primary-->
                                                                            <div class="panel-body">                                             
                                                                                <button type="button" class="btn btn-primary">Calcular Puntuación</button>                                                                      
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--Panel de Texto B 2° Recuerdo-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N1" href="#acIt1N1Coll3">Texto B 2° Recuerdo </a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N1Coll3" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Texto</div>
                                                                                <div class="panel-body"><strong> A las 8 de la tarde del viernes, Juan Francisco Rodriguez escuchaba la radio mientras preparaba su maleta para viajar. Una noticia llamó su atención: se había producido un accidente en la pista número 2 del aeropuerto de su ciudad. El locutor informaba que no se habían producido víctimas, aunque al menos 15 personas estaban siendo atendidas. El incidente estaba provocando entre 4 y 5 horas de retraso en todos los vuelos internacionales. Juan decidió aplazar su viaje. Llamó a la compañía y reservo un vuelo para la mañana siguiente.
                                                                                    </strong>
                                                                                </div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="warning">Texto B</th>
                                                                                                <th class="warning">Unidad</th>
                                                                                                <th class="warning">Tema</th>
                                                                                                <th class="warning">Criterio de Puntuación</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>A las ocho</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige la hora exacta.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>de la tarde</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Tarde (en cualquier contexto).</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>del viernes</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige citar el viernes.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Juan</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Juan o una variante del nombre.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Francisco</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Francisco o una variante del nombre.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Rodriguez</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se exige citar el apellido.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de un personaje principal masculino.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>escuchaba la radio</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que estaba oyendo la radio.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>mientras preparaba la maleta</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de preparar la maleta.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>para viajar</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que pensaba ir de viaje.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que el protagonista pensaba marcharse.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Una noticia</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que había una información.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>llamó su atención</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que captó su interés.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que surge una noticia.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>se había producido un accidente</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de la existencia de un accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>en la pista número 2</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Debe aparecer el número de la pista.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>del aeropuerto de su ciudad</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación del lugar del accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que se ha producido un accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>el locutor informaba</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que alguien estaba dando la noticia.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>que no se habían producido víctimas</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que no había habido muertos.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>aunque al menos 15 personas estaban siendo atendidas</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Mencionar el número de 15 personas heridas o afectadas.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>el accidente estaba provocando</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de las consecuencias.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>entre 4 y 5 horas de retraso</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Deben mencionarse las 4 o 5 horas de retraso.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>en todos los vuelos</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se debe mencionar todos.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>internacionales</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Deben citarse los vuelos internacionales.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de los retrasos debido al accidente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Juan decidió aplazar su viaje</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación del aplazamiento.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación del cambio de planes del personaje.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>llamó a la compañía</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que se puso en contacto con la compañía.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>y reservó un vuelo</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Indicación de que se hizo una reserva.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>para la mañana siguiente</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>Se debe mencionar la mañana siguiente.</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td bgcolor="DCDCDC"></td>
                                                                                                <td bgcolor="#808080"></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td bgcolor="DCDCDC">Indicación de que el personaje cambio su vuelo.</td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                    <hr>
                                                                                    <div class="panel-body">                                             
                                                                                        <button type="button" class="btn btn-primary">Calcular Puntuación</button>                                                                      
                                                                                    </div>
                                                                                </div>
                                                                                <!-- /.container-fluid -->
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--Panel de Detalle de la puntuacion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N1" href="#acIt1N1Coll4">Detalle de la puntuacion </a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N1Coll4" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">CÁLCULO DE LA PUNTUACIÓN TOTAL PARA EL TEXTO A</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-2">
                                                                                        <label>Punt. de unidades (máxima=25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-2">
                                                                                        <label>Punt. de temas (máxima 7)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">CÁLCULO DE LA PUNTUACIÓN TOTAL PARA EL TEXTO B</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-2">
                                                                                        <label>Punt. de unidades (máxima=25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-2">
                                                                                        <label>Punt. de temas (máxima 7)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">CÁLCULO DE LA PUNTUACIÓN TOTAL PARA EL 1° RECUERDO</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de unidades - Texto A (máxima=25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de unidades Texto B (máxima=25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-2">
                                                                                        <label>Punt. Total (máxima=50)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">CÁLCULO DE LA PUNTUACIÓN TEXTO B PARA EL 2° RECUERDO</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de unidades (máxima=25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de temas (máxima=7)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">PUNTUACIÓN TOTAL DE RECUERDO (Suma de los 3 textos)</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de unidades (máxima=75)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de temas (máxima=21)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">CÁLCULO PENDIENTE DE APRENDIZAJE</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de unidades Texto B 2° Rec. (máxima=25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <label>Punt. de unidades Texto B 1° Rec. (máxima=25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <label>Pendiente de aprendizaje. (entre -25 y +25)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="panel-body">                                             
                                                                                <a href="weschler.html"  class="btn btn-primary">Finalizar</a>            
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Panel de Caras-->
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#acIt1" href="#acIt1Coll2">Caras 2</a>
                                                        </h4>
                                                    </div>
                                                    <div id="acIt1Coll2" class="panel-collapse collapse">
                                                        <div class="panel-body">                                                            
                                                            <div class="panel-group" id="acIt1N2"> <!-- Mi Acordeon -->
                                                                <!--Panel de Descripcion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N2" href="#acIt1N2Coll1">Descripcion</a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N2Coll1" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-info">
                                                                                <div class="panel-heading">Consigna</div>
                                                                                <div class="panel-body">
                                                                                    <em>
                                                                                        El examinador presenta una serie de fotografías de caras (en total 24), de una en una, y dice al sujeto que debe tratar de recordarlas todas. 
                                                                                        <p>A continuación se muestra al sujeto otra serie de fotografías (48), también de una en una, y se le pide que recuerde si la cara se había mostrado ya en la primera serie o es una nueva.</p>
                                                                                        <p>“Le voy a mostrar algunas fotografías con caras. Intente prestar atención e intentar recordarlas”.</p>
                                                                                        <p>Luego de mostrar todas las caras decir “Ahora le voy a mostrar algunas fotografías.  Necesito que responda SI, si la fotografía corresponde a algunas de las ya vistas, que le he pedido que recuerde o NO, si no corresponde a las mismas”.</p>
                                                                                        <p>El sujeto debe contestar “si” o “no” en cada uno de los 48 elementos de reconocimiento.</p>
                                                                                        <p>Si el sujeto no contesta nada, dígale “trate de adivinarlo aunque no esté seguro”.</p>
                                                                                    </em>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Caras (I)</div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="warning">Elem.</th>
                                                                                                <th class="warning">Resuesta</th>
                                                                                                <th class="warning">Puntuación</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>1</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>2</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>3</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>4</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>5</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>6</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>7</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>8</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>9</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>10</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>11</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>12</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>13</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>14</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>15</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>16</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>17</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>18</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>19</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>20</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>21</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>22</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>23</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>24</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>25</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>26</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>27</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>28</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>29</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>30</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>31</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>32</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>33</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>34</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>35</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>36</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>37</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>38</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>39</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>40</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>41</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>42</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>43</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>44</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>45</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>46</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>47</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>48</td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">Sí
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">No
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                            </div>
                                                                            <!-- panel panel-primary-->
                                                                            <div class="panel-body">                                             
                                                                                <button type="button" class="btn btn-primary">Calcular Puntuación</button>                                                                      
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <!--Panel de Detalle de la puntuacion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N2" href="#acIt1N2Coll2">Detalle de la puntuacion </a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N2Coll2" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">PUNTUACIÓN TOTAL RECONOCIMIENTO</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-2">
                                                                                        <label>Punt. Total  (máxima=48)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
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
                                                <!--Panel de Pareja de Palabras-->
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#acIt1" href="#acIt1Coll3">Pareja de Palabras 2</a>
                                                        </h4>
                                                    </div>
                                                    <div id="acIt1Coll3" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <div class="panel-group" id="acIt1N3"> <!-- Mi Acordeon -->
                                                                <!--Panel de Descripcion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N3" href="#acIt1N3Coll1">Descripcion</a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N3Coll1" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-info">
                                                                                <div class="panel-heading">Consigna</div>
                                                                                <div class="panel-body">
                                                                                    <em>
                                                                                        Se lee una lista de 8 pares de palabras. 
                                                                                        <p>A continuación se lee la primera palabra de cada pareja y se pide al examinado que diga la palabra asociada en los cuatro intentos.</p>
                                                                                        <p>Voy a decirle una palabra seguida de otra que va con ella, es decir, forman una pareja.</p>
                                                                                        <p>Luego le diré una lista de parejas de palabras como esa. Escuche atentamente, porque cuando termine le diré la primera palabra de una pareja y usted tendrá que decirme la palabra que va con ella. Por ejemplo, si las parejas fueran fruta-oeste, oro-moro, cuando yo le diga fruta, ud deberá contestar (pausa) oeste, y cuando diga oro, usted deberá contestar (pausa) mono. ¿Entiende lo que tiene que hacer?</p>
                                                                                        <ul style="list-style-type:circle">
                                                                                            <li>Si el examinado repite la pareja de palabras al tiempo que usted las dice en alto, interrúmpale y explíquele que espere a que termine de decirlas todas.</li>
                                                                                            <li>Al terminar pedirle que las recuerde porque se le van a volver a preguntar</li>
                                                                                        </ul>
                                                                                    </em>
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Pareja de palabras (I)</div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="warning">Lista A</th>
                                                                                                <th class="warning">Intento 1 </th>
                                                                                                <th class="warning">Respuesta</th>
                                                                                                <th class="warning">Puntos</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>Camión-Flecha</td>
                                                                                                <td>1-Banco (vela)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Bebé-Nuez</td>
                                                                                                <td>2-Reptil (payaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Reptil-Payaso</td>
                                                                                                <td>3-Luna (flor)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Banco-Vela</td>
                                                                                                <td>4-Rosa (fruta)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Luna-Flor</td>
                                                                                                <td>5-Caballo (vaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Ratón-Papel</td>
                                                                                                <td>6-Camión (flecha)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Rosa-Fruta</td>
                                                                                                <td>7-Bebé (nuez)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Caballo-Vaso</td>
                                                                                                <td>8-Ratón (papel)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="success">Lista B</th>
                                                                                                <th class="success">Intento 2 </th>
                                                                                                <th class="success">Respuesta</th>
                                                                                                <th class="success">Puntos</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>Luna-Flor</td>
                                                                                                <td>1-Caballo (vaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Caballo-Vaso</td>
                                                                                                <td>2-Bebé (nuez)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Bebé-Nuez</td>
                                                                                                <td>3-Reptil (payaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Camión-Flecha</td>
                                                                                                <td>4-Rosa (fruta)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Reptil-Payaso</td>
                                                                                                <td>5-Luna (flor)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Banco-Vela</td>
                                                                                                <td>6-Rosa (fruta)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Ratón-Papel</td>
                                                                                                <td>7-Banco (vela)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Rosa-Fruta</td>
                                                                                                <td>8-Camión (flecha)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="info">Lista C</th>
                                                                                                <th class="info">Intento 3 </th>
                                                                                                <th class="info">Respuesta</th>
                                                                                                <th class="info">Puntos</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>Rosa-Fruta</td>
                                                                                                <td>1-Bebé (nuez)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Ratón-Papel</td>
                                                                                                <td>2-Luna (flor)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Luna-Flor</td>
                                                                                                <td>3-Camión (flecha)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Reptil-Payaso</td>
                                                                                                <td>4-Rosa (fruta)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Caballo-Vaso</td>
                                                                                                <td>5-Caballo (vaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Bebé-Nuez</td>
                                                                                                <td>6-Reptil (payaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Banco-Vela</td>
                                                                                                <td>7-Banco (vela)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Camión-Flecha</td>
                                                                                                <td>8-Ratón (papel)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="active">Lista D</th>
                                                                                                <th class="active">Intento 4 </th>
                                                                                                <th class="active">Respuesta</th>
                                                                                                <th class="active">Puntos</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>Ratón-Papel</td>
                                                                                                <td>1-Luna (flor)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Camión-Flecha</td>
                                                                                                <td>2-Rosa (fruta)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Luna-Flor</td>
                                                                                                <td>3-Bebé (nuez)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Bebé-Nuez</td>
                                                                                                <td>4-Ratón (papel)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Rosa-Fruta</td>
                                                                                                <td>5-Caballo (vaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Reptil-Payaso</td>
                                                                                                <td>6-Banco (vela)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Banco-Vela</td>
                                                                                                <td>7-Reptil (payaso)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>Caballo-Vaso</td>
                                                                                                <td>8-Camión (flecha)</td>
                                                                                                <td></td>
                                                                                                <td>
                                                                                                    <form role="form">
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">0
                                                                                                        </label>
                                                                                                        <label class="radio-inline">
                                                                                                            <input type="radio" name="optradio">1
                                                                                                        </label>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                            </div>
                                                                            <!-- panel panel-primary-->
                                                                            <div class="panel-body">                                             
                                                                                <button type="button" class="btn btn-primary">Calcular Puntuación</button>                                                                      
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <!--Panel de Detalle de la puntuacion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N3" href="#acIt1N3Coll2">Detalle de la puntuacion </a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N3Coll2" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class="table-responsive table-bordered">
                                                                                <table class="table">
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th></th>
                                                                                            <th></th>
                                                                                            <th></th>
                                                                                            <th></th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div class="panel panel-info">
                                                                                                    <div class="panel-heading">
                                                                                                        <h3 class="panel-title">Lista A</h3>
                                                                                                    </div>
                                                                                                    <div class="panel-body">
                                                                                                        <label class="email required control-label" for="user_email"><abbr title="required"></abbr> Puntuación (máxima=8)</label>
                                                                                                        <input autofocus="autofocus" class="" name="" type="email" disabled="">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div class="panel panel-info">
                                                                                                    <div class="panel-heading">
                                                                                                        <h3 class="panel-title">Lista B</h3>
                                                                                                    </div>
                                                                                                    <div class="panel-body">
                                                                                                        <label class="email required control-label" for="user_email"></abbr> Puntuación (máxima=8)</label>
                                                                                                        <input autofocus="autofocus" class="" name="" type="email" disabled="">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div class="panel panel-info">
                                                                                                    <div class="panel-heading">
                                                                                                        <h3 class="panel-title">Lista C</h3>
                                                                                                    </div>
                                                                                                    <div class="panel-body">
                                                                                                        <label class="email required control-label" for="user_email"></abbr> Puntuación (máxima=8)</label>
                                                                                                        <input autofocus="autofocus" class="" name="" type="email" disabled="">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div class="panel panel-info">
                                                                                                    <div class="panel-heading">
                                                                                                        <h3 class="panel-title">Lista D</h3>
                                                                                                    </div>
                                                                                                    <div class="panel-body">
                                                                                                        <label class="email required control-label" for="user_email"></abbr> Puntuación (máxima=8)</label>
                                                                                                        <input autofocus="autofocus" class="" name="" type="email" disabled="">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                            <div class="table-responsive table-bordered">
                                                                                <table class="table">
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th></th>
                                                                                            <th></th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div class="panel panel-danger">
                                                                                                    <div class="panel-heading">
                                                                                                        <h3 class="panel-title">Puntuación TOTAL de recuerdo</h3>
                                                                                                    </div>
                                                                                                    <div class="panel-body">
                                                                                                        <label class="email required control-label" for="user_email"><abbr title="required"></abbr> Puntuación (máxima=32)</label>
                                                                                                        <input autofocus="autofocus" class="" name="" type="email" disabled="">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div class="panel panel-danger">
                                                                                                    <div class="panel-heading">
                                                                                                        <h3 class="panel-title">CALCULO DE LA PENDIENTE DE APRENDIZAJE</h3>
                                                                                                    </div>
                                                                                                    <div class="panel-body">
                                                                                                        <div class="table-responsive table-bordered">
                                                                                                            <table class="table">
                                                                                                                <thead>
                                                                                                                    <tr>
                                                                                                                        <th></th>
                                                                                                                        <th></th>
                                                                                                                        <th></th>
                                                                                                                        <th></th>
                                                                                                                        <th></th>
                                                                                                                    </tr>
                                                                                                                </thead>
                                                                                                                <tbody>
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <div class="panel panel-danger">
                                                                                                                                <div class="panel-heading">
                                                                                                                                    <h3 class="panel-title">Lista D</h3>
                                                                                                                                </div>
                                                                                                                                <div class="panel-body">                                               
                                                                                                                                    <input class="col-lg-6" disabled="">
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                        <td><h2>-</h2></td>
                                                                                                                        <td>
                                                                                                                            <div class="panel panel-danger">
                                                                                                                                <div class="panel-heading">
                                                                                                                                    <h3 class="panel-title">Lista A</h3>
                                                                                                                                </div>
                                                                                                                                <div class="panel-body">                                               
                                                                                                                                    <input class="col-lg-6" disabled="">
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                        <td><h2>=</h2></td>
                                                                                                                        <td>
                                                                                                                            <div class="panel panel-danger">
                                                                                                                                <div class="panel-heading">
                                                                                                                                    <h3 class="panel-title">Pendiente de aprendizaje (entre -8 y +8)</h3>
                                                                                                                                </div>
                                                                                                                                <div class="panel-body">                                               
                                                                                                                                    <input class="col-lg-6" disabled="">
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody>
                                                                                                            </table>
                                                                                                        </div>                                                       
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>      
                                                                            <div class="panel-body">                                             
                                                                                <a href="weschler.html"  class="btn btn-primary">Finalizar</a>                                                                     
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Panel de Escenas-->
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#acIt1" href="#acIt1Coll4">Escenas 2</a>
                                                        </h4>
                                                    </div>
                                                    <div id="acIt1Coll4" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <div class="panel-group" id="acIt1N4"> <!-- Mi Acordeon -->
                                                                <!--Panel de Descripcion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N4" href="#acIt1N4Coll1">Descripcion</a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N4Coll1" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-info">
                                                                                <div class="panel-heading">Consigna</div>
                                                                                <div class="panel-body">
                                                                                    Se muestra al examinado cuatro escenas diferentes con miembros de una familia para que recuerde la mayor cantidad posible de información de cada escena. Una vez mostradas las 4 escenas se pide al sujeto que recuerde:
                                                                                    <ul style="list-style-type:circle">
                                                                                        <li>que personajes aparecían en cada escena.</li>
                                                                                        <li>donde estaban situados en el dibujo.</li>
                                                                                        <li>que estaban haciendo.</li>
                                                                                    </ul>

                                                                                    <p>Imagen P: <em>“Esta es una imagen con los personajes que verá en las próximas escenas. Le voy a mostrar cuatro escenas que involucraran a los mismos, incluido el perro. Quiero que recuerde la mayor cantidad de detalles de cada escena. Después le preguntaré en relación a las mismas”.</em>
                                                                                    <ul style="list-style-type:circle">
                                                                                        <li>Pedir que se identifique bien a cada personaje diferenciando las generaciones para evitar confusiones (Abuela-madre, abuelo-padre).</li>              
                                                                                    </ul>
                                                                                    <p>Imagen 1: <em>“Ahora le mostraré la escena del PICNIC y quiero que recuerde lo máximo que pueda en relación a la misma”.</em></p>
                                                                                    <p>Imagen 2: <em>“Ahora le mostraré la escena de la TIENDA y quiero que recuerde lo máximo que pueda en relación a la misma”.</em></p>
                                                                                    <p>Imagen 3: <em>“Ahora le mostraré la escena del JARDIN y quiero que recuerde lo máximo que pueda en relación a la misma”.</em></p>
                                                                                    <p>Imagen 4: <em>“Ahora le mostraré la escena de la CENA y quiero que recuerde lo máximo que pueda en relación a la misma”.</em></p>
                                                                                    <p>Preguntas para cada escena: <em>“¿Quién estaba en la escena del picnic?”</em> Luego mostrar la grilla y preguntar <em>“¿dónde estaba ubicado?” </em>Y luego <em>“¿qué estaba haciendo?”.</em></p>
                                                                                    <p>Luego preguntar por qué otro personaje había en la escena. Cuando diga que ha dicho todos los que recuerda pasar a la siguiente escena y repetir las mismas preguntas.</p>
                                                                                </div>
                                                                            </div>

                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Escenas 1</div>
                                                                                <div class="panel-body">

                                                                                    <div class="table-responsive table-bordered">
                                                                                        <table class="table table-bordered ">
                                                                                            <thead>
                                                                                                <tr>
                                                                                                    <th class="warning" style="text-align:center;">Personaje</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Localización (según examinador)</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Actividad</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Ejemplos de puntuación máxima en actividades</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntuación ..... personajes (</th>
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td>Abuela</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td>                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Abuelo</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row" >
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Ve cómo el perro alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Madre</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Padre</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Cocina hamburguesas.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Hija</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Lanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                                <tr>
                                                                                                    <td>Hijo</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Perro</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="width:180px">Alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                            </tbody>
                                                                                        </table>                  
                                                                                    </div>

                                                                                </div>
                                                                            </div>

                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Escenas 2</div>
                                                                                <div class="panel-body">

                                                                                    <div class="table-responsive table-bordered">
                                                                                        <table class="table table-bordered ">
                                                                                            <thead>
                                                                                                <tr>
                                                                                                    <th class="warning" style="text-align:center;">Personaje</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Localización (según examinador)</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Actividad</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Ejemplos de puntuación máxima en actividades</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntuación ..... personajes (</th>
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td>Abuela</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td>                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Abuelo</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row" >
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Ve cómo el perro alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Madre</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Padre</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Cocina hamburguesas.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Hija</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Lanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                                <tr>
                                                                                                    <td>Hijo</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Perro</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="width:180px">Alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                            </tbody>
                                                                                        </table>                  
                                                                                    </div>

                                                                                </div>
                                                                            </div>

                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Escenas 3</div>
                                                                                <div class="panel-body">

                                                                                    <div class="table-responsive table-bordered">
                                                                                        <table class="table table-bordered ">
                                                                                            <thead>
                                                                                                <tr>
                                                                                                    <th class="warning" style="text-align:center;">Personaje</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Localización (según examinador)</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Actividad</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Ejemplos de puntuación máxima en actividades</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntuación ..... personajes (</th>
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td>Abuela</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td>                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Abuelo</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row" >
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Ve cómo el perro alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Madre</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Padre</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Cocina hamburguesas.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Hija</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Lanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                                <tr>
                                                                                                    <td>Hijo</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Perro</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="width:180px">Alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                            </tbody>
                                                                                        </table>                  
                                                                                    </div>

                                                                                </div>
                                                                            </div>

                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Escenas 4</div>
                                                                                <div class="panel-body">

                                                                                    <div class="table-responsive table-bordered">
                                                                                        <table class="table table-bordered ">
                                                                                            <thead>
                                                                                                <tr>
                                                                                                    <th class="warning" style="text-align:center;">Personaje</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Localización (según examinador)</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Actividad</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntos</th>
                                                                                                    <th class="warning" style="text-align:center;">Ejemplos de puntuación máxima en actividades</th>
                                                                                                    <th class="warning" style="text-align:center;">Puntuación ..... personajes (</th>
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td>Abuela</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td>                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Abuelo</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row" >
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Ve cómo el perro alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Madre</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Padre</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Cocina hamburguesas.</td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Hija</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td>Lanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                                <tr>
                                                                                                    <td>Hijo</td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                    <td bgcolor="#808080"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td>Perro</td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="text-align:center; width:150px">                          
                                                                                                        <form class="form">
                                                                                                            <div class="btn-group" data-toggle="buttons">
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2011" type="radio">4
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">3
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">2
                                                                                                                </label>
                                                                                                                <label class="btn btn-default">
                                                                                                                    <input name="year" value="2012" type="radio">1
                                                                                                                </label>
                                                                                                            </div>
                                                                                                        </form>                                                     
                                                                                                    </td>
                                                                                                    <td style="text-align:center;width:80px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td> <input type="text" name="firstname"></td>
                                                                                                    <td style="text-align:center;width:110px">
                                                                                                        <div class="row">
                                                                                                            <form class="form">
                                                                                                                <div class="btn-group" data-toggle="buttons">
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2011" type="radio">0
                                                                                                                    </label> 
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">1
                                                                                                                    </label>
                                                                                                                    <label class="btn btn-default">
                                                                                                                        <input name="year" value="2012" type="radio">2
                                                                                                                    </label>
                                                                                                                </div>
                                                                                                            </form>     
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td style="width:180px">Alcanza el disco.</td>
                                                                                                    <td></td>
                                                                                                </tr>                     
                                                                                            </tbody>
                                                                                        </table>                  
                                                                                    </div>

                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <!--Panel de Detalle de la puntuacion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt1N4" href="#acIt1N4Coll2">Detalle de la puntuacion </a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt1N4Coll2" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">PUNTUACIÓN TOTAL DE RECUERDO</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-2">
                                                                                        <label>(máxima=64)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="panel-body">                                             
                                                                                <a href="weschler.html"  class="btn btn-primary">Finalizar</a>            
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Panel de Texto 2 Reconocimiento-->
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#acIt2" href="#acIt2Coll5">Texto 2 Reconocimiento</a>
                                                        </h4>
                                                    </div>
                                                    <div id="acIt2Coll5" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <div class="panel-group" id="acIt2N5"> <!-- Mi Acordeon -->
                                                                <!--Panel de Descripcion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt2N5" href="#acIt2N5Coll1">Descripcion</a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt2N5Coll1" class="panel-collapse collapse in">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-info">
                                                                                <div class="panel-heading">Consigna</div>
                                                                                <div class="panel-body">
                                                                                    <em>“voy a hacerle unas preguntas sobre la primera historia. Si no está seguro de una respuesta, conteste lo que crea correcto.”</em>
                                                                                    <p>El sujeto debe contestar<em>“si”</em>o<em>“no”</em>a cada pregunta. Si no contesta se le debe animar diciendo <em> “inténtelo. Trate de adivinarlo”</em></p>
                                                                                    <p><em>“ahora voy a hacerle unas preguntas sobre la segunda historia. Si no está seguro de una respuesta, conteste lo que crea correcto.”</em></p>
                                                                                    <p>El sujeto debe contestar<em>“si”</em>o<em>“no”</em>a cada pregunta. Si no contesta se le debe animar diciendo <em> “inténtelo. Trate de adivinarlo”</em></p>           
                                                                                </div>
                                                                            </div>
                                                                            <!--panel panel-dange-->
                                                                            <div class="panel panel-info">
                                                                                <div class="panel-heading">Texto A </div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="warning">Elemento</th>
                                                                                                <th class="warning">Anotación</th>
                                                                                                <th class="warning">Puntos</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>1- La mujer ¿se llamaba Diana López?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>2- ¿Se produjo la histoia en Alta Córdoba? </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>3- La mujer ¿era cocinera?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>4- ¿Trabajaba en un restaurante?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>5- ¿Tenía 4 hijos?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>6- Los niños ¿eran adolescentes?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>7- El robo, ¿se produjo en la calle del Mercado?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>8- ¿La mujer dijo que le habían robado dos días antes?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>9- ¿Denunció el robo en la seccional?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>10- ¿Le robaron frente al número 75 de la calle?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>11- ¿Había estado la familia sin comer durante cuatro días?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>12-¿Habían pagado el alquiler?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>13- ¿Detuvo la policía al ladrón?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>14- ¿Se conmovió la policía con la historia de la mujer ?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>15- ¿Organizó la policía una colecta?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>

                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <div class="panel-heading">TEXTO B </div>
                                                                                <div class="table-responsive table-bordered">
                                                                                    <table class="table">
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th class="warning">Elemento</th>
                                                                                                <th class="warning">Anotación</th>
                                                                                                <th class="warning">Puntos</th>
                                                                                            </tr>
                                                                                        </thead>
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td>16- El hombre ¿se llamaba Juan Francisco Rodriguéz?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>17- ¿Era sábado por la tarde? </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>18- ¿Eran las 8?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>19- ¿Estaba Juan preparándose para viajar?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>20- ¿Estaba escuchando la radio?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>21- ¿Había alguna noticia interesante?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>22- ¿El accidente se produjo en otra ciudad?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>23- ¿Ocurrió en la pista número 3?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>24- ¿Se habían producido víctimas?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>25- ¿Necesitaron atención 15 personas?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>26- ¿Provocó el accidente entre 6 y 7 horas de retraso?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>27-¿Hubo retrasos en los vuelos nacionales?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>28- ¿Aplazó Juan su viaje?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>29- ¿Llamó Juan a la compañía  ?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>30- El nuevo vuelo, ¿era a la tarde siguiente?</td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">Sí
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">No
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <form class="form">
                                                                                                        <div class="btn-group" data-toggle="buttons">
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2011" type="radio">0
                                                                                                            </label>
                                                                                                            <label class="btn btn-default">
                                                                                                                <input name="year" value="2012" type="radio">1
                                                                                                            </label>
                                                                                                        </div>
                                                                                                    </form>
                                                                                                </td>
                                                                                            </tr>

                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                            </div>
                                                                            <!-- panel panel-primary-->
                                                                            <div class="panel-body">                                             
                                                                                <button type="button" class="btn btn-primary">Calcular Puntuación</button>                                                                      
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <!--Panel de Detalle de la puntuacion-->
                                                                <div class="panel panel-default">
                                                                    <div class="panel-heading">
                                                                        <h4 class="panel-title">
                                                                            <a data-toggle="collapse" data-parent="#acIt2N5" href="#acIt2N5Coll2">Detalle de la puntuacion </a>
                                                                        </h4>
                                                                    </div>
                                                                    <div id="acIt2N5Coll2" class="panel-collapse collapse">
                                                                        <div class="panel-body">
                                                                            <div class=" panel panel-danger">
                                                                                <div class="panel-heading">PUNTUACIÓN TOTAL RECONOCIMIENTO</div>
                                                                                <div class="panel-body">
                                                                                    <div class="col-sm-2">
                                                                                        <label>Punt. Total  (máxima=48)</label>
                                                                                        <input class="form-control" id="disabledInput" type="text" placeholder="" >
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
                                            </div>             
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