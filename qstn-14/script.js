function validate(){
    let image=document.getElementById('imgId');
    let size= (image.files[0].size)/1048576;
    let type= (image.files[0].type);
    if(type!="image/jpeg" && type!="image/png" && type!="image/jpg"){
        let span2=document.getElementById('type').textContent="Only support jpg/png file";
        return false;
    }
    else if(size>1){
        let span=document.getElementById('demo').textContent="Enter file less than 1MB"; 
        return false;
    }
    else{
        return true;
    }
    
}