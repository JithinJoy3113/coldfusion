<!DOCTYPE html>
<html lang="en">
    <head>    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <cfoutput>
            <div class="d-flex flex-column justify-content-center align-items-center mt-4">
                <h4 class="fw-bold">Image Details</h4>
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="d-flex flex-column mt-3">
                        <b>Image Name:</b><input type="text" name="name" class="form-control border border-success">
                        <b>Description:</b><textarea type="text" name="description" class="form-control border border-success"></textarea>
                        <b>Image :</b><input type="file" name="img" id="imgId" class="form-control border border-success">  
                        <button type="submit" onclick="return validate()" name="submit" class="btn btn-success my-2 ">Upload</button>
                        <span id="demo" class="fw-bold text-danger"></span>
                        <span id="type" class="fw-bold text-danger"></span>          
                    </div>
                </form>
                <cfif structKeyExists(form,"submit")>
                    <cfset local.function=new components.calculate()> 
                    <cfset local.result=local.function.displayImage(form.name,form.description,form.img)>
                    <img src="assets\#local.result#" width="20px" height="20px">
                    <a href="details.cfm" class="fw-bold text-decoration-none">#form.name#</a>
                </cfif>
            </div>
            <script src="js/script.js"></script>
        </cfoutput>
    </body>
</html>
