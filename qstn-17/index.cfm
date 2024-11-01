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
    <h4 class="fw-bold">Print 1 to n</h4>
    <form action="" method="POST">
        <div class="d-flex flex-column mt-3">
            <input type="text" name="val1" id="number" class="form-control border border-success">
            <button type="submit" value="Submit" onclick="return validate()" class="btn btn-success my-2 ">Submit</button>
            <span id="span"></span>
        </div>
    </form>
    <!---  <cfif structKeyExists(form,"val1")>  --->
    <!---     <cfset local.string = "the quick brown fox jumps over the lazy dog"> --->
    <!---     <cfset local.function=new calculate()> --->
    <!---     <cfset local.result=local.function.charSearch(form.val1,local.string)> --->
    <!---     <span class="fw-bold">   --->
    <!---         Found the key word in #local.result# time - #local.string#    --->
    <!---     </span> --->
    <!--- </cfif> --->
    </div>
    <script src="script.js"></script>
</body>
</html>
</cfoutput>
