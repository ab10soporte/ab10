<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                    <div class=" panel panel-info">
                        <div class="panel-heading">Listado de evaluaciones realizadas</div>
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
                                <!--Panel de Datos-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Datos del paciente</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <form action="evaldet.htm" method="post">
                                                <input type="hidden" name="action" value="1">
                                                <input type="hidden" name="userid" value="${requestScope.userid}">
                                                <input type="hidden" name="mode" value="${requestScope.mode}">
                                                <input type="hidden" name="legajo" value="${requestScope.legajo}">
                                                <div class="row">
                                                    <!-- Columna izquierda -->
                                                    <div class="col-md-6">               
                                                        <div class="box-body">
                                                            <div class="form-group">
                                                                <label for="derv">Derivado por</label>
                                                                <!--<input type="text" class="form-control" name="der" id="fder" placeholder="Derivado por" required>-->
                                                                <c:if test="${requestScope.mode == 'new'}"> 
                                                                    <input type="text" class="form-control" name="der" id="fder" placeholder="Derivado por" required>
                                                                </c:if>   
                                                                <c:if test="${requestScope.mode == 'edit'}"> 
                                                                    <input type="text" class="form-control" name="der" id="fder" placeholder="Derivado por" required value="${eval.derivado}">
                                                                </c:if>
                                                            </div>     
                                                            <div class="form-group">
                                                                <label for="fevalu">Evaluador</label>
                                                                <input type="text" class="form-control" name="eva" id="fevaluador" placeholder="Evaluador">
                                                            </div>                                                                 
                                                            <div class="form-group">
                                                                <label for="fnombre">Nombre del paciente</label>
                                                                <input type="text" class="form-control" name="pac" id="fnombre" placeholder="Apellido, Nombre">
                                                            </div>     
                                                            <div class="form-group">
                                                                <label for="fdni">Fecha nacimiento del paciente</label>
                                                                <input type="text" class="form-control" name="fecnacpac" id="fdni" placeholder="dd/mm/aaaa" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="fdni">DNI</label>
                                                                <input type="number" class="form-control" name="dni" id="fdni" placeholder="00.000.000">
                                                            </div>     
                                                            <div class="form-group">
                                                                <label for="focu">Ocupacion</label>
                                                                <input type="text" class="form-control" name="ocu" id="focu" placeholder="Ocupacion">
                                                            </div>     
                                                            <div class="form-group">
                                                                <label for="fpro">Procedencia</label>
                                                                <input type="text" class="form-control" name="pro" id="fpro" placeholder="Lugar de nacimiento">
                                                            </div>  

                                                            <div class="form-group">
                                                                <label for="fmano">Naturalidad de escritura</label>
                                                                <div class="panel panel-default">
                                                                    <div class="panel-body">
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="mano" value="1" checked>Diestro</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="mano" value="2">Zurdo</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="mano" value="3">Ambidiestro</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="ftel">Telefono</label>
                                                                <input type="text" class="form-control" name="tel" id="ftel" placeholder="Telefono">
                                                            </div>  
                                                            <div class="form-group">
                                                                <label for="femial">Email</label>
                                                                <input type="email" class="form-control" name="mai" id="femial" placeholder="Email">
                                                            </div>  
                                                            <div class="form-group">
                                                                <label for="educa">Educacion alcanzada</label>
                                                                <div class="panel panel-default">
                                                                    <div class="panel-body">
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="1" checked>Sin formacion</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="2">Primario completo</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="3" >Primario incompleto</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="4">Secundario completo</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="5">Secundario incompleto</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="6" >Terciario completo</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="7">Terciario incompleto</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="8">Universitario completo</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="9" >Universitario incompleto</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="10">Postgrados completo</label>
                                                                        </div>
                                                                        <div class="radio">
                                                                            <label><input type="radio" name="educ" value="11">Postgrados incompleto</label>
                                                                        </div>                                                                        
                                                                    </div>
                                                                    
                                                                    <!--<div class="panel panel-default">-->
                                                                        <div class="panel-body">
                                                                            <label>Años de educacion alcanzada</label>
                                                                            <input type="number" min="0" max="30" class="form-control" placeholder="Años de educacion" name="ealc" required>
                                                                            <p>Tener en cuenta que este valor es necesario para los ejercicios TFV y ....</p>
                                                                        </div>                                                                        
                                                                    <!--</div>-->
                                                                    
                                                                </div>
                                                            </div>                                                            
                                                        </div> 
                                                    </div>

                                                    <!-- Columna derecha -->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="antpata">Antecedentes Patologicos</label>
                                                            <div class="panel panel-default">
                                                                <div class="panel-body">
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat0" value="0" checked>No registra ninguno</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat1" value="1">Acciente Cerebro Vascular</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat2" value="2">Traumatismo Cráneo-Encefálico</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat3" value="3" >Antecedentes vasculares</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat4" value="4">Antecentes cardíacos </label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat5" value="5">Neoplasias</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat6" value="6" >Crisis convulsivas</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat7" value="7">Epilepsia</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat8" value="8">Hipertensión Arterial (HTA)</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat9" value="9" >Hipercolesterolemia</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat10" value="10">Diabetes tipo I</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat11" value="11">Diabetes tipo II</label>
                                                                    </div>        
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat12" value="12">Hipotiroidismo</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat3" value="13" >Hipertiroidismo</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat14" value="14">Cefaleas</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat15" value="15">Artrosis</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat16" value="16">Artritis</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat17" value="17">Antecentes de tratamiento psicológico</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat18" value="18">Antecedentes de tratamiento psiquiárico</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat19" value="19">Depresión</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat20" value="20" >Trastono de Ansiedad</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="antpat21" value="21">Trastorno del sueño</label>
                                                                    </div>                                                                        																		
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Antecedentes familiares</label>
                                                            <textarea class="form-control" name="fam" rows="3" placeholder="Detalle ..."></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="antpata">Habitos toxico</label>

                                                            <c:if test="${requestScope.mode == 'new'}"> 
                                                                <div class="panel panel-default">
                                                                    <div class="panel-body">
                                                                        <div class="checkbox">
                                                                            <label><input type="checkbox" name="habtox0" value="0" checked>No registra ninguno</label>
                                                                        </div>
                                                                        <div class="checkbox">
                                                                            <label><input type="checkbox" name="habtox1" value="1">Fumador</label>
                                                                        </div>
                                                                        <div class="checkbox">
                                                                            <label><input type="checkbox" name="habtox2" value="2" >Bebedor</label>
                                                                        </div>
                                                                        <div class="checkbox">
                                                                            <label><input type="checkbox" name="habtox3" value="3">...</label>
                                                                        </div>                                                                                                                                                                                                                  																		
                                                                    </div>
                                                                </div>
                                                            </c:if>   
                                                            <c:if test="${requestScope.mode == 'edit'}"> 
                                                                <c:set var = "habtoxdata" value = "${eval.htoxicos}"/>
                                                                <div class="panel panel-default">
                                                                    <div class="panel-body">
                                                                        <div class="checkbox">                                                                                                                                                        
                                                                            <c:if test = "${fn:contains(habtoxdata, 'habtox0')}">
                                                                                <label><input type="checkbox" name="habtox0" value="0" checked>No registra ninguno</label>
                                                                                </c:if>
                                                                                <c:if test = "${!fn:contains(habtoxdata, 'habtox0')}">
                                                                                <label><input type="checkbox" name="habtox0" value="0">No registra ninguno</label>
                                                                                </c:if>                                                                            
                                                                        </div>
                                                                        <div class="checkbox">
                                                                            <!--<label><input type="checkbox" name="habtox1" value="1">Fumador</label>-->
                                                                            <c:if test = "${fn:contains(habtoxdata, 'habtox1')}">                                                                                
                                                                                <label><input type="checkbox" name="habtox1" value="1" checked>Fumador</label>
                                                                                </c:if>
                                                                                <c:if test = "${!fn:contains(habtoxdata, 'habtox1')}">
                                                                                <label><input type="checkbox" name="habtox1" value="1">Fumador</label>
                                                                                </c:if>
                                                                        </div>
                                                                        <div class="checkbox">
                                                                            <!--<label><input type="checkbox" name="habtox2" value="2" >Bebedor</label>-->
                                                                            <c:if test = "${fn:contains(habtoxdata, 'habtox2')}">                                                                                
                                                                                <label><input type="checkbox" name="habtox2" value="2" checked>Bebedor</label>
                                                                                </c:if>
                                                                                <c:if test = "${!fn:contains(habtoxdata, 'habtox2')}">
                                                                                <label><input type="checkbox" name="habtox2" value="2" >Bebedor</label>
                                                                                </c:if>
                                                                        </div>
                                                                        <div class="checkbox">
                                                                            <!--<label><input type="checkbox" name="habtox3" value="3">...</label>-->
                                                                            <c:if test = "${fn:contains(habtoxdata, 'habtox3')}">                                                                                
                                                                                <label><input type="checkbox" name="habtox3" value="3" checked>...</label>
                                                                                </c:if>
                                                                                <c:if test = "${!fn:contains(habtoxdata, 'habtox3')}">
                                                                                <label><input type="checkbox" name="habtox3" value="3">...</label>
                                                                                </c:if>
                                                                        </div>                                                                                                                                                                                                                  																		
                                                                    </div>
                                                                </div>
                                                            </c:if>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Antecedentes de la enfermedad actual</label>
                                                            <textarea class="form-control" name="enf" rows="5" placeholder="Detalle ..."></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Datos relevantes de su historia clinica</label>
                                                            <textarea class="form-control" name="his" rows="3" placeholder="Detalle ..."></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Datos relevantes de su situacion actual</label>
                                                            <textarea class="form-control" name="sit" rows="3" placeholder="Detalle ..."></textarea>
                                                        </div>                                              
                                                        <div class="form-group">
                                                            <label for="medi">Medicacion</label>
                                                            <div class="panel panel-default">
                                                                <div class="panel-body">
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med0" value="0" checked>No registra ninguno</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med1" value="1">Ácido acetilsalicílico, losartán, carvedilol, galantamina, bisoprolol, enalapril</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med2" value="2">Rosuvastatina, metformina, pravastatina</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med3" value="3" >Clonazepam, diacepam, lorazepam</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med4" value="4">Sertralina, citalopram y escitalopram, paroxetina, venlafaxina</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med5" value="5">Pregabalina, carbamazepina, levetiracetam</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med6" value="6" >Levotiroxina, melatonina</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med7" value="7">Memantina</label>
                                                                    </div>
                                                                    <div class="checkbox">
                                                                        <label><input type="checkbox" name="med8" value="8">Ranitidina, pantoprazol</label>
                                                                    </div>                                                                                                                                                																		
                                                                </div>
                                                            </div>
                                                        </div>					
                                                        <div class="form-group">
                                                            <label>Descripcion de la conducta</label>
                                                            <textarea class="form-control" name="con" rows="5" placeholder="Detalle ..."></textarea>
                                                        </div>
                                                    </div>  
                                                </div>

                                                <div class="box-footer text-right">
                                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                                    <!--<input type="button" value="CheckBoxValues" onclick="getCheckBoxValues()"/>-->
                                                </div>
                                                <!-- /.box-body -->
                                            </form>                                            
                                        </div>
                                    </div>
                                </div>

                                <!--Panel de Ejerciios realizados-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Ejercicios realizados</a>
                                        </h4>
                                    </div>
                                    <div id="collapse2" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="form-group">

                                                <div class="panel panel-default">
                                                    <!--<div class="panel-heading">Panel with panel-default class</div>-->
                                                    <div class="panel-body"> 
                                                        <div class="row">
                                                            <!-- left column -->
                                                            <div class="col-md-6">
                                                                <!--Ej01-->
                                                                <h5><b>Test de Screening</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" disabled checked>
                                                                        MMSE
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        ACE (addenbroke's Cognitive Examination)
                                                                    </label>
                                                                </div>

                                                                <!--Ej02-->
                                                                <h5><b>Atencion</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        TrailMaking Test A
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        WAIS III (Digitos Directos e Inversos, Digitos Simbolicos)
                                                                    </label>
                                                                </div>

                                                                <!--Ej03-->
                                                                <h5><b>Memoria Verbal</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Tavec (Test de Aprendizaje Verbal Escuela Complutense)
                                                                    </label>
                                                                </div>  

                                                                <!--Ej04-->
                                                                <h5><b>Memoria no Verbal</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Figura compleja del Rey
                                                                    </label>
                                                                </div> 

                                                                <!--Ej05-->
                                                                <h5><b>Memoria de Trabajo</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        WMS III (Ordenamientos de Letras y Numeros, SpatialSpan)
                                                                    </label>
                                                                </div>  
                                                            </div>                                                                                               

                                                            <!-- right column -->
                                                            <div class="col-md-6">
                                                                <!--Ej06-->
                                                                <h5><b>Lenguaje</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Test de Fluencia Verbal
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Test de Nominacion de Boston
                                                                    </label>
                                                                </div>                                                
                                                                <!--Ej07-->
                                                                <h5><b>Funciones Ejecutivas</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Ineco Frontal Screening
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Figura Compleja del Rey Osterriech
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        TrailMaking Test A
                                                                    </label>
                                                                </div>

                                                                <!--Ej08-->
                                                                <h5><b>Escalas Conductuales y del Estado de Animo Autoadministradas</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Cuestionario de Depresion de Beck (BDI-II)
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Cuestionario de Ansiedad STAIX 1 y 2
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Cuestionario de Reserva Cognitiva (CRC)
                                                                    </label>
                                                                </div>

                                                                <!--Ej09-->
                                                                <h5><b>Evaluacion del Estres</b></h5>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Escala basada en el analisis de estimulos (SRRS)
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox">
                                                                        Escala basada en el analisis de la respuesta (PSS-10)
                                                                    </label>
                                                                </div>
                                                            </div>                                                                                         
                                                        </div>                                                                                                                                                                                                                                                    
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--Panel de Cuestionarios complementarios-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Cuestionarios complementarios</a>
                                        </h4>
                                    </div>
                                    <div id="collapse3" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <table class="table table-bordered" >
                                                <tbody>

                                                    <tr>
                                                        <td align="center" bgcolor="#EFECEC">Detalle</td>
                                                        <td align="center" bgcolor="#EFECEC">Refrescar</td>
                                                        <td align="center" bgcolor="#EFECEC">Url</td>
                                                        <td align="center" bgcolor="#EFECEC">Codigo QR</td>
                                                    </tr>
                                                    <tr>
                                                        <td>                                                                  
                                                            <p><strong>Paciente:</strong></p>
                                                            <p>A continuacion se brindan las opciones de acceso a los informes</p>
                                                            <p>Tenga presente que una ves generado los link, los informes deben ser completados</p>
                                                            <p>antes de los 120 minutos, de lo contrario se tendra que <strong>refrescar</strong> y volver a comenzar </p>

                                                        </td>
                                                        <td align="center">
                                                            <br/>
                                                            <br/>
                                                            <button type="submit" class="btn btn-primary">Refrescar los link</button>
                                                        </td>
                                                        <td align="center">  
                                                            <br/>
                                                            <br/>
                                                            <a target="_blank" href="https://www.google.com">Informes del paciente</a>
                                                        </td>
                                                        <td align="center">
                                                            <img src="<c:url value="/resource/image/qrcode/qrcode.png" />" class="img-responsive" alt="QR"> 
                                                        </td>
                                                    </tr>     
                                                </tbody>
                                            </table>    

                                            <table class="table table-bordered" >
                                                <tbody>

                                                    <tr>
                                                        <td align="center" bgcolor="#EFECEC">Detalle</td>
                                                        <td align="center" bgcolor="#EFECEC">Refrescar</td>
                                                        <td align="center" bgcolor="#EFECEC">Url</td>
                                                        <td align="center" bgcolor="#EFECEC">Codigo QR</td>
                                                    </tr>
                                                    <tr>
                                                        <td>                                                                  
                                                            <p><strong>Informante:</strong></p>
                                                            <p>A continuacion se brindan las opciones de acceso a los informes</p>
                                                            <p>Tenga presente que una ves generado los link, los informes deben ser completados</p>
                                                            <p>antes de los 120 minutos, de lo contrario se tendra que <strong>refrescar</strong> y volver a comenzar </p>

                                                        </td>
                                                        <td align="center">
                                                            <br/>
                                                            <br/>
                                                            <button type="submit" class="btn btn-primary">Refrescar los link</button>
                                                        </td>
                                                        <td align="center">  
                                                            <br/>
                                                            <br/>
                                                            <a target="_blank" href="https://www.google.com">Informes del informante</a>
                                                        </td>
                                                        <td align="center">
                                                            <img src="<c:url value="/resource/image/qrcode/qrcode.png" />" class="img-responsive" alt="QR"> 
                                                        </td>
                                                    </tr>     
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                </div>

                                <div class="box-footer text-right">
                                    <a class="btn btn-primary" href="javascript:call_finish()">Finalizar Evaluacion</a>
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
            function call_finish() {
                alert('${requestScope.mode}');
            }

            $(function () {
                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                });
            });

            $(function () {
                //Date picker
                $('#datepickerpac').datepicker({
                    autoclose: true
                });
            });

            function getCheckBoxValues() {
                $('[name="med"]').each(function () {
                    if ($(this).prop('checked') == true) {
                        alert($(this).val());
                    }
                });
            }
        </script>
    </body>
</html>