$(document).ready(main);

function main(){
    $(".cuadro1").click(
        function(){
            window.location.href = "Views/login-administration.php";
        }
    );
    $(".cuadro2").click(
        function(){
            window.location.href = "Views/login-employes.php";
        }
    );
}