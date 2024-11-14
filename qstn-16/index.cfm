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
                <h4 class="fw-bold">Print Pattern</h4>
                <form action="" method="POST">
                    <div class="d-flex flex-column mt-3">
                        <input type="submit" value="Print Pattern" name="submit" class="btn btn-success my-2 ">
                    </div>
                </form>
                <cfif structKeyExists(form,"submit")> 
                    <cfset local.obj=new components.calculate()>
                    <cfset local.result=local.obj.pattern()>
                    <cfloop index="row" from="1" to="#arrayLen(local.result)#">
                        <cfloop index="col" from="1" to="#arrayLen(local.result)#">
                            #local.result[row][col]#
                        </cfloop><br>      
                    </cfloop>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>
