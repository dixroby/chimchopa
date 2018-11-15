<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="carrera.aspx.cs" Inherits="pudge.app.carrera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_carrera" DataSourceID="ConsultaCarrera">
        <Columns>
            <asp:BoundField DataField="codigo_carrera" HeaderText="codigo_carrera" ReadOnly="True" SortExpression="codigo_carrera" />
            <asp:BoundField DataField="nombre_carrera" HeaderText="nombre_carrera" SortExpression="nombre_carrera" />
            <asp:BoundField DataField="facultad_carrera" HeaderText="facultad_carrera" SortExpression="facultad_carrera" />
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


<asp:SqlDataSource ID="ConsultaCarrera" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigo_carrera], [nombre_carrera], [facultad_carrera] FROM [tcarrera]"></asp:SqlDataSource>


</asp:Content>
