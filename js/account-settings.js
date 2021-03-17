var password1;
var password2;
function validate(){
    var password1=document.getElementById("password1").value;
    //alert(password1.length);
    if(password1.length<8){
       document.getElementById("password-message").innerHTML="MINIMUM 8 CHARACTERS";
       return false;
    }
    else if(password1.length>15){
        document.getElementById("password-message").innerHTML="MAXIMUM 15 CHARACTERS";
        return false;
    }
    else{
        document.getElementById("password-message").innerHTML="";
    }
    var password2=document.getElementById("password2").value;
    if(password1!==password2){
        document.getElementById("password-confirm-message").innerHTML="PASSWORD DOES NOT MATCH";
       return false;
    }
    else{
        alert("ACCOUNT CREATED SUCCESSFULLY!");
    }
}
function validate_signin(){
    var password=document.getElementById("password-signin").value;
    if(password.length<8){
       document.getElementById("password-message").innerHTML="INVALID PASSWORD";
       return false;
    }
    else if(password.length>15){
        document.getElementById("password-message").innerHTML="INVALID PASSWORD";
        return false;
    }
    else{
        document.getElementById("password-message").innerHTML="";
    }
}
function showpassword(){
    var password1=document.getElementById("password1");
    var password2=document.getElementById("password2");
    
    if(password1.type=="password"){
        password1.type="Text";
    }
    else{
        password1.type="password";
    }
    if(password2.type=="password"){
        password2.type="text";
    }
    else{
        password2.type="password";
    }
    
}
function show_signin_p(){
   var password=document.getElementById("password-signin");
    if(password.type=="password"){
        password.type="text";
    }
    else{
        password.type="password";
    }
}



