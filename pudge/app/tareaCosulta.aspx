<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="tareaCosulta.aspx.cs" Inherits="pudge.tareaCosulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    seleccone</p>
<p>
    <asp:RadioButtonList ID="rdOpcion" runat="server" ForeColor="#D4A866">
        <asp:ListItem>Nombre</asp:ListItem>
        <asp:ListItem>Apellido Paterno</asp:ListItem>
        <asp:ListItem>Apellido Materno</asp:ListItem>
        <asp:ListItem>Codigo</asp:ListItem>
    </asp:RadioButtonList>
</p>
<p>
    ingrese :
    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
</p>
<p>
    <asp:DropDownList ID="CmbOpcion" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_carrera" DataValueField="nombre_carrera">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nombre_carrera] FROM [tcarrera]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="tTabla" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</p>
<p>
    &nbsp;</p>
</asp:Content>
