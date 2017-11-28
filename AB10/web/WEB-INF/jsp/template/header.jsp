



<!-- Main Header -->
<header class="main-header">

    <!-- Logo -->
    <a href="home.htm" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini">AB10</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>AB10 </b>Tool</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

                <!-- User Account Menu -->
                <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <!-- The user image in the navbar-->                                    
                        <img src="<c:url value="/resource/image/user.png" />" class="user-image" alt="User Image">
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs">${requestScope.headerUserName}</span>

                        <!--<span class="hidden-xs">Sebastian Toledo</span>-->
                    </a>
                    <ul class="dropdown-menu">
                        <!-- The user image in the menu -->
                        <li class="user-header">                                        
                            <img src="<c:url value="/resource/image/user.png" />" class="img-circle" alt="User Image">
                            <p>
                                ${requestScope.headerUserName}
                                <small>Miembro desde ${requestScope.headerUserDate}</small>
                            </p>

                            <!--                            <p>
                                                            Sebastian Toledo - Web Developer
                                                            <small>Miembro desde Nov. 2012</small>
                                                        </p>-->
                        </li>
                        <!--                                     Menu Body 
                                                            <li class="user-body">
                                                                <div class="row">
                                                                    <div class="col-xs-4 text-center">
                                                                        <a href="#">Followers</a>
                                                                    </div>
                                                                    <div class="col-xs-4 text-center">
                                                                        <a href="#">Sales</a>
                                                                    </div>
                                                                    <div class="col-xs-4 text-center">
                                                                        <a href="#">Friends</a>
                                                                    </div>
                                                                </div>
                                                                 /.row 
                                                            </li>-->
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#" class="btn btn-default btn-flat">Perfil</a>
                            </div>
                            <div class="pull-right">
                                <a href="lockscreen.htm" class="btn btn-default btn-flat">Salir</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">                            
                <img src="<c:url value="/resource/image/user.png" />" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${requestScope.headerUserName}</p>
                <!--<p>Sebastian Toledo</p>-->
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form (Optional) -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Buscar...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->

        <!--Esto para realizar el envio post mediante href a cada ejercicio-->
        <form action="home.htm" method=post name="callevalst">
            <input type="hidden" name="action" value="1">
            <input type="hidden" name="userid" value="${requestScope.userid}">
        </form>
        
        <!--Con este formulario llamo a cada ejercicio, configurado aca la netpage.-->
        <form action="home.htm" method=post name="calltest">
            <input type="hidden" name="action" id="IDTEST">
            <input type="hidden" name="nextpage" id="NEXTPAGE">
            <input type="hidden" name="userid" value="${requestScope.userid}">
        </form>


        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">Principal    </li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="javascript:call_evalst()"><i class="fa fa-link"></i> <span>Evaluaciones</span></a></li>
            <!--<li><a href="prueba.htm"><i class="fa fa-link"></i> <span>Evaluaciones</span></a></li>-->
            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Pruebas</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <!--<li><a href="#">Link in level 2</a></li>-->                                

                    <li class="treeview">
                        <a href="#"><i class="fa fa-link"></i> <span>Test screening</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">               
                            <li><a href="#" id="ACE">ACE</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#"><i class="fa fa-link"></i> <span>Atencion</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#" id="TMTA">TrailMaking Test A</a></li>
                            <li><a href="wais.htm">WAIS III</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#"><i class="fa fa-link"></i> <span>Memoria Verbal</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#" id="TAV">Tavec</a></li>  
                            <li class="treeview">
                                <a href="#"><i class="fa fa-link"></i> <span>Weschler</span>
                                    <span class="pull-right-container">
                                        <i class="fa fa-angle-left pull-right"></i>
                                    </span>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="weschler1.htm">Weschler IT1</a></li>  
                                    <li><a href="weschler2.htm">Weschler IT2</a></li>
                                </ul>                        
                            </li>
                    </li>
                </ul>                        
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Memoria no Verbal</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="fcr1.htm">Figura del Rey</a></li>                                        
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Memoria de Trabajo</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">                                       
                    <li><a href="#">WMS III</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Viso construccion</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="fcr2.htm">Figura Compleja del Rey</a></li>

                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Lenguaje</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">                
                    <li><a href="#" id="TFV">Test de fluencia Verbal</a></li>
                    <li><a href="#" id="TNB">Test de nominacion de Boston</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Funciones Ejecutivas</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">                                       
                    <li><a href="ifs.htm">Ineco Frintal Screening</a></li>
                    <li><a href="fcr3.htm">Figura Compleja del Rey Osterriech</a></li>                    
                    <li><a href="#" id="TMTB">TrailMaking Test B</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Estado de Animo</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">                                       
                    <li><a href="bdi.htm">C. de depresion de Beck (BDI-II)</a></li>
                    <li><a href="staix.htm">C. de Ansiedad STAIX 1 y 2</a></li>
                    <li><a href="crc.htm">C. de Reserva Cognitiva (CRC)</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#"><i class="fa fa-link"></i> <span>Evaluacion del Estres</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">                                       
                    <li><a href="srrs.htm">Escala basada en Estimulos</a></li>
                    <li><a href="pss.htm">Escala basada en Respuestas</a></li>
                </ul>
            </li>
        </ul>
        </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>

<!-- Acción sobre el botón con id=boton y actualizamos el div con id=capa -->
<script type="text/javascript">
    function call_evalst() {
        document.callevalst.submit();
    }

    $(document).ready(function () {
        $("#TMTA").click(function (e) {
            e.preventDefault();
            $("#IDTEST").val(2);
            $("#NEXTPAGE").val('redirect:/tmta.htm');
            document.calltest.submit();
        });
        
        $("#ACE").click(function (e) {
           e.preventDefault();
            $("#IDTEST").val(2);
            $("#NEXTPAGE").val('redirect:/ace.htm');
            document.calltest.submit();
        });

        $("#TAV").click(function (e) {
            e.preventDefault();
            $("#IDTEST").val(2);
            $("#NEXTPAGE").val('redirect:/tavec.htm');
            document.calltest.submit();
        });
        
        $("#TFV").click(function (e) {
            e.preventDefault();
            $("#IDTEST").val(2);
            $("#NEXTPAGE").val('redirect:/tfv.htm');
            document.calltest.submit();
        });
        
        $("#TMTB").click(function (e) {
            e.preventDefault();
            $("#IDTEST").val(2);
            $("#NEXTPAGE").val('redirect:/tmtb.htm');
            document.calltest.submit();
        });
                
    });

</script>