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
                <h4 class="fw-bold">Multiplication</h4>
                <form action="" method="POST">
                    <div class="d-flex flex-column mt-3">
                        <input type="submit" value="Submit" name="submit" class="btn btn-success my-2 ">
                    </div>
                </form>
                <cfif structKeyExists(form,"submit")> 
                    <cfset local.obj=createObject("component","components.calculate")> 
                    <cfset local.result=local.obj.multiply("1,2")>
                    <cfobject  name="multiplyObj" type="component" component="components.calculate">
                    <cfset local.valueObj = multiplyObj.multiply("1,2,3")> 
                    <cfinvoke  method="multiplyInvoke" component="components.calculate" returnvariable="valueInvoke"> 
                        <cfinvokeargument name="val1" value="1">
                        <cfinvokeargument name="val2" value="2"> 
                        <cfinvokeargument name="val3" value="3"> 
                        <cfinvokeargument name="val4" value="4">
                    </cfinvoke> 
                    <span class="fw-bold">
                        Using CreateObjet : #local.result# <br>
                        Using cfobject : #local.valueObj# <br>
                        Using cfInvoke : #valueInvoke# 
                    </span>
                </cfif> 
            </div>
        </cfoutput>
    </body>
</html>
