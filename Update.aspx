<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Repaso1_2doParcial.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Actualizar Alumno</h1>
    <p>
        &nbsp;Carné del alumno&nbsp;
        <asp:TextBox ID="TextBoxSearch" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonSearchStudent" runat="server" Text="Buscar Alumno" OnClick="ButtonSearchStudent_Click" />
    </p>
    <p>
        Nombre&nbsp;
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
    </p>
    <p>
        Apellido&nbsp;
        <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonModifyData" runat="server" Text="Modificar Datos" OnClick="ButtonModifyData_Click" />
    </p>
    <p>
        &nbsp;</p>
    <h1>Actualizar Profesor</h1>
    <p>
        &nbsp;ID profesor&nbsp;
        <asp:TextBox ID="TextBoxSearchProfessor" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonBuscarProf" runat="server" Text="Buscar Profesor" />
    </p>
    <p>
        Nombre&nbsp;
        <asp:TextBox ID="TextBoxName0" runat="server"></asp:TextBox>
    </p>
    <p>
        Apellido&nbsp;
        <asp:TextBox ID="TextBoxLastName0" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonModifyData0" runat="server" Text="Modificar Datos" OnClick="ButtonModifyData_Click" />
    </p>
    <p>
        &nbsp;</p>
    <h1>Actualizar Personal</h1>
    <p>
        IGSS Personal
        <asp:TextBox ID="TextBoxSearchPersonal" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonSearchPersonal" runat="server" Text="Buecar Personal" />
    </p>
    <p>
        Nombre&nbsp;
        <asp:TextBox ID="TextBoxName1" runat="server"></asp:TextBox>
    </p>
    <p>
        Apellido&nbsp;
        <asp:TextBox ID="TextBoxLastName1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonModifyData1" runat="server" Text="Modificar Datos" OnClick="ButtonModifyData_Click" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
