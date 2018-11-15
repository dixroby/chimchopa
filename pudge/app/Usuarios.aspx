<%@ Page Title="" Language="C#" MasterPageFile="~/app/Sites1.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="pudge.app.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:sqldatasource runat="server" id="Testudiante" ConnectionString="Data Source=DataDirectory|\DB.sdf"
        ProviderName="System.Data.SqlServerCe.4.0"
        SelectCommand="select * from  testudiante">

    </asp:sqldatasource>

    <asp:gridview runat="server" id="GridView1" DataSourceID="Testudiante" >
        <Columns>
            <asp:BoundField DataField="codigo_estudiante" HeaderText="Identificador" />
            <asp:BoundField DataField="codigo_estudiante" HeaderText="Indentificador" />
            <asp:BoundField DataField="codigo_estudiante" HeaderText="Identificador" />
            <asp:BoundField DataField="codigo_estudiante" HeaderText="Identificador" />
            <asp:BoundField DataField="codigo_estudiante" HeaderText="Identificador" />
            <asp:BoundField DataField="codigo_estudiante" HeaderText="Identificador" />
            <asp:BoundField DataField="codigo_estudiante" HeaderText="Identificador" />


        </Columns>
    </asp:gridview>
</asp:Content>
