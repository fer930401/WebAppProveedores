<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="WebAppProveedores.Proveedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selecciona el tipo de Proveedor</title>
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
        <br />
        <div class="container">
            <div class="panel panel-default">
                <br />
                <div class="panel-body">
                    <asp:Label ID="lblUsuario" runat="server" Text="Label"></asp:Label>
                </div>
                <br />
                <br />
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="lblTipoProv" runat="server" Text="Tipo de Proveedor: " />
                            <asp:DropDownList ID="ddlTipoProv" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="ddlTipoProv_SelectedIndexChanged" />
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="lblNombreProv" runat="server" Text="Nombre de Proveedor: "/>
                            <asp:DropDownList ID="ddlNombreProv" runat="server" CssClass="form-control" required />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-3">
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" CssClass="btn btn-skytex btn-lg" />
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>
                </div>
                    
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>            
        </div>
        <br />
        </form>
    </div>
</body>
</html>
