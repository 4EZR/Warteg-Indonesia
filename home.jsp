<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap" rel="stylesheet">
    <link href="CSS/style1.css" rel="stylesheet">
    <link href="CSS/style.css" rel="stylesheet">
    
    <title>Home-Warteg Indonesia</title>
</head>
<body>

    <%@include file="header.html" %>
    <section id="home-content">
    <div class="container">
        <!-- navbar code -->
        <div class="middle" style="z-index:-1">
            <h1 class="text-white display-3 fw-bold">kami menjual berbagai makanan khas<span class="theme-text"> nusantara</span>.</h1>
            
            <h5 class="text-white display-3 fw-medium" style="z-index:-1">silahkan pilih <span class="theme-text" >menu</span> yang tersedia</h5>
            <a href="menu.jsp"style="z-index:-1"><button class="button" style="vertical-align:middle" style="z-index:1000"><span>Menu</span></a>
        </div>
    </div>

    <svg class="wave"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path fill="#99101C" fill-opacity="1"
                d="M0,192L60,181.3C120,171,240,149,360,133.3C480,117,600,107,720,106.7C840,107,960,117,1080,122.7C1200,128,1320,128,1380,128L1440,128L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z">
        </path>
    </svg>

    </section>

    <br>
    <%@include file="footer.html" %>

       

</body>
</html>