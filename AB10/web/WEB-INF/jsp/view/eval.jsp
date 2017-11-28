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
                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_1" data-toggle="tab">Nueva</a></li>
                            <li><a href="#tab_2" data-toggle="tab">Listado</a></li>

                            <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                <div class="row">
                                    <div class="col-md-6">

                                        <div class="box box-primary">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Evaluacion actual</h3>
                                            </div>
                                            <!-- /.box-header -->
                                            <!-- form start -->
                                            <form role="form">
                                                <div class="box-body">
                                                    <div class="form-group">
                                                        <label>Fecha</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker">
                                                        </div>                                
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="fnombre">Derivado por</label>
                                                        <input type="text" class="form-control" id="fnombre" placeholder="Nombre">
                                                    </div>     
                                                    <div class="form-group">
                                                        <label for="fapellido">Evaluador</label>
                                                        <input type="text" class="form-control" id="fapellido" placeholder="Apellido">
                                                    </div>     
                                                    <!-- textarea -->
                                                    <div class="form-group">
                                                        <label>Antecedentes patologicos</label>
                                                        <textarea class="form-control" rows="3" placeholder="Detalle ..."></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Antecedentes familiares</label>
                                                        <textarea class="form-control" rows="3" placeholder="Detalle ..."></textarea>
                                                    </div>
                                                    <!-- Select multiple-->
                                                    <div class="form-group">
                                                        <label>Habitos toxico (selccion multiple)</label>
                                                        <select multiple class="form-control">
                                                            <option>No registra</option>
                                                            <option>Fumador</option>
                                                            <option>Bebedor</option>
                                                            <option>...</option>
                                                            <option>...</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Antecedentes de la enfermedad actual</label>
                                                        <textarea class="form-control" rows="5" placeholder="Detalle ..."></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Datos relevantes de su historia clinica</label>
                                                        <textarea class="form-control" rows="3" placeholder="Detalle ..."></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Datos relevantes de su situacion actual</label>
                                                        <textarea class="form-control" rows="3" placeholder="Detalle ..."></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputFile">Estudios complementarios</label>
                                                        <textarea class="form-control" rows="2" placeholder="Detalle ..."></textarea>
                                                        <br/>
                                                        <input type="file" id="exampleInputFile">
                                                        <p class="help-block">Adjuntar los estudios relevantes</p>
                                                    </div>  
                                                    <div class="form-group">
                                                        <label>Medicacion</label>
                                                        <textarea class="form-control" rows="3" placeholder="Detalle ..."></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Descripcion de la conducta</label>
                                                        <textarea class="form-control" rows="5" placeholder="Detalle ..."></textarea>
                                                    </div>

                                                    <div class="form-group">
                                                        <label>Ejercicios asignados a la evaluacion</label>
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
                                                                                <input type="checkbox">
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
                                                <!-- /.box-body -->

                                                <div class="box-footer">
                                                    <button type="submit" class="btn btn-primary">Comenzar examen</button>
                                                </div>
                                            </form>
                                        </div>

                                        <!--aaaaa-->
                                    </div>
                                </div>


                                <!-- general form elements -->

                                <!-- /.box -->
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="tab_2">
                                <div class="box">
                                    <div class="box-header">
                                        <h3 class="box-title">Listado de pacientes</h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body">
                                        <table id="example1" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                    <th>DNI</th>
                                                    <th>Ocupacion</th>
                                                    <th>Procedencia</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Vanesa</td>
                                                    <td>Benites</td>
                                                    <td>3099822</td>
                                                    <td>Informatico</td>
                                                    <td>Bs. As.</td>
                                                </tr>                                
                                                <tr>
                                                    <td>Sebastian</td>
                                                    <td>Lopez</td>
                                                    <td>3032822</td>
                                                    <td>Autonomo</td>
                                                    <td>San Martin de los andes</td>
                                                </tr>
                                                <tr>
                                                    <td>Norma</td>
                                                    <td>Pedernera</td>
                                                    <td>1099822</td>
                                                    <td>Informatico</td>
                                                    <td>Cordoba</td>
                                                </tr>
                                                <tr>
                                                    <td>Alberto</td>
                                                    <td>Martinez</td>
                                                    <td>1653392</td>
                                                    <td>Empleado</td>
                                                    <td>La Carlota</td>
                                                </tr>
                                                <tr>
                                                    <td>Marisa</td>
                                                    <td>Arias</td>
                                                    <td>12990122</td>
                                                    <td>Lejistalor</td>
                                                    <td>Bs. As.</td>
                                                </tr>                                 
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                    <th>DNI</th>
                                                    <th>Ocupacion</th>
                                                    <th>Procedencia</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                            </div>            
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>

                </section>

            </div>
            <!--  /.ACA Contenido dinamico de la aplicacion -->      

            <%@ include file="../template/footer.jsp" %>
        </div>
        <!-- ./wrapper -->

    </body>
</html>