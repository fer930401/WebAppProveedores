using LogicaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppProveedores
{
    public partial class Login : System.Web.UI.Page
    {
        LogicaNegocio.LogicaNegocio logicaNegocio = new LogicaNegocio.LogicaNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string urlAplicacion = HttpContext.Current.Request.ApplicationPath + "PortalUsuarios";
                string urlAplicacion = HttpContext.Current.Request.ApplicationPath + "PortalProveedor";
                urlAplicacion = urlAplicacion.TrimStart('/');

                if (urlAplicacion.Equals("PortalProveedor") == true)
                {
                    ddlUsuarios.Visible = false;
                    ddlUsuarios.Enabled = false;
                    Session["visibleUsuario"] = "style = 'display:none;'";
                    Session["visibleRFC"] = "";

                    if (string.IsNullOrEmpty(Variables.User_cve) == false)
                    {
                        txtRFC.Text = Variables.User_cve;
                    }
                }
                else
                {
                    DataTable usuario = logicaNegocio.ListaUser("usrEnt", "001");
                    ddlUsuarios.DataSource = usuario;
                    ddlUsuarios.DataTextField = "nombre";
                    ddlUsuarios.DataValueField = "user_cve";
                    ddlUsuarios.DataBind();
                    ddlUsuarios.Items.Insert(0, new ListItem("------Selecciona un usuario------", "NA"));

                    if (string.IsNullOrEmpty(Variables.User_cve) == false)
                    {
                        ddlUsuarios.SelectedValue = Variables.User_cve;
                    }

                    txtRFC.Visible = false;
                    txtRFC.Enabled = false;
                    Session["visibleRFC"] = "style = 'display:none;'";
                    Session["visibleUsuario"] = "";
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string ef_cve = "001";
            string rfc = txtRFC.Text;
            string user_cve = ddlUsuarios.SelectedValue;
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(rfc) == true)
            {
                string validaUser = logicaNegocio.validaUsuario(ef_cve, user_cve, password);
                if (string.IsNullOrEmpty(validaUser) == false)
                {
                    Session["user_cve"] = user_cve;
                    Session["nom_user"] = validaUser;
                    Session["usuario"] = 1;
                    /* redirige al formulario para la seleccion del tipo de proveedor y el nombre del proveedor */
                    Response.Redirect("Proveedor.aspx", false);
                }
                else
                {
                    Variables.User_cve = user_cve;
                    Response.Write("<script type=\"text/javascript\">alert('La informacion ingresada no es correcta, verifique de nuevo'); window.location.href = window.location.href</script>");
                }
            }
            else
            {
                var validaUser = logicaNegocio.validaUsuarioRFC(ef_cve, rfc, password);
                if (validaUser.Count > 0)
                {
                    if (string.IsNullOrEmpty(validaUser[0].rfc) == false)
                    {
                        Session["user_cve"] = rfc;
                        Session["nom_user"] = validaUser[0].proveedor;
                        Session["usuario"] = 0;
                        Response.Redirect("Facturas.aspx", false);
                    }
                }
                else
                {
                    Variables.User_cve = rfc;
                    Response.Write("<script type=\"text/javascript\">alert('La informacion ingresada no es correcta, verifique de nuevo'); window.location.href = window.location.href</script>");
                }
            }
        }
    }
}