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
    <script type="text/javascript">
        function ShowProgress() {
            document.getElementById('<% Response.Write(UpdateProgress1.ClientID); %>').style.display = "inline";
    }
</script>
    <style type="text/css">
    .overlay
    {
        position: fixed;
        z-index: 98;
        top: 0px;
        left: 0px;
        right: 0px;
        bottom: 0px;
        background-color: #aaa;
        filter: alpha(opacity=80);
        opacity: 0.8;
    }
    .overlayContent
    {
        text-align:center;
        z-index: 99;
        margin: 250px auto;
        width: 400px;
        height: 80px;
    }
    .overlayContent h2
    {
        font-size: 18px;
        font-weight: bold;
        color: #000;
    }
    .overlayContent img
    {
        width: 80px;
        height: 80px;
    }
    
    /*GCM 05012015 estilo*/
    .style1
    {
        height: 23px;
    }
    
    .styloMenu
    {
	    border: 0px solid #999;
        float: left;
	    padding: 0px;
	    height: 31px; 
	    line-height: 31px; 
	    overflow: hidden;
	    position: relative;
        margin-left: 0px;
        margin-right: 0px;
        margin-top: 0px;
        text-decoration:none;
        color:#336699; 
        font-weight: bold;      
        
    }
  
    .fondo
    {
	   background-color: #D3D3D3;
       width: 866px;              
    }  
    /*GCM 05012015 estilo*/
      
</style>
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
                            <img alt="Brand" src="Media/logoSkytex.png" class="img-responsive" width="20" height="20" />
                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="Proveedor.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Inicio <span class="sr-only">(current)</span></a></li>
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
                        <div class="row">
                            <asp:Label ID="lblUsuarioActivo" runat="server" Text="Label" Visible="false"></asp:Label>
                        </div>
                        <div class="row">
                            <br />
                            <ul class="nav nav-pills">
                                <li>
                                    <asp:LinkButton ID="cambiaProve" runat="server" OnClick="cambiaProve_Click">Cambia Proveedor</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="etiquetas" runat="server" OnClick="etiquetas_Click">Etiquetas</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="AcuseMerca" runat="server" OnClick="AcuseMerca_Click">Acuses de Mercancía</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="seguimiento" runat="server" OnClick="seguimiento_Click">Seguimiento</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="subirFact" runat="server" OnClick="subirFact_Click">Subir Factura</asp:LinkButton></li>
                            </ul>
                            <br />
                        </div>
                        <div class="row">
                            <br />
                            <div class="col-md-12">
                                <asp:Label ID="LblProveedor" runat="server" Font-Bold="True" ForeColor="#336699"></asp:Label>
                            </div>
                            <br />
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="rdlFactura" EventName="SelectedIndexChanged" />
                                        </Triggers>
                                        <ContentTemplate>
                                            <br />
                                            <br />
                                            <asp:Panel ID="pnlRFac" runat="server">
                                                <asp:Label ID="lblMensaje" runat="server" Text="No hay documentos por facturar" Visible="False" />
                                                <asp:Label ID="lblrdlFac" runat="server" Text="Tipo de factura a subir: " Visible="False" />
                                                <asp:RadioButtonList ID="rdlFactura" runat="server" OnSelectedIndexChanged="rdlFactura_SelectedIndexChanged" AutoPostBack="True">
                                                </asp:RadioButtonList>
                                                <asp:Label ID="lblContrato" runat="server" Text="No. Contrato: " Visible="False" />
                                                <asp:DropDownList ID="ddlContrato" runat="server" Visible="False" AutoPostBack="False" />

                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="row">
                                    <asp:UpdatePanel runat="server" ID="upUfiles" UpdateMode="Conditional">
                                        <Triggers>
                                            <asp:PostBackTrigger ControlID="BtnAdjuntarXML" />
                                        </Triggers>
                                        <ContentTemplate>

                                            <asp:Panel ID="pnlupfile" runat="server">
                                                <asp:Label ID="lblXML" runat="server" Text="Ingrese la ruta del archivo XML a enviar: " Visible="True" />
                                                <asp:FileUpload ID="AdjXML" runat="server" ViewStateMode="Disabled" Width="830px" accept=".xml" Visible="True" />
                                                <asp:Label ID="lblPDF" runat="server" Text="Ingrese la ruta del archivo PDF a enviar: " Visible="True" />
                                                <asp:FileUpload ID="AdjPDF" runat="server" ViewStateMode="Disabled" Width="830px" accept=".pdf" Visible="True" />

                                                <br />


                                                <asp:Label runat="server" ID="TxtMensajes" BorderStyle="None" BorderWidth="0px" Font-Bold="True"
                                                    ForeColor="Maroon" TextMode="MultiLine"
                                                    Font-Names="Calibri" Font-Size="Small" />
                                                <asp:Label runat="server" ID="TxtMensajeExitoso" BorderStyle="None" BorderWidth="0px" Font-Bold="True"
                                                    ForeColor="Green" TextMode="MultiLine"
                                                    Font-Names="Calibri" Font-Size="Small" />

                                            </asp:Panel>
                                            <br />
                                            <asp:Button class="btnCommand" ID="BtnAdjuntarXML" Text="Adjuntar" runat="server"
                                                OnClientClick="ShowProgress();" Visible="false" />
                                        </ContentTemplate>

                                    </asp:UpdatePanel>
                                </div>
                                <div class="row">
                                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="0" AssociatedUpdatePanelID="upUfiles">
                                        <ProgressTemplate>
                                            <div class="overlay" />
                                            <div class="overlayContent">
                                                <h2>Procesando archivos espere un momento...</h2>
                                                <img src="Layouts/images/img/loading.gif" alt="Loading" border="0" />
                                            </div>
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                    <asp:Button ID="BtnImprimir" runat="server" Text="Imprimir Contra Recibo" Visible="False" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>
</body>
</html>
