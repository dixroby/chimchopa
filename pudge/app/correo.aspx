<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="correo.aspx.cs" Inherits="pudge.app.correo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="codigo_estudiante,codigo_carrera" DataSourceID="Correos" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" ReadOnly="True" SortExpression="codigo_estudiante" />
            <asp:BoundField DataField="nombre_estudiante" HeaderText="nombre_estudiante" SortExpression="nombre_estudiante" />
            <asp:BoundField DataField="correo_estudiante" HeaderText="correo_estudiante" SortExpression="correo_estudiante" />
            <asp:BoundField DataField="facultad_carrera" HeaderText="facultad_carrera" SortExpression="facultad_carrera" />
            <asp:BoundField DataField="nombre_carrera" HeaderText="nombre_carrera" SortExpression="nombre_carrera" />
            <asp:BoundField DataField="codigo_carrera" HeaderText="codigo_carrera" ReadOnly="True" SortExpression="codigo_carrera" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="Correos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigo_estudiante], [nombre_estudiante], [correo_estudiante], [facultad_carrera], [nombre_carrera], [codigo_carrera] FROM [correo]"></asp:SqlDataSource>

 
</asp:Content>
