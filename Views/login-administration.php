<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciar Sesión</title>
        <link rel="stylesheet" href="../CSS/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="../CSS/login-administration.css">
    </head>
    <body>
        <header>
            <?php include ("../Views/Shared/header-desconnected.php"); ?>
        </header>
        <div class="container" style="margin-top: 100px;">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3 col-xl-6 offset-xl-3 cuadro"><!--Inicia cuadro login-->
                    <div class="row">
                        <div class="col-10 offset-1 col-sm-10 offset-sm-1 col-md-10 offset-md-1 col-lg-10 offset-lg-1 col-xl-10 offset-xl-1 text-center salto">
                            <h1>Iniciar Sesión</h1>
                        </div>
                    </div>    
                    <div class="row align-items-center">
                        <div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2">
                            <img src="../Images/user.svg" alt="Usuario">
                        </div>
                        <div class="col-10 col-sm-10 col-md-10 col-lg-10 col-xl-10">
                            <input type="text" name="user" id="user" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10 offset-2 col-sm-10 offset-sm-2 col-md-10 offset-md-2 col-lg-10 offset-lg-2 col-xl-10 offset-xl-2 text-center salto">
                            <label for="user">Usuario o correo electróncio.</label>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2">
                            <img src="../Images/password.svg" alt="contraseña">
                        </div>
                        <div class="col-10 col-sm-10 col-md-10 col-lg-10 col-xl-10">
                            <input type="password" name="password" id="password" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-10 offset-2 col-sm-10 offset-sm-2 col-md-10 offset-md-2 col-lg-10 offset-lg-2 col-xl-10 offset-xl-2 text-center salto">
                            <label for="user">Contraseña</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-center salto">
                            <a href="">¿Olvidaste la contraseña?</a>
                        </div>
                    </div>
                </div><!--Termina Cuadro login-->
                <div class="col-12 col-sm-12 col-md-2 col-lg-3 col-xl-3"></div>
            </div>
        </div>
    </body>
    <script src="../JS/jQuery.js"></script>
    <script src="../JS/bootstrap/bootstrap.min.js"></script>
    <script src="../JS/app/login-administration.js"></script>
</html>