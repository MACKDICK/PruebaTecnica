<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Presupuesto.aspx.cs" Inherits="PruebaTecnicaO.Presupuesto" %>
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
    <title>Presupuesto por Usuario</title>
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
    <div>

        <asp:TextBox ID="TBM" runat="server" TextMode="Month"></asp:TextBox>
        <asp:Label ID="Lbl" runat="server" Visible="True"></asp:Label>
        <asp:Label ID="Lbly" runat="server" Visible="True"></asp:Label>
        <asp:Button ID="BTM" runat="server" OnClick="BTM_Click" Text="Seleccionar Mes" />
        <asp:SqlDataSource ID="SqlDS" runat="server" ConnectionString="<%$ ConnectionStrings:infileConnectionString %>" SelectCommand="SP_DetallePresupuesto" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="Id" SessionField="IdUsuario" Type="Int32" />
                <asp:ControlParameter ControlID="Lbly" Name="Ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Lbl" Name="Mes" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDS" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Fecha" DataFormatString="{0:d}" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                <asp:BoundField DataField="Descripcion" HeaderText="Tipo de Gasto" SortExpression="Descripcion" />
                <asp:BoundField DataField="Descripcion1" HeaderText="Fondo" SortExpression="Descripcion1" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

    </div>
</form>
    

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
