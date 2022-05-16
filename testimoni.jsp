<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/testimoni.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-1.12.4.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap" rel="stylesheet">
    <title>IW-testimoni</title>
</head>
<body>
    <%@include file="header.html" %>
    <div class="section-title">
        <h2>Testimoni</h2>
    </div>
    <div class="container">
        <div class="row minH100">
    <div class="col-xl">
    <div class="contact">
        
        <div id="container">
          <h2>contact</h2>
          <form action="#" method="post" id="contact_form">
            <%
            String email = request.getParameter("email");
            String testimoni = request.getParameter("message");
            String alertE=request.getParameter("alertE");
            String alertT=request.getParameter("alertT");
            %>
            <div class="email">
              <label for="email"></label>
              <input type="email" placeholder="e-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="email" id="email_input" >
            </div>
            <% 
                if(email == ""){
                alertE = "Please fill out your email address.";%>
            <h5 style="color:red;font-weight:normal;"><%= alertE %> </h5>
             <% }
             %>
            <div class="message">
              <label for="message"></label>
              <textarea name="message" placeholder="message" id="message_input" cols="30" rows="5" ></textarea>
            </div>

            <% 
                    if(email !=""){
                        if(testimoni==""){
                            alertT = "Please fill out your testimoni.";
                %>
                         <h5 style="color:red;font-weight:normal;"><%= alertT %> </h5>
                <% 
                        }
                    }
                %>
            <div class="submit">
              <input type="submit" value="submit" id="form_button"/>
            </div>
          </form>
        </div>
        </div>
        </div>
        <div class="col-xl col-border">
        <div class="col-border-padding">
        <div class="section-title">
        <h3>Our Customer</h3>
        </div>

           <%
                String file = application.getRealPath("/") + "testimoni.txt";
                FileWriter filewriter = new FileWriter(file, true);
                if(email != "" && email != null){
                    if(testimoni != "" && testimoni != null){
                        filewriter.write(email + "#" + testimoni + "\n");
                    }
                }
                filewriter.close();

                FileReader filereader = new FileReader(file);
                BufferedReader bufferedreader = new BufferedReader(filereader);
                String text;
            %>
            
            <div class="container" style="width: 100%;">
                
                    <%
                        while((text = bufferedreader.readLine()) != null){
                            String[] print = text.split("\\#");
                    %>
                            
                        <div class="card-testi">
                            <div class="user-container">
                            <h4 class="user"><%= print[0]%></h4>
                            </div>
                            <h6 class="testi" ><span style="color:white;background: #99101C;margin-right: 5px;padding:2px;border-radius: 6px;"> Testi </span>   <%=print[1]%></h6>
                        </div>
                            
                    <%
                        }
                    %>
                
            </div>
            </div>
            </div>
        </div>
   </div>

   <%@include file="footer.html" %>
</body>
</html>