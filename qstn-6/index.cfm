<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="d-flex flex-column justify-content-center align-items-center mt-4">
    <h4 class="fw-bold">Display values using cfdump</h4>
    <form action="" method="POST">
        <div class="d-flex flex-column mt-3">
            <input type="text" name="val1" class="form-control border border-success">
            <input type="text" name="val2" class="form-control border border-success">
            <input type="submit" value="Submit" class="btn btn-success my-2 ">
        </div>
    </form>
     <cfif structKeyExists(form,"val1") AND structKeyExists(form, "val2")> 
        <cfset local.function=new calculate()>
        <cfset local.result=local.function.display(form.val1,form.val2)>
        <span class="fw-bold">      
        </span>
    </cfif>
    </div>
</body>
</html>
</cfoutput>
