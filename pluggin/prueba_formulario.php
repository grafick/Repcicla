<?php include "config.php"; ?>

<form action="guardar.php" method="post">
    Nombre: <input type="text" name="r_nombre_completo"><br>
    Correo: <input type="email" name="r_correo"><br>
    Numero celular: <input type="text" name="r_celular"><br>
    Numero de calle: <input type="number" name="r_numero_calle"><br>
    Nombre de calle: <input type="text" name="r_nombre_calle"><br>
    Comuna:
    <!--  <input type="text" name="comuna"><br> -->
    <select name="r_comuna">
        <option value="Santiago">Santiago</option>
        <option value="Providencia" selected>Providencia</option>
        <option value="Nunoa">Ñuñoa</option>
    </select><br>
    
    Ciudad:
    <!-- <input type="text" name="ciudad"><br> -->
    <select name="r_ciudad">
        <option value="Santiago" selected>Santiago</option>
    </select><br>

    Categoría: 
    <select name="tipo_categoria">
        <option value="Botellas_plasticas" selected>Botellas plásticas</option>
        <option value="Papel_y_carton">Papel y cartón</option>
        <option value="Latas">Latas</option>
        <option value="Pilas">Pilas</option>
        <option value="Cajas_de_bebidas">Cajas de bebidas</option>
        <option value="Electronicos">Electrónicos</option>
        <option value="Envases_plasticos">Envases plasticos</option>
        <option value="Vidrios">Vidrios</option>
    </select><br>

    Cobertura: 
    <select name="area_cobertura">
        <option value="Santiago" selected>Santiago</option>
        <option value="Providencia">Providencia</option>
        <option value="Nunoa">Ñuñoa</option>
    </select><br>
    
    <input type="submit" value="Registrar">
</form>
