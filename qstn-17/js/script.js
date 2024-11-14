function validate(){
    let num=document.getElementById('number').value;
    console.log(num);
    let span=document.getElementById('span');
    if(isNaN(num)){
        span.textContent='Please enter number';
        return false;
    }
    else{
        return true;
    }
}