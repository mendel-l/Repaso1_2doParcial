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
        static List<Nota> notas = new List<Nota>();
        static List<Alumno> alumnos = new List<Alumno>();
        static List<Profesor> profesores = new List<Profesor>();
        static List<PersonalAdm> personaladm = new List<PersonalAdm>();
        static List<Universidad> universidad = new List<Universidad>();

        int edad = 0;
        int edadProf = 0;
        int edadAdm = 0;
        private void calculateDatesAlumno()
        {
            DateTime FechaHoy = DateTime.Today;
            edad = FechaHoy.Year - CalendarBirth.SelectedDate.Year;
            LabelAge.Text = edad.ToString();
        }
        private void calculateDatesProfesor()
        {
            DateTime FechaHoy = DateTime.Today;
            edadProf = FechaHoy.Year - CalendarBirth0.SelectedDate.Year;
            LabelAgeProf.Text = edadProf.ToString();
        }
        private void calculateDatesPersonal()
        {
            DateTime FechaHoy = DateTime.Today;
            edadAdm = FechaHoy.Year - CalendarBirth.SelectedDate.Year;
            LabelAge.Text = edadAdm.ToString();
        }
        private void SaveJsonUnivercity()
        {
            string json = JsonConvert.SerializeObject(universidad);
            string archivo = Server.MapPath("zUniversidades.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        private void ReadJsonUnivercity()
        {
            string archivo = Server.MapPath("zUniversidades.json");
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
                ReadJsonStudents();
                ReadJsonProffessor();
                ReadJsonPersonal();
            }
        }

        //----------------Alumnos-----------------//
        private void SaveJsonStudents()
        {
            string json = JsonConvert.SerializeObject(alumnos);
            string archivo = Server.MapPath("zAlumnos.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        private void ReadJsonStudents()
        {
            string archivo = Server.MapPath("zAlumnos.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                alumnos = JsonConvert.DeserializeObject<List<Alumno>>(json);
            }
        }
        protected void ButtonAddData_Click(object sender, EventArgs e)
        {
            Nota nota = new Nota();
            nota.Curso = TextBoxCourse.Text;
            nota.Punteo = Convert.ToInt16(TextBoxPTS.Text);

            notas.Add(nota);

            GridView2.DataSource = notas;
            GridView2.DataBind();
        }
        protected void ButtonAddDataStudent_Click(object sender, EventArgs e)
        {
            Alumno alumno = new Alumno();
            alumno.FirstName = TextBoxName.Text;
            alumno.LastName = TextBoxLastName.Text;
            alumno.Address = TextBoxAddress.Text;
            alumno.DateOfBirth = CalendarBirth.SelectedDate;
            alumno.NoCarne = TextBoxId.Text;
            alumno.Notas = notas.ToArray().ToList();

            alumnos.Add(alumno);
            SaveJsonStudents();
            notas.Clear();
        }
        protected void ButtonAddUni_Click(object sender, EventArgs e)
        {
            Universidad uni = new Universidad();
            uni.NombreU = DropDownListUni.SelectedValue; 
            uni.Alumnos = alumnos.ToArray().ToList();

            universidad.Add(uni);
            SaveJsonUnivercity();
            alumnos.Clear();
        }

        protected void ButtonCalculateAge_Click(object sender, EventArgs e)
        {
            calculateDatesAlumno();
        }

        //------------------Profesores-----------------------//
        private void SaveJsonProffessor()
        {
            string json = JsonConvert.SerializeObject(profesores);
            string archivo = Server.MapPath("zCatedraticos.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        private void ReadJsonProffessor()
        {
            string archivo = Server.MapPath("zCatedraticos.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                profesores = JsonConvert.DeserializeObject<List<Profesor>>(json);
            }
        }
        protected void Button6_Click(object sender, EventArgs e)
        {

            Profesor prof = new Profesor();
            prof.FirstName = TextBoxName2.Text;
            prof.LastName = TextBoxLastName2.Text;
            prof.Address = TextBoxAdress0.Text;
            prof.DateOfBirth = CalendarBirth0.SelectedDate;
            prof.IDProfessor = TextBoxId0.Text;
            prof.Titulo = TextBoxTitulo.Text;

            profesores.Add(prof);
            SaveJsonProffessor();
        }

        protected void ButtonCalcularEdadProf_Click(object sender, EventArgs e)
        {
            calculateDatesProfesor();
        }

        //----------------Personal------------------------------//
        private void SaveJsonPersonal()
        {
            string json = JsonConvert.SerializeObject(personaladm);
            string archivo = Server.MapPath("zPersonal.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        private void ReadJsonPersonal()
        {
            string archivo = Server.MapPath("zPersonal.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                personaladm = JsonConvert.DeserializeObject<List<PersonalAdm>>(json);
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            PersonalAdm datosPersonal = new PersonalAdm();
            datosPersonal.FirstName = TextBoxName3.Text;
            datosPersonal.LastName = TextBoxLastName3.Text;
            datosPersonal.Address = TextBoxAdress1.Text;
            datosPersonal.Profession = TextBoxProfecion.Text;
            datosPersonal.DateOfBirth = CalendarBirth1.SelectedDate;
            datosPersonal.NoIGGS = TextBoxIGSS.Text;
            datosPersonal.DateStartWork = CalendarStart.SelectedDate;
            datosPersonal.DateEndWork = CalendarEnd.SelectedDate;

            personaladm.Add(datosPersonal);
            SaveJsonPersonal();
        }

        protected void ButtonCalcularDateAmd_Click(object sender, EventArgs e)
        {
            calculateDatesPersonal();
        }
    }
}