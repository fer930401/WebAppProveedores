using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocio
{
    public class Variables
    {
        static string user_cve;
        public static string User_cve
        {
            get { return Variables.user_cve; }
            set { Variables.user_cve = value; }
        }
    }
}
