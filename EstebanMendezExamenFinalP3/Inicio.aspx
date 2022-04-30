<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EstebanMendezExamenFinalP3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link rel="stylesheet" href="/CSS/Inicio.css" type="text/css" media="screen" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Visualizar Biblioteca:</h2>
	<div>
    <p>
            <!-- filter items by category -->
			<asp:SqlDataSource ID="SqlLibros" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAConnectionString %>" SelectCommand="TABLA_GENERAL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
		</p>

		<!-- budget items table -->
	   <asp:GridView ID="Tabla1" class="table table-striped" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlLibros" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="Nombre del autor" HeaderText="Nombre del autor" SortExpression="Nombre del autor" />
               <asp:BoundField DataField="Cedula del autor" HeaderText="Cedula del autor" SortExpression="Cedula del autor" />
               <asp:BoundField DataField="Nacionalidad del autor" HeaderText="Nacionalidad del autor" SortExpression="Nacionalidad del autor" />
               <asp:BoundField DataField="Nombre del Libro" HeaderText="Nombre del Libro" SortExpression="Nombre del Libro" />
               <asp:BoundField DataField="Fecha de publicación" HeaderText="Fecha de publicación" SortExpression="Fecha de publicación" />
               <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
           </Columns>
           <EditRowStyle BackColor="#2461BF" />
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#EFF3FB" />
           <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#F5F7FB" />
           <SortedAscendingHeaderStyle BackColor="#6D95E1" />
           <SortedDescendingCellStyle BackColor="#E9EBEF" />
           <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
</asp:Content>
