<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="plantillas/Cabecera.jsp"></jsp:include>

	<h1>Datos Personales Empleado</h1>

	<form action="resumenEmpleado.jsp">
		<div>
			<label for="nombre">Nombre: </label> <input type="text" name="nombre"
				id="nombre">

		</div>

		<div>
			<label for="apellidos">Apellidos: </label> <input type="text"
				name="apellidos" id="apellidos">
		</div>
		<div>
			<label for="provincia">Provincia:</label> <select name="provincia"
				id="provincia">
				<option value="4">Almer�a</option>
				<option value="11">C�diz</option>
				<option value="14" selected>C�rdoba</option>
				<option value="18">Granada</option>
				<option value="21">Huelva</option>
				<option value="23">Ja�n</option>
				<option value="29">M�laga</option>
				<option value="41">Sevilla</option>
			</select>
		</div>
		<div>
			<label for="">Conocimientos: </label> 
			<label for="java">Java</label>
			<input type="checkbox" name="conocimientos[]" id="java" value="java">

			<label for="sql">SQL</label> 
			<input type="checkbox" name="conocimientos[]" id="sql" value="sql"> 
			<label for="html">HTML</label> 
			<input type="checkbox" name="conocimientos[]"id="html" value="html"> 
			<label for="css">CSS</label> 
			<input type="checkbox" name="conocimientos[]" id="css" value="css">
		</div>

		<div>
			<label for="fechaNacimiento">Fecha Nacimiento</label> 
			<input type="date" name="fechaNacimiento" id="fechaNacimiento">
		</div>

		<div>
			<label for="experiencia">Experiencia: </label> 
			<input type="number" name="experiencia" id="experiencia" value="0" min="0" max="50">
		</div>

		<div>
			<input type="submit" value="Enviar">
		</div>


	</form>
	

<jsp:include page="plantillas/Pie.jsp"></jsp:include>