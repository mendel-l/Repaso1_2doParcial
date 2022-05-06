using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Repaso1_2doParcial
{
    public class Persona
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int Address { get; set; }
        public DateTime DateOfBirth { get; set; }

        public int CalculateDate()
        {
            DateTime Hoy = DateTime.Now;
            int edadActual = Hoy.Year - DateOfBirth.Year;

            if (DateOfBirth.Month > Hoy.Month)
            {
                edadActual--;
            }
            return edadActual;
        }
    }
}