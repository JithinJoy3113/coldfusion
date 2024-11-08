function checkEmail(){

    let valid=true;

    var mail=document.getElementById('emailInput').value;
    var name=document.getElementById('nameInput').value;
    console.log(mail);
    if (name === '' || !/^[a-zA-z]+$/.test(name)){
		document.getElementById('nameError').textContent="Enter the name";
        valid = false;
    }
    else{
      document.getElementById('nameError').textContent='';
    }
    if (mail=='' || !/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail)){  
        document.getElementById('emailError').textContent="Invallid mail";
        valid=false;
      }
      else{
        document.getElementById('emailError').textContent='';
      }
      if(valid==true){
        var mail=document.getElementById('emailInput').value;
        $.ajax({
            url:'components/component.cfc?method=mailExist',
            type: "GET",
            data: {
                mail:mail
            },
            success: function (response) {
                if(response){
                    let span=document.getElementById('existError').textContent="Email already exist";
                    document.getElementById('submitBtn').disabled=true;
                    valid=false;
                }
                else{
                    document.getElementById('existError').textContent="";
                    document.getElementById('submitBtn').disabled=false;
                }
            }
            
         });
      }   
      return valid;
}