<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="BorrarLibro.aspx.cs" Inherits="EstebanMendezExamenFinalP3.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="/CSS/Inicio.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
		<div class="clearfix header">
			<h1>Borrar Libros</h1>
			<!-- toggles 'add new budget item' form on click -->
		</div>

		<!-- 'add new budget item' form -->
		<div class="addItemForm">
			<div class="card">
				<div class="card-body">
					<asp:SqlDataSource ID="SqlLibroB" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAConnectionString2 %>" SelectCommand="MOSTRAR_LIBROS" SelectCommandType="StoredProcedure" DeleteCommand="BORRAR_LIBRO" DeleteCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="DLibro" Name="IDLIBRO" PropertyName="SelectedValue" Type="Int32" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
						<div class="form-group">
							<label for="DLibro">Libro que desea borrar: </label>
							<asp:DropDownList ID="DLibro" runat="server" DataSourceID="SqlLibroB" DataTextField="Column1" DataValueField="ID_Libro" AutoPostBack="True"></asp:DropDownList>
						&nbsp;</div>
					
					
					<asp:Button ID="BtnBorrar" class="btn btn-primary btn-block" runat="server" Text="Eliminar" OnClick="BtnBorrar_Click" />
					
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/momentjs/2.12.0/moment.min.js"></script>
	<script type="text/javascript" src="JS/Inicio.js"></script>
</asp:Content>
