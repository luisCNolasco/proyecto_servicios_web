using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proyecto_Veterinaria.Models;

namespace Proyecto_Veterinaria.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult IniciarSesion(string usu,string pass)
        {
            if(usu.Equals("hola") && pass.Equals("123"))
            {
                return View();
            }
            else
            {
                ViewBag.mensaje = "Usuario o contraseña incorrecta";
                return RedirectToAction("InicioSesion","Home");
            }
            
        }
    }
}