using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Repaso1_2doParcial
{
    public class PersonalAdm : Persona
    {
        public string NoIGGS { get; set; }
        public string Profession { get; set; }
        public DateTime DateStartWork { get; set; }
        public DateTime DateEndWork { get; set; }
    }
}