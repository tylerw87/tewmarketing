function myFunction()
{
    if( document.getElementById("myImg").src == "/assets/tree.png" ){
        document.getElementById("myImg").src = "/assets/tyler.jpg";
    }
    elseif( document.getElementById("myImg").src == "/assets/tyler.jpg" ){
        document.getElementById("myImg").src = "/assets/concord.jpg";
    }
    else{
        document.getElementById("myImg").src = "/assets/tree.png";
    }

}