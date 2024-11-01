function validate(){
    let num=document.getElementById('number').value;
    console.log(num);
    let span=document.getElementById('span');
    if(isNaN(value)){
        return true;
    }
    else{
        span.textContent='Entered element is not a number';
        return false;
    }
}