<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Repaso1_2doParcial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Ingreso De Alumnos</h2>
            <p>
                Universidad</p>
            <p>
                <asp:DropDownList ID="DropDownListUni" runat="server">
                    <asp:ListItem>Mesoamericana</asp:ListItem>
                    <asp:ListItem>Lndivar</asp:ListItem>
                    <asp:ListItem>San Carlos</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Alumno</p>
            <p>
                Nombre&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            </p>
            <p>
                Apellido&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
            </p>
            <p>
                Direccion
                <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
            </p>
            <p>
                Fecha Nacimiento
                <asp:Calendar ID="CalendarBirth" runat="server"></asp:Calendar>
            </p>
            <p>
                Carné&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxId" runat="server"></asp:TextBox>
            </p>
            <p>
                su esdad es:
                <asp:Label ID="LabelAge" runat="server" Text="LabelEdad"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonCalculateAge" runat="server" OnClick="ButtonCalculateAge_Click" Text="Calcular Edad" />
            </p>
            <p>
                Notas</p>
            <p>
                Curso&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxCourse" runat="server"></asp:TextBox>
            </p>
            <p>
                Punteo&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxPTS" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonAddData" runat="server" OnClick="ButtonAddData_Click" Text="Ingresar Datos" />
            </p>
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="ButtonAddDataStudent" runat="server" Text="Ingresar Datos Alumno" Width="195px" OnClick="ButtonAddDataStudent_Click" />
            </p>
            <p>
                <asp:Button ID="ButtonAddUni" runat="server" Text="Ingresar Universidad" Width="195px" OnClick="ButtonAddUni_Click" />
            </p>
            <p>&nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Ingreso De Catedraticos</h2>
            <p>
                Catedratico</p>
            <p>
                Nombre&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxName2" runat="server"></asp:TextBox>
            </p>
            <p>
                Apellido&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxLastName2" runat="server"></asp:TextBox>
            </p>
            <p>
                Direccion
                <asp:TextBox ID="TextBoxAdress0" runat="server"></asp:TextBox>
            </p>
            <p>
                Fecha Nacimiento
                <asp:Calendar ID="CalendarBirth0" runat="server"></asp:Calendar>
            </p>
            <p>
                ID profesor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxId0" runat="server"></asp:TextBox>
            </p>
            <p>
                su esdad es:
                <asp:Label ID="LabelAgeProf" runat="server" Text="LabelEdad"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonCalcularEdadProf" runat="server" OnClick="ButtonCalcularEdadProf_Click" Text="Calcular Edad" Width="152px" />
            </p>
            <p>
                Titulo&nbsp;
                <asp:TextBox ID="TextBoxTitulo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
            <p>
                <asp:Button ID="Button6" runat="server" Text="Ingresar Datos Catedratico" Width="195px" OnClick="Button6_Click" />
            </p>
            <p>&nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Ingreso De Personal</h2>
            <p>
                Personal</p>
            <p>
                Nombre&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxName3" runat="server"></asp:TextBox>
            </p>
            <p>
                Apellido&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxLastName3" runat="server"></asp:TextBox>
            </p>
            <p>
                Direccion
                <asp:TextBox ID="TextBoxAdress1" runat="server"></asp:TextBox>
            </p>
            <p>
                Profecion
                <asp:TextBox ID="TextBoxProfecion" runat="server"></asp:TextBox>
            </p>
            <p>
                Fecha Nacimiento
                <asp:Calendar ID="CalendarBirth1" runat="server"></asp:Calendar>
            </p>
            <p>
                <span style="color: rgb(55, 58, 60); font-family: Lato; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">IGSS</span>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxIGSS" runat="server"></asp:TextBox>
            </p>
            <p>
                su esdad es:
                <asp:Label ID="LabelAge1" runat="server" Text="LabelEdad"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonCalcularDateAmd" runat="server" OnClick="ButtonCalcularDateAmd_Click" Text="Calcular Edad" />
            </p>
            <p>
                Inicio labores&nbsp;&nbsp;&nbsp; <asp:Calendar ID="CalendarStart" runat="server"></asp:Calendar>
            </p>
            <p>
                fin labores&nbsp;&nbsp; <asp:Calendar ID="CalendarEnd" runat="server"></asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
            <p>
                <asp:Button ID="Button9" runat="server" Text="Ingresar Datos Personal" Width="195px" OnClick="Button9_Click" />
            </p>
            <p>&nbsp;</p>
        </div>
    </div>

</asp:Content>
