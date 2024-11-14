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
            <h4 class="fw-bold">Show details from table</h4>
            <form action="" method="POST">
                <div class="d-flex flex-column mt-3">
                    <input type="submit" value="Create Query" name="submit" class="btn btn-success my-2 ">
                </div>
            </form>
            <cfif structKeyExists(form,"submit")> 
                <cfset local.obj=new components.query()>
                <cfset local.result=local.obj.createTable()>
                <cfdump  var="#local.result#">
            </cfif>
        </div>
    </body>
</html>
