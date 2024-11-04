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
    <h4 class="fw-bold">Multiplication</h4>
    <form action="" method="POST">
        <div class="d-flex flex-column mt-3">
            <input type="text" name="val1" class="form-control border border-success">
            <input type="text" name="val2" class="form-control border border-success">
            <input type="text" name="val3" class="form-control border border-success">
            <input type="text" name="val4" class="form-control border border-success">
            <input type="submit" value="Submit" name="submit" class="btn btn-success my-2 ">
        </div>
    </form>
     <cfif structKeyExists(form,"submit")>
        <cfset local.val = "#form.val1#,#form.val2#,#form.val3#,#form.val4#">
        <cfset local.numArray = []>
        <cfloop list="#local.val#" item="item">
            <cfset arrayAppend(local.numArray, #item#)>
         </cfloop>
        <cfif arrayLen(local.numArray)>
            <cfset local.function=new calculate()>
            <cfset local.result=local.function.multiply(local.numArray)>
        <cfelseif arrayLen(local.numArray) LT 2>
            <span class="fw-bold">Enter Mininum 2 Numbers</span>
        </cfif>         
       <span class="fw-bold">   
            <cfdump  var="Product : #local.result#"> 
       </span>
    </cfif>
    </div>
</body>
</html>
</cfoutput>
