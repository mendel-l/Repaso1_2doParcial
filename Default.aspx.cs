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
    public partial class _Default : Page
    {
        static List<Nota> notasTemp = new List<Nota>();
        static List<Alumno> alumnoTemp = new List<Alumno>();
        static List<Universidad> universidad = new List<Universidad>();
        //para calcular la edad
        //label"nombre".Text = "nombre de la cosa esa".CalculateDate().ToString();
        private void SaveJsonUnivercity()
        {
            string json = JsonConvert.SerializeObject(universidad);
            string archivo = Server.MapPath("Universidades.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        private void ReadJsonUnivercity()
        {
            string archivo = Server.MapPath("Universidades.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                universidad = JsonConvert.DeserializeObject<List<Universidad>>(json);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReadJsonUnivercity();
            }
        }
        protected void ButtonAddData_Click(object sender, EventArgs e)
        {
            Nota nota = new Nota();
            nota.Curso = TextBoxCourse.Text;
            nota.Punteo = Convert.ToInt16(TextBoxPTS.Text);

            notasTemp.Add(nota);

            GridView2.DataSource = notasTemp;
            GridView2.DataBind();
        }
        protected void ButtonAddDataStudent_Click(object sender, EventArgs e)
        {
            Alumno alumno = new Alumno();
            alumno.FirstName = TextBoxName.Text;
            alumno.LastName = TextBoxLastName.Text;
            alumno.NoCarne = TextBoxId.Text;
            alumno.Notas = notasTemp.ToArray().ToList();

            alumnoTemp.Add(alumno);
            notasTemp.Clear();
        }
        protected void ButtonAddUni_Click(object sender, EventArgs e)
        {
            Universidad uni = new Universidad();
            uni.NombreU = DropDownListUni.SelectedValue; 
            uni.Alumnos = alumnoTemp.ToArray().ToList();

            universidad.Add(uni);
            SaveJsonUnivercity();
        }
    }
}