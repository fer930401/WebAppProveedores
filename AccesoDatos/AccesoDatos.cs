using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
        string conexion = @"Data Source=SQL;Initial Catalog=skytex;User ID=soludin_develop;Password=dinamico20";

        public DataTable ListaUsers(string opc, string prm1)
        {
            //return (contexto.consWeb(opc, prm1, null, null, 0, null, null, null, null)).ToList();
            DataTable usuarios = new DataTable();
            try
            {
                SqlConnection _conn = new SqlConnection(conexion);
                SqlCommand _cmd = new SqlCommand();
                _cmd.Connection = _conn;
                _cmd.CommandType = CommandType.Text;
                _cmd.CommandText = String.Format("exec consWeb '{0}','{1}'", opc, prm1);
                SqlDataAdapter _da = new SqlDataAdapter(_cmd);
                _conn.Open();
                _cmd.ExecuteNonQuery();
                _da.Fill(usuarios);
                _conn.Close();
            }
            catch (Exception e)
            {
                e.Message.ToString();
            }
            return usuarios;
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

        public DataTable ListaTipo(string rfc, string opc, string prm1, string prm2, string sp)
        {
            DataTable tipos = new DataTable();
            try
            {
                SqlConnection _conn = new SqlConnection(conexion);
                SqlCommand _cmd = new SqlCommand();
                _cmd.Connection = _conn;
                _cmd.CommandType = CommandType.Text;
                _cmd.CommandText = String.Format("exec {4} '{0}','{1}','{2}','{3}'", rfc, opc, prm1, prm2, sp);
                SqlDataAdapter _da = new SqlDataAdapter(_cmd);
                _conn.Open();
                _cmd.ExecuteNonQuery();
                _da.Fill(tipos);
                _conn.Close();
            }
            catch (Exception e)
            {
                e.Message.ToString();
            }
            return tipos;
        }
    }
}
