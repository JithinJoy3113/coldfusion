<cfapplication name = "appliction1" sessionmanagement="true">
<!DOCTYPE html>
<html lang = "en">
<head>    
    <meta charset = "UTF-8">
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class = "d-flex flex-column justify-content-center align-items-center mt-4">
        <h4 class = "fw-bold">Display values in key-value</h4>
        <form action = "" method = "POST">
            <div class = "d-flex flex-column mt-3">
                <b>Key:</b><input type = "text" name = "value1" class = "form-control border border-success">
                <b>Value:</b><input type = "text" name = "value2" class = "form-control border border-success">
                <input type = "submit" value = "Submit" name = "submit" class = "btn btn-success my-2 ">
            </div>
        </form>
        <cfif structKeyExists(form,"submit")> 
            <cfset local.obj = new components.calculate()> 
            <cfset local.result = local.obj.display(form.value1,form.value2)>
            <span class = "fw-bold">      
                <cfdump  var = "#local.result#">
            </span>
        </cfif>
    </div>
</body>
</html>
