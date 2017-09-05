using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppProveedores
{
    public partial class Proveedor : System.Web.UI.Page
    {
        LogicaNegocio.LogicaNegocio logicaNegocio = new LogicaNegocio.LogicaNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_cve"] != null)
            {
                if (!IsPostBack)
                {
                    DataTable tipos = logicaNegocio.ListaTipo("?", "TipoProv", "?", "?", "sp_cboWebXML");
                    lblUsuario.Text = "Usuario Actual: " + Session["nom_user"].ToString();

                    ddlTipoProv.DataSource = tipos;
                    ddlTipoProv.DataTextField = "descripcion";
                    ddlTipoProv.DataValueField = "valor";
                    ddlTipoProv.DataBind();
                    ddlTipoProv.Items.Insert(0, new ListItem("Selecciona un tipo", "NA"));
                }
            }
            else
            {
                Response.Redirect("Login.aspx", false);
            }
        }
        protected void CerrarSession(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void ddlTipoProv_SelectedIndexChanged(object sender, EventArgs e)
        {
            string prm2 = ddlTipoProv.SelectedValue;
            if (prm2.Equals("CH") == true)
            {
                ddlNombreProv.Items.Insert(0,"De clic en ingresar");
            }
            else
            {            
                DataTable proveedores = logicaNegocio.ListaTipo("?", "RfcProvXTipo", "?", prm2, "sp_cboWebXML");

                ddlNombreProv.DataSource = proveedores;
                ddlNombreProv.DataTextField = "descripcion";
                ddlNombreProv.DataValueField = "valor";
                ddlNombreProv.DataBind();
                ddlNombreProv.Items.Insert(0, new ListItem("", ""));
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Facturas.aspx", false);
        }
    }
}