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
    <h4 class="fw-bold">Image Details</h4>
     <cfset local.function=new calculate()> 
     <cfset local.result=local.function.displayDetails()>
     <span>#local.result[1]#</span>
     <span>#local.result[2]#</span>
     <img src="assets\#local.result[3]#">
     
    </div>
    <script src="script.js"></script>
</body>
</html>
</cfoutput>
