<script>  
function validateform(){  
    var UserFamilyName=document.myform.UserFamilyName.value;  
    var UserFirstName=document.myform.UserFirstName.value; 
    var UserEmail=document.myform.UserEmail.value; 
    var UserPassWord=document.myform.UserPassWord.value; 
    var UserPassWordConfirm=document.myform.UserPassWordConfirm.value; 


if (UserFamilyName==null || UserFamilyName==""){  
  alert("UserFamilyName can't be blank");  
  return false;  
}else if(password.length<6){  
  alert("UserPassWord must be at least 6 characters long.");  
  return false;  
  }  
}  
</script>  
