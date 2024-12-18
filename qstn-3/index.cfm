<!DOCTYPE html>
<html lang = "en">
    <head>    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <cfoutput>
            <div class = "d-flex flex-column justify-content-center align-items-center mt-4">
                <h4 class="fw-bold">Divisible by 3</h4>
                <form action = "" method = "POST">
                    <div class="d-flex flex-column mt-3">
                        <input type = "text" name = "number" class = "form-control border border-success">
                        <input type = "submit" value = "Submit" name = "submit" class = "btn btn-success my-2 ">
                    </div>
                </form>
                <cfif structKeyExists(form,"submit")> 
                    <cfset local.number = form.number>
                    <cfset local.obj = createObject("component","components.calculate")>
                    <cfset local.result = local.obj.divisible(local.number)>
                    <span class = "fw-bold">
                        #local.result# 
                    </span>
                </cfif> 
            </div>
        </cfoutput>
    </body>
</html>
