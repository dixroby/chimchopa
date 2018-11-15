<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="estudiante.aspx.cs" Inherits="pudge.app.estudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="codigo_estudiante" DataSourceID="ConsultaEstudiante" GridLines="None">
        <Columns>
            <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" ReadOnly="True" SortExpression="codigo_estudiante" />
            <asp:BoundField DataField="nombre_estudiante" HeaderText="nombre_estudiante" SortExpression="nombre_estudiante" />
            <asp:BoundField DataField="ap_estudiante" HeaderText="ap_estudiante" SortExpression="ap_estudiante" />
            <asp:BoundField DataField="am_estudiante" HeaderText="am_estudiante" SortExpression="am_estudiante" />
            <asp:BoundField DataField="codigo_carrera" HeaderText="codigo_carrera" SortExpression="codigo_carrera" />
            <asp:BoundField DataField="sexo_estudiante" HeaderText="sexo_estudiante" SortExpression="sexo_estudiante" />
            <asp:BoundField DataField="correo_estudiante" HeaderText="correo_estudiante" SortExpression="correo_estudiante" />
            <asp:BoundField DataField="foto" HeaderText="foto" SortExpression="foto" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>







    <asp:SqlDataSource ID="ConsultaEstudiante" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [testudiante]"></asp:SqlDataSource>







</asp:Content>
