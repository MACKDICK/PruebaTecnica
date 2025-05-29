<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grafico.aspx.cs" Inherits="PruebaTecnicaO.Grafico" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet"/>
<link rel="stylesheet" href="fonts/icomoon/style.css"/>
<link rel="stylesheet" href="css/owl.carousel.min.css"/>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/style.css"/>
    <title>Gráfico Comparativo</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', { 'packages': ['bar'] });
    google.charts.setOnLoadCallback(drawStuff);

    function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
            ['Tipo de Gasto', 'Total Gastado', 'Cuenta Bancaria','Caja menuda'],
            ['Comida', 500, 2500,0],
            ['Ropa', 1000, 2500,300],
            ['Accesorios', 3000, 1430,300],
            ['Zapatos', 5000, 900,3000],
            ['Combustible', 6000, 1301,3000]
        ]);

        var options = {
            width: 800,
            chart: {
                title: 'Gráfico Comparativo',
                subtitle: 'Gastos contra depositos'
            },
            bars: 'vertical', // Required for Material Bar Charts.
            series: {
                0: { axis: 'Tipo de Gasto' }, // Bind series 0 to an axis named 'distance'.
                1: { axis: 'Total Gastado' }, // Bind series 1 to an axis named 'brightness'.
                2: { axis: 'Caja Menuda' },
            },
            axes: {
                x: {
                    distance: { label: 'parsecs' }, // Bottom x-axis.
                    brightness: { side: 'top', label: 'apparent magnitude' } // Top x-axis.
                }
            }
        };

        var chart = new google.charts.Bar(document.getElementById('dual_x_div'));
        chart.draw(data, options);
    };
</script>
</head>

        <body>
      <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
              <span class="icon-close2 js-menu-toggle"></span>
          </div>
      </div>
      <div class="site-mobile-menu-body"></div>
  </div>

  <header class="site-navbar" role="banner">

  <div class="container">
    <div class="row align-items-center">
      
      <div class="col-11 col-xl-3">
        <!-- <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0">Brand</a></h1>-->

    
    <form id="form1" runat="server">
        <div class="row">
            <div class ="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading"> <b>Grafico comparativo</b></div>
                    <div class="panel-body">
                        <canvas id="Bar" width="180" height="50"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div id="dual_x_div" style="width: 900px; height: 500px;"></div>    

      </div>
      <div class="col-12 col-md-10 d-none d-xl-block">
        <nav class="site-navigation position-relative text-right" role="navigation">

          <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
            <li class="active"><a href="Logueo"><span>Inicio</span></a></li>
            <li class="has-children">
              <a href="Index"><span>Mantenimientos</span></a>
              <ul class="dropdown arrow-top">
                <li><a href="TipoDeGasto">Tipo de Gasto</a></li>
                <li><a href="Usuarios">Usuarios</a></li>
                <li><a href="FondoMonetario">Fondo Monetario</a></li>
              </ul>
            </li>
            <li class="has-children">
                <a href="Index"><span>Movimientos</span></a>
                <ul class="dropdown arrow-top">
                    <li><a href="Presupuesto">Presupuesto por usuario y tipo de Gasto</a></li>
                    <li><a href="RegistroDeGastos">Registro de gastos</a></li>
                    <li><a href="Depositos">Depósitos</a></li>
                </ul>

            </li>
            <li class="has-children">
                <a href="Index"><span>Consultas y Reportes</span></a>
                <ul class="dropdown arrow-top">
                    <li><a href="Consultas"><span>Consulta de movimientos</span></a></li>
                    <li><a href="Grafico"><span>Gráfico Comparativo de Presupuesto y Ejecución</span></a></li>
                </ul>
            </li>
            
          </ul>
        </nav>
      </div>


      <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

      </div>

    </div>
  
  
</header>
      <div class="hero" style="background-image: url('images/hero_1.jpg');"></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/main.js"></script>
</body>

       
</html>

