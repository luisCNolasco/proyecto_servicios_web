using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Veterinaria.Models
{
    public class Usuario
    {
        public string codigo { get; set; }
        public string password { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string email { get; set; }

    }
}