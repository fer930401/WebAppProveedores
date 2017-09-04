using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos
{
    public class AccesoDatos
    {
        skytexEntities contexto;
        public AccesoDatos()
        {
            contexto = new skytexEntities();
        }

        public List<consWeb_Result> ListaUsers(string opc, string prm1)
        {
            return (contexto.consWeb(opc, prm1, null, null, 0, null, null, null, null)).ToList();
        }

        public string validaUsuario(string ef_cve, string user_cve, string password)
        {
            string user_val = "";
            var validacion = (from val in contexto.xcuser
                              where val.ef_cve.Equals(ef_cve) &&
                                    val.user_cve.Equals(user_cve) &&
                                    val.password.Equals(password)
                              select val).SingleOrDefault();
            if (validacion != null)
            {
                if (string.IsNullOrEmpty(validacion.nombre) == false)
                {
                    user_val = validacion.nombre;
                }
                else
                {
                    user_val = "";
                }
            }
            return user_val;
        }

        public List<sp_accesoweb_Result> validaUsuarioRFC(string ef_cve, string user_cve, string password)
        {
            return (contexto.sp_accesoweb(user_cve, password)).ToList();
        }
    }
}
