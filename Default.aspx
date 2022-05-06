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
                Carné&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxId" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
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
                Universidad</p>
            <p>
                <asp:DropDownList ID="DropDownListUni0" runat="server">
                    <asp:ListItem>Mesoamericana</asp:ListItem>
                    <asp:ListItem>Lndivar</asp:ListItem>
                    <asp:ListItem>San Carlos</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Catedratico</p>
            <p>
                Nombre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxName0" runat="server"></asp:TextBox>
            </p>
            <p>
                Apellido&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxLastName0" runat="server"></asp:TextBox>
            </p>
            <p>
                ID profesor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxId0" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Notas</p>
            <p>
                Curso&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxCourse0" runat="server"></asp:TextBox>
            </p>
            <p>
                Punteo&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxPTS0" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Ingresar Notas" Width="110px" />
            </p>
            <asp:GridView ID="GridView3" runat="server">
            </asp:GridView>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="Button5" runat="server" Text="Ingresar Universidad" Width="195px" />
            </p>
            <p>
                <asp:Button ID="Button6" runat="server" Text="Ingresar Datos Alumno" Width="195px" />
            </p>
            <p>&nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Ingreso De Personal</h2>
            <p>
                Universidad</p>
            <p>
                <asp:DropDownList ID="DropDownListUni1" runat="server">
                    <asp:ListItem>Mesoamericana</asp:ListItem>
                    <asp:ListItem>Lndivar</asp:ListItem>
                    <asp:ListItem>San Carlos</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                Catedratico</p>
            <p>
                Nombre&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxName1" runat="server"></asp:TextBox>
            </p>
            <p>
                Apellido&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxLastName1" runat="server"></asp:TextBox>
            </p>
            <p>
                Carné&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxId1" runat="server"></asp:TextBox>
            </p>
            <p>
                Notas</p>
            <p>
                Curso&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxCourse1" runat="server"></asp:TextBox>
            </p>
            <p>
                Punteo&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxPTS1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Text="Ingresar Notas" Width="110px" />
            </p>
            <asp:GridView ID="GridView4" runat="server">
            </asp:GridView>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="Button8" runat="server" Text="Ingresar Universidad" Width="195px" />
            </p>
            <p>
                <asp:Button ID="Button9" runat="server" Text="Ingresar Datos Alumno" Width="195px" />
            </p>
            <p>&nbsp;</p>
        </div>
    </div>

</asp:Content>
