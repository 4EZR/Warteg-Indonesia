function validation(){

    var checkboxss = document.getElementsByName("checkboxs");
    const quantity = []
    quantity.push(parseInt(document.getElementById("QtyInput1").value));
    quantity.push(parseInt(document.getElementById("QtyInput2").value));
    quantity.push(parseInt(document.getElementById("QtyInput3").value));
    quantity.push(parseInt(document.getElementById("QtyInput4").value));
    quantity.push(parseInt(document.getElementById("QtyInput5").value));
    quantity.push(parseInt(document.getElementById("QtyInput6").value));
    quantity.push(parseInt(document.getElementById("QtyInput7").value));
    quantity.push(parseInt(document.getElementById("QtyInput8").value));
    quantity.push(parseInt(document.getElementById("QtyInput9").value));
    quantity.push(parseInt(document.getElementById("QtyInput10").value));
    var length = 0;

    for(let i = 0; i < checkboxss.length; i++){
        if(checkboxss[i].checked == true){ 
            if(quantity[i] == 0){
                alert("The minimum quantity of food to order is one.");
                return false;
            }
            length += 1;
        }
    }
    if(length == 0){
        alert("To proceed, you must have checked at least one food.");
        return false;
    }
    

}