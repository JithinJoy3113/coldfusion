function validate(){

    let valid=true;
    let error='This field is required. Please enter a value.'

    let position=document.getElementById('positionInput').value;
    let locate=document.getElementById('locateRadio').checked;
    let dateOne=document.getElementById('dateOne').value;
    let dateTwo=document.getElementById('dateTwo').value;
    let dateThree=document.getElementById('dateThree').value;
    let firstName=document.getElementById('nameInputFisrt').value;
    let lastName=document.getElementById('nameInputLast').value;
    let email=document.getElementById('emailInput').value;
    let phoneOne=document.getElementById('phoneOne').value;
    let phoneTwo=document.getElementById('phoneTwo').value;
    let phoneThree=document.getElementById('phoneThree').value; 
    let phoneNumber=phoneOne.concat(phoneTwo,phoneThree);
    let dateString=dateOne.concat(dateTwo,dateThree);
    let date=dateThree.concat('-',dateOne,'-',dateTwo);

    if ((firstName === '' || !/^[a-zA-z]+$/.test(firstName)) || lastName === '' || !/^[a-zA-z]+$/.test(lastName)){
		document.getElementById('nameError').textContent=error;
    let label=document.getElementById('errorLabelName').style.color='red';
    valid = false;
    }
    else{
      document.getElementById('nameError').textContent='';
      document.getElementById("errorLabelName").style.removeProperty("color");
    }
    if (phoneNumber === '' || !/^\d{10}$/.test(phoneNumber)){
      document.getElementById('phoneError').textContent=error;
      let label=document.getElementById('errorLabelPhone').style.color='red';
      valid=false;
    }
    else{
      document.getElementById('phoneError').textContent='';
      document.getElementById("errorLabelPhone").style.removeProperty("color");
    }
    if (email=='' || !/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){  
      document.getElementById('mailError').textContent=error;
      let label=document.getElementById('errorLabelEmail').style.color='red';
      valid=false;
    }
    else{
      document.getElementById('mailError').textContent='';
      document.getElementById("errorLabelEmail").style.removeProperty("color");
    }   
    if (dateString=='' || isNaN(Date.parse(date))){
      document.getElementById('dateError').textContent=error;
      let label=document.getElementById('errorLabelStart').style.color='red';
      valid=false;
    }
    else{
      document.getElementById('dateError').textContent='';
      document.getElementById("errorLabelStart").style.removeProperty("color");
    }
    if(!locate){
      document.getElementById('locationError').textContent=error;
      let label=document.getElementById('errorLabelLocate').style.color='red';
    }
    else{
      document.getElementById('locationError').textContent='';
      document.getElementById("errorLabelLocate").style.removeProperty("color");
    }
    if(position==''){
      document.getElementById('positionError').textContent=error;
      let label=document.getElementById('errorLabelPosition').style.color='red';
    }
    else{
      document.getElementById('positionError').textContent='';
      document.getElementById("errorLabelPosition").style.removeProperty("color");
    }
    if (valid==true){
      return true
    }
    else{
      return false
    }
}