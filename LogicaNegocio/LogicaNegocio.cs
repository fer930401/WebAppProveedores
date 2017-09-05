using System;
using System.Collections.Generic;
using System.Data;
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

        public DataTable ListaUser(string opc, string prm1)
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

        public DataTable ListaTipo(string rfc, string opc, string prm1, string prm2, string sp)
        {
            return datos.ListaTipo(rfc, opc, prm1, prm2, sp);
        }
    }
}
