using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocio
{
    public class LogicaNegocio
    {
        AccesoDatos.AccesoDatos datos;

        public LogicaNegocio()
        {
            datos = new AccesoDatos.AccesoDatos();
        }

        public List<AccesoDatos.consWeb_Result> ListaUser(string opc, string prm1)
        {
            return datos.ListaUsers(opc, prm1);
        }

        public string validaUsuario(string ef_cve, string user_cve, string password)
        {
            return datos.validaUsuario(ef_cve, user_cve, password);
        }

        public List<AccesoDatos.sp_accesoweb_Result> validaUsuarioRFC(string ef_cve, string user_cve, string password)
        {
            return datos.validaUsuarioRFC(ef_cve, user_cve, password);
        }
    }
}
