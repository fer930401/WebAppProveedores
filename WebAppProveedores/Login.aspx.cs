using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppProveedores
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string urlAplicacion = HttpContext.Current.Request.ApplicationPath+"PortalUsuarios";
            //string urlAplicacion = HttpContext.Current.Request.ApplicationPath + "PortalProveedor";
            urlAplicacion = urlAplicacion.TrimStart('/');

            if (urlAplicacion.Equals("PortalProveedor") == true)
            {
                ddlUsuarios.Visible = false;
                ddlUsuarios.Enabled = false;
                Session["visibleUsuario"] = "style = 'display:none;'";
                Session["visibleRFC"] = "";
            }
            else
            {
                txtRFC.Visible = false;
                txtRFC.Enabled = false;
                Session["visibleRFC"] = "style = 'display:none;'";
                Session["visibleUsuario"] = "";
            }
        }
    }
}