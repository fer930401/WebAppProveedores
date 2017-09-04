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
                        <img alt="Brand" src="Media/logoSkytex.png" width="20%" height="10%" />
                    </a>
                </div>
            </div>
        </nav>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <br />
                <br />
                <div class="row">
                    <div class="col-md-3">
                        <img src="Media/logo_skytex.png" />
                    </div>
                    <div class="col-md-9">
                        <form id="form1" runat="server">
                            <div class="form-group" <% Response.Write(Session["visibleUsuario"]); %>>
                                <label for="ddlUsuarios">Usuario:</label>
                                <asp:DropDownList ID="ddlUsuarios" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="form-group" <% Response.Write(Session["visibleRFC"]); %>>
                                <label for="ddlUsuarios">RFC:</label>
                                <asp:TextBox ID="txtRFC" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="txtPassword">Contraseña:</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>
                            <br />
                            <asp:Button ID="btnLogin" runat="server" Text="Entrar" CssClass="btn btn-skytex" OnClick="btnLogin_Click" />
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <br />
                        <br />
                        <br />
                        <strong>AVISO</strong>
                        <br />
                        "ES RESPONSABILIDAD DEL PROVEEDOR EL CERCIORARSE QUE SU FACTURA TENGA FOLIO
                        FISCAL VIGENTE, YA QUE NUESTRO SISTEMA VALIDA TAL SITUACIÓN.<br />
                        EN CASO QUE NO ESTE VIGENTE EL FOLIO FISCAL ENTREGADO, DEBERAN ENTREGAR OTRO
                        FOLIO Y EL PLAZO DE CREDITO VOLVERA A EMPEZAR A PARTIR DE ESA FECHA PROCEDIENDO
                        A FACTURAR CON UN 3% SOBRE VALOR FACTURA + IVA COMO GASTOS ADMINISTRATIVO ADICIONAL"<br />
                        <!--<h3><a href="Files/FechaLimiteFacturas2016.pdf" target="_blank" style=" padding: 20px; ">Fechas límite para recibir facturas electrónicas 2016 </a></h3>-->
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>

    </div>
</body>
</html>
