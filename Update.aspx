<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Repaso1_2doParcial.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Actualizar</h1>
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
</asp:Content>
