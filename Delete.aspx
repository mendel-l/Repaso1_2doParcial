<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Repaso1_2doParcial.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Eliminar</h1>
    <p>
        Carné del alumno
        <asp:TextBox ID="TextBoxSerchDelete" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonSearchStudent" runat="server" Text="Buscar Alumno" OnClick="ButtonSearchStudent_Click" />
    </p>
    <p>
        Nombre&nbsp;
        <asp:TextBox ID="TextBoxName" runat="server" Enabled="False"></asp:TextBox>
    </p>
    <p>
        Apellido&nbsp;
        <asp:TextBox ID="TextBoxLastName" runat="server" Enabled="False"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonDeleteData" runat="server" Text="Eliminar Alumno" OnClick="ButtonDeleteData_Click" />
    </p>
</asp:Content>
