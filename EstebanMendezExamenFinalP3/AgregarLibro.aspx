<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMaster.Master" AutoEventWireup="true" CodeBehind="AgregarLibro.aspx.cs" Inherits="EstebanMendezExamenFinalP3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <link rel="stylesheet" href="/CSS/Inicio.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
		<div class="clearfix header">
			<h1>Agregar Libro</h1>
			<!-- toggles 'add new budget item' form on click -->
		</div>

		<!-- 'add new budget item' form -->
		<div class="addItemForm">
			<div class="card">
				<div class="card-body">
					<asp:SqlDataSource ID="SqlLibros" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAConnectionString %>" InsertCommandType="StoredProcedure" SelectCommand="TABLA_GENERAL" SelectCommandType="StoredProcedure" InsertCommand="AGREGAR_LIBROS">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="Librotxt" Name="NombreLibro" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TxtUbicacion" Name="Ubicacion" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Txtfecha" Name="FechaPublicacion" PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="DdAutor" Name="IDAutor" PropertyName="SelectedValue" Type="Int32" />
                        </InsertParameters>
                    </asp:SqlDataSource>
						<div class="form-group">
						<label for="Librotxt">Nombre del Libro:</label>
							<asp:TextBox ID="Librotxt" class="form-control" runat="server" Width="879px" placeholder="Nombre del Libro"></asp:TextBox>
						    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Librotxt" ErrorMessage="Espacio vacio"></asp:RequiredFieldValidator>
					</div>
					
					<div class="form-group">
							<label for="Txtfecha">Fecha de publicación:</label>
							<asp:TextBox ID="Txtfecha" class="form-control" runat="server" Width="879px" TextMode="DateTime" placeholder="Día-Mes-Año"></asp:TextBox>
						    <asp:RequiredFieldValidator ID="FechaRV" runat="server" ControlToValidate="Txtfecha" ErrorMessage="Espacio vacio"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="ValidarFecha" runat="server" ErrorMessage="No es una fecha valida, por favor digite una fecha correcta" ControlToValidate="Txtfecha" ValidationExpression="^(?:3[01]|[12][0-9]|0?[1-9])([\-/.])(0?[1-9]|1[1-2])\1\d{4}$"></asp:RegularExpressionValidator>
					</div>
					<div class="form-group">
							<label for="DdAutor">Autor:</label>
							<asp:DropDownList ID="DdAutor" class="form-control" runat="server" AutoPostBack="True">
                                <asp:ListItem>1</asp:ListItem>
                            </asp:DropDownList>
								
						</div>
						<div class="form-group">
							<label for="TxtUbicacion">Ubicación:</label>
							<asp:TextBox ID="TxtUbicacion" class="form-control" placeholder="Lugar de la publicación" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator ID="CantidadRV" runat="server" ErrorMessage="Espacio vacio" ControlToValidate="TxtUbicacion"></asp:RequiredFieldValidator>
						</div>
						
					<asp:Button ID="BtnAgregar" class="btn btn-primary btn-block" runat="server" Text="Agregar" OnClick="BtnAgregar_Click"  />
					
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/momentjs/2.12.0/moment.min.js"></script>
	<script type="text/javascript" src="JS/Inicio.js"></script>
</asp:Content>
