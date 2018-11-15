<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="webConsultaEstudiante.aspx.cs" Inherits="pudge.app.webConsultaEstudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <p>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="19pt" Text="buscar Estudiante"></asp:Label>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Digitar apellido paterno"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</p>
<p>
</p>


</asp:Content>
