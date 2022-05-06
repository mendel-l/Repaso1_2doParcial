using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Repaso1_2doParcial
{
    public partial class Update : System.Web.UI.Page
    {
        static List<Universidad> universidades = new List<Universidad>();
        string SearchCarne;

        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Universidades.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            universidades = JsonConvert.DeserializeObject<List<Universidad>>(json);
        }
        protected void SaveJsonUnivercity()
        {
            string json = JsonConvert.SerializeObject(universidades);
            string archivo = Server.MapPath("Universidades.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        protected void ButtonSearchStudent_Click(object sender, EventArgs e)
        {
            SearchCarne = TextBoxSearch.Text;
            bool encontrado = false;

            foreach (var uni in universidades)
            {
                Alumno EditStudent = uni.Alumnos.Find(c => c.NoCarne == SearchCarne);

                if (EditStudent != null)
                {
                    TextBoxName.Text = EditStudent.FirstName;
                    TextBoxLastName.Text = EditStudent.LastName;
                    encontrado = true;
                }
            }
            if (!encontrado)
            {
                Response.Write("<script>alert('no se encontró el carné')</script>");
                SearchCarne = "";
                SearchCarne = "";
                TextBoxName.Text = "";
                TextBoxLastName.Text = "";
            }
        }
        protected void ButtonModifyData_Click(object sender, EventArgs e)
        {
            foreach(var u in universidades)
            {
                int Edit = u.Alumnos.FindIndex(c => c.NoCarne == SearchCarne);

                if (Edit > -1)
                {
                    u.Alumnos[Edit].FirstName = TextBoxName.Text;
                    u.Alumnos[Edit].LastName = TextBoxLastName.Text;

                    SaveJsonUnivercity();
                }
            }
        }
    }
}