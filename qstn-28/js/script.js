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


