using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Repaso1_2doParcial
{
    public class Universidad
    {
        public string NombreU { get; set; }
        public string Sede { get; set; }
        public List<Alumno> Alumnos { get; set; }
    }
}