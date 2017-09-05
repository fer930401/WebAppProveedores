using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppProveedores
{
    public partial class Facturas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_cve"] != null)
            {
                if (!IsPostBack)
                {
                    if (Session["usuario"].ToString().Equals("1") == true)
                    {
                        //LnkCambiaRFC.Visible = true;
                        lblUsuarioActivo.Text = "Usuario Actual:" + Session["nom_user"];
                        lblUsuarioActivo.Visible = true;
                    }
                    else
                    {
                        LblProveedor.Text = "Bienvenido " + Session["nom_user"].ToString();
                        LblProveedor.Attributes["style"] = "TEXT-ALIGN: right";
                    }
                }
            }
        }
        protected void CerrarSession(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}