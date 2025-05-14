<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PruebaTecnicaO.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"/>    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link href="Recursos/CSS/Estilos.css" rel="stylesheet" />
    <title>Inicio</title>
</head>
<body>
    <form id="form1" class ="form-control" runat="server">
        <div>
            <h1> Bienvenido a la prueba Tecnica</h1>
            <br />
            <asp:Label ID="lblBienvenida" runat="server" Text="" CssClass="h3">
            </asp:Label>
        </div>
        <div>
            <asp:Button ID="BtnCerrar" runat="server" Text="Cerrar Sesion" CssClass="btn btn-dark" OnClick="BtnCerrar_Click"/>

        </div>
    </form>
</body>
</html>
