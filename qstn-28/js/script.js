function signUpValidate(){

    let name=document.getElementById('userName').value;
    let role=document.getElementById('userRole').value;
    let password=document.getElementById('password').value;
    let confirm=document.getElementById('confirmPassword').value;
    let valid=true;
    
    if (name == '' || !/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(name)){  
        document.getElementById('mailError').textContent="Enter a valid username";
        valid=false;
    }
    else{
        document.getElementById('mailError').textContent='';
    }         
    if (password == "" || !/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,25}$/.test(password)){
		document.getElementById('passwordError').textContent='Please enter a strong password';
	    valid=false;
	}else{
		document.getElementById('passwordError').textContent='';
	}

    if (role == ""){
		document.getElementById('roleError').textContent='Please select the user';
	    valid=false;
	}else{
		document.getElementById('roleError').textContent='';
	}
    if (confirm == "" || password != confirm){
		document.getElementById('confirmpasswordError').textContent='Password Missmatch';
	    valid=false;
	}else{
		document.getElementById('confirmpasswordError').textContent='';
	}
    return valid;
  
}

function loginValidation(){

    let name=document.getElementById('userName').value;
    let password=document.getElementById('password').value;
    let valid=true;

    if(name == ""){
        document.getElementById('mailError').textContent="Enter the user name";
        valid=false;
    }
    else{
        document.getElementById('mailError').textContent='';
    }   

    if (password == ""){
		document.getElementById('passwordError').textContent='Enter the password';
	    valid=false;
	}else{
		document.getElementById('passwordError').textContent='';
	}
    return valid;

}

function logoutValidate(){
    document.getElementById("logoutConfirm").style.display="flex";
    document.getElementById("displayContent").classList.add("disabled");
}

function logoutAlert(value){
    
    let valid=true;
    if(value=="yes"){
        $.ajax({
            url:'./components/component.cfc?method=logout',
            type: "post",
            success: function (response) {
                if(response){
                    let alertDiv=document.getElementById("logoutConfirm").style.display="none";
                    document.getElementById("displayContent").classList.remove("disabled");
                }
                else{
                    valid=false
                }
            }
         });
    }
    else{
        valid=false;
        document.getElementById("logoutConfirm").style.display="none";
        document.getElementById("displayContent").classList.remove("disabled");
    }
    return valid;
}

var deleteId;
function deleteButton(pageId){
    deleteId=pageId.value;
    let alertDiv=document.getElementById("deleteConfirm").style.display="flex";
    document.getElementById("displayContent").classList.add("disabled");
}
function deleteAlert(confirm){
    
    let valid=true;
    if(confirm=="yes"){
        $.ajax({
            url:'./components/component.cfc?method=deleteRow',
            type: "post",
            data:{
                id:deleteId
            },
            success: function (response) {
                if(response){
                    let alertDiv=document.getElementById("deleteConfirm").style.display="none";
                    document.getElementById("displayContent").classList.remove("disabled");
                }
                else{
                    valid=false
                    document.getElementById("displayContent").classList.remove("disabled");
                }
            }
         });
    }
    else{
        valid=false;
        document.getElementById("deleteConfirm").style.display="none";
        document.getElementById("displayContent").classList.remove("disabled");
    }
    return valid;
}


