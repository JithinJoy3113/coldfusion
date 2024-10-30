<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../bootstrap/bootstrap-5.3.3-dist/bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
    <div class="d-flex flex-column justify-content-center align-items-center mt-4">
    <h4 class="fw-bold">Divisible by 3</h4>
    <form action="" method="POST">
        <div class="d-flex flex-column mt-3">
            <input type="text" name="number" class="form-control border border-success">
            <input type="submit" value="Submit" class="btn btn-success my-2 ">
        </div>
    </form>
    <cfif structKeyExists(form,"number")> 
        <cfset local.num = form.number>
        <cfset local.value=createObject("component","calculate")>
        <cfset local.result=local.value.fn_result(local.num)>
        <span class="fw-bold">
          #local.result# 
        </span>
    </cfif> 
    </div>
</body>
</html>
</cfoutput>
