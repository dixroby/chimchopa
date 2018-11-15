<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="carrera.aspx.cs" Inherits="pudge.app.carrera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_estudiante" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" ReadOnly="True" SortExpression="codigo_estudiante" />
            <asp:BoundField DataField="nombre_estudiante" HeaderText="nombre_estudiante" SortExpression="nombre_estudiante" />
            <asp:BoundField DataField="ap_estudiante" HeaderText="ap_estudiante" SortExpression="ap_estudiante" />
            <asp:BoundField DataField="am_estudiante" HeaderText="am_estudiante" SortExpression="am_estudiante" />
            <asp:BoundField DataField="correo_estudiante" HeaderText="correo_estudiante" SortExpression="correo_estudiante" />
            <asp:BoundField DataField="nombre_carrera" HeaderText="nombre_carrera" SortExpression="nombre_carrera" />
        </Columns>
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [alumnoXcarrera]"></asp:SqlDataSource>

<asp:SqlDataSource ID="ConsultaCarrera" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigo_carrera], [nombre_carrera], [facultad_carrera] FROM [tcarrera]"></asp:SqlDataSource>


</asp:Content>
