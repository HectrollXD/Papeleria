<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio</title>
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/index.css">
    </head>
    <body>
        <header>
            <?php include_once("Views/Shared/header-desconnected.php"); ?>
        </header>
        <div class="contenedor">
            <center>
                <div class="cuadro1">
                    <img class="imagen" src="Images/user.png">
                    <p class="texto">Administrar</p>
                </div>
                <div class="cuadro2">
                    <img class="imagen" src="Images/pay.png">
                    <p class="texto">Cobrar</p>
                </div>
            </center>
        </div>
        <footer>
        </footer>
    </body>
    <script src="JS/jQuery.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <script src="JS/app/index.js"></script>
</html>