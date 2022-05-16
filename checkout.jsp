<%@ page import="java.io.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="CSS/Checkout.css"rel="stylesheet"type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   
    <%@include file="header.html" %>
    <%
    String[] FoodName = request.getParameterValues("checkboxs");
    Integer[] quantity = new Integer[10];
    Integer[] Price = new Integer[10];
    String[] FoodID = new String[10];
    Integer[] totalPrice = new Integer[10];
    int Total = 0;

    for(int i = 0; i < FoodName.length; i++){
        if(FoodName[i].equals("Ati Ampela")){
            FoodID[i] = "M001";
            quantity[i] = Integer.parseInt(request.getParameter("AtiQty"));
            Price[i] = 7000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Ayam goreng")){
            FoodID[i] = "M002";
            quantity[i] = Integer.parseInt(request.getParameter("AyamQty"));
            Price[i] = 21000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Terong")){
            FoodID[i] = "M003";
            quantity[i] = Integer.parseInt(request.getParameter("TerongQty"));
            Price[i] = 5000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Capcay")){
            FoodID[i] = "M004";
            quantity[i] = Integer.parseInt(request.getParameter("CapcaiQty"));
            Price[i] = 5000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Dadar")){
            FoodID[i] = "M005";
            quantity[i] = Integer.parseInt(request.getParameter("DadarQty"));
            Price[i] = 4000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Gorengan")){
            FoodID[i] = "M006";
            quantity[i] = Integer.parseInt(request.getParameter("GorenganQty"));
            Price[i] = 2000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Sayur sop")){
            FoodID[i] = "M007";
            quantity[i] = Integer.parseInt(request.getParameter("SayurSopQty"));
            Price[i] = 7000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Telur Asin")){
            FoodID[i] = "M008";
            quantity[i] = Integer.parseInt(request.getParameter("AsinQty"));
            Price[i] = 4000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Telur Balado")){
            FoodID[i] = "M009";
            quantity[i] = Integer.parseInt(request.getParameter("BaladoQty"));
            Price[i] = 4000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
        else if(FoodName[i].equals("Orek Tempe")){
            FoodID[i] = "M010";
            quantity[i] = Integer.parseInt(request.getParameter("TempeQty"));
            Price[i] =3000;
            totalPrice[i] = quantity[i] * Price[i];
            Total = Total + (quantity[i] * Price[i]);
        }
      
    }
%>

    <div class="section-title">
            <h2>Order Summarry</h2>
    </div>
    <div class="order Sumarry">
        
            <%
            for(int i = 0; i < FoodName.length; i++){
            %>
                
                    <div class="card-order">
                        <h4 class="foodid-card"><%= FoodID[i]%></h3>
                        <h3 class="food-title"><%=FoodName[i]%><span class="qty">  <%=  quantity[i]%>X</span></h3> 
                        <h6 class="price"> <%= "RP "+ Price[i]%></h6>
                        <h3 class="total-Price"><%= "RP " + totalPrice[i]%></h3>
                    </div>
               
            <%
            }
            %>
            <div class="total-container">
                <span class="grand-total">Grand Total</span>
                <h3><%= "RP "+ Total%></h3>
                <span class="grand-total">Cash</span>
                <input type="number" min="0" style="width: 99%; margin-top:30px; margin:0 auto;"  id="CashInput" name="UserCash" value="0" step="1000">
                <button type="button" id="PaymentBtn" value="payment" >Confirm Payment</button>
                <h4 class="text-payment" id="uangKembalian" style="font-weight: bold"></h4>
            </div>
           
            
           
        </div>
   

        <script>
            function UserChange(){
                var UserCash = parseInt(CashInput.value);
                var grandTotal = parseInt(<%= Total%>);
                var change = UserCash - grandTotal;
                if(change < 0){
                    uangKembalian.innerHTML = "Insufficient funds Rp -" + Math.abs(change);
                }
                else{
                    uangKembalian.innerHTML = "Here is the change Rp " + change;
                }
                
    
            }
    
            PaymentBtn.addEventListener("click", UserChange);
        </script>
    <%
        String file = application.getRealPath("/") + "Receipt.txt";
        FileWriter filewriter = new FileWriter(file, true);
        for(int i = 0; i<FoodName.length; i++){
            filewriter.write("Kode: " + FoodID[i] + "\n");
            filewriter.write("Nama Makanan: " + FoodName[i] + "\n");
            filewriter.write("Jumlah: " + quantity[i] + "\n");
            filewriter.write("Harga Porsi: " + Price[i] + "\n\n");
        }
        filewriter.close();
    %>
   
       
</body>
</html>