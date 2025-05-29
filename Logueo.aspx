<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logueo.aspx.cs" Inherits="PruebaTecnicaO.Logueo" %>
<%@ Register assembly="DevExpress.Web.v24.1, Version=24.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v24.1, Version=24.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"/>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet" />
    <title>Pagina de Ingreso</title>
</head>
 
<body class ="bg-light"style="background-image:url('Tikal.jpg'); background-repeat:no-repeat; background-size:cover">


    <div class ="wrapper">
        <div class="formcontent">
            <form id="formulario_ingreso" runat="server">
                <div class="form-control">
                    <div class="row">

                       <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Bienvenido al Sistema" Theme="iOS">
                    </dx:ASPxLabel>
                    </div>
                <div>
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Usuario"></asp:TextBox>
            </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="tbPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
       </div>
    
        <hr />
        <div class="row">
            <asp:Label runat="server" ID="lblError" CssClass="alert-danger"></asp:Label>
        </div>
        <br />
        <div class="row">
            <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click"></asp:Button>
        </div>
    </div>
</form>
        </div>
    </div>
    
</body>



</html>
