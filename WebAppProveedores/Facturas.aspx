<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facturas.aspx.cs" Inherits="WebAppProveedores.Facturas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skytex México</title>
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
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="Media/logoSkytex.png"  class="img-responsive"  width="20" height="20" />
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Proveedor.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"> </span> Inicio <span class="sr-only">(current)</span></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <asp:LinkButton ID="lnkCerrarSession" runat="server" OnClick="CerrarSession"><span class="glyphicon glyphicon-log-in" aria-hidden="true"> </span> Cerrar Sesion</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="panel panel-default">
                <br />
                <div class="panel-body">
                    <asp:Label ID="lblUsuarioActivo" runat="server" Text="Label" Visible ="false"></asp:Label>
                    
                </div>
                <ul class="nav nav-pills">
                    <li role="presentation"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Proveedor.aspx">Cambia Proveedor</asp:HyperLink></li>
                    <li role="presentation"><asp:HyperLink ID="HyperLink2" runat="server">Etiquetas</asp:HyperLink></li>
                    <li role="presentation"><asp:HyperLink ID="HyperLink3" runat="server">Acuses de Mercancía</asp:HyperLink></li>
                    <li role="presentation"><asp:HyperLink ID="HyperLink4" runat="server">Seguimiento</asp:HyperLink></li>
                    <li role="presentation"><asp:HyperLink ID="HyperLink5" runat="server">Subir Factura</asp:HyperLink></li>
                </ul>
                <br />
                <asp:Label ID="LblProveedor" runat="server" Font-Bold="True" ForeColor="#336699" Width="835px"></asp:Label>
                <br />
            </div>
        </div>
    
    </form>
    </div>
</body>
</html>
