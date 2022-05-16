function validation(){

    var checkboxss = document.getElementsByName("checkboxs");
    const quantity = []
    quantity.push(parseInt(document.getElementById("inputQty1").value));
    quantity.push(parseInt(document.getElementById("inputQty2").value));
    quantity.push(parseInt(document.getElementById("inputQty3").value));
    quantity.push(parseInt(document.getElementById("inputQty4").value));
    quantity.push(parseInt(document.getElementById("inputQty5").value));
    quantity.push(parseInt(document.getElementById("inputQty6").value));
    quantity.push(parseInt(document.getElementById("inputQty7").value));
    quantity.push(parseInt(document.getElementById("inputQty8").value));
    quantity.push(parseInt(document.getElementById("inputQty9").value));
    quantity.push(parseInt(document.getElementById("inputQty10").value));
    var length = 0;

    for(let i = 0; i < checkboxss.length; i++){
        if(checkboxss[i].checked == true){ 
            if(quantity[i] == 0){
                alert("Food Quantity must be more than zero");
                return false;
            }
            length += 1;
        }
    }
    if(length == 0){
        alert("to checkout must be at least choose one food");
        return false;
    }
    

}