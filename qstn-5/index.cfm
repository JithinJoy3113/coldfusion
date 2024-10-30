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
    <h4 class="fw-bold">Age Calculate</h4>
    <form action="" method="POST">
        <div class="d-flex flex-column mt-3">             
                <b>Enter your DOB:</b><input type="date" name="val1" class="form-control border border-success">
                <b>Enter your mother's DOB:</b> <input type="date" name="val2" class="form-control border border-success">
            <input type="submit" value="Submit" class="btn btn-success my-2 ">
        </div>
    </form>
     <cfif structKeyExists(form,"val1") AND structKeyExists(form, "val2")> 
        <cfset local.function=new calculate()>
        <cfset local.result=local.function.ageCalculate(form.val1,form.val2)>   `
        <span class="fw-bold"> 
            <cfloop collection="#local.result#" item="key">
                #key# : #local.result[key]#<br>
            </cfloop>     
        </span>
    </cfif>
    </div>
</body>
</html>
</cfoutput>
