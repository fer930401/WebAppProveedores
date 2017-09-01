<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAppProveedores.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Portal Proveedores</title>
    <!-- asignacion de icono de barra de navegador -->
    <link rel="shortcut icon" href="<%=ResolveUrl("~/Media/skytex.ico") %>" />
    <!-- CSS  -->
    <link href="<%=ResolveUrl("Content/bootstrap.css") %>" type="text/css" rel="stylesheet" media="screen,projection" />

    <!-- JS -->
    <script type="text/javascript" src="<%= ResolveUrl("Scripts/bootstrap.js") %>"></script>
    <script type="text/javascript" src="<%= ResolveUrl("Scripts/jquery-1.10.2.js") %>"></script>
</head>
<body>
    <div class="container-fluid">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="..."/>
                    </a>
                </div>
            </div>
        </nav>
        <form id="form1" runat="server">
            <div>
            </div>
        </form>
    </div>
</body>
</html>
