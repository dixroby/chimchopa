<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="EstudianteXsexo.aspx.cs" Inherits="pudge.app.EstudianteXsexo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="19pt" ForeColor="#000099" Text="Estudiantes por Sexo"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Maculino</asp:ListItem>
        <asp:ListItem>Femenino</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="Button1" runat="server" Text="Buscar" />
</asp:Content>
