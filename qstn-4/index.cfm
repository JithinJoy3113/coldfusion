<!DOCTYPE html>
<html lang = "en">
    <head>    
        <meta charset = "UTF-8">
        <meta name = "viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <cfoutput>
            <div class = "d-flex flex-column justify-content-center align-items-center mt-4">
                <h4 class = "fw-bold">Date and Month</h4>
                <form action = "" method = "POST">
                    <div class = "d-flex flex-column mt-3">             
                        <input type = "submit" name = "submit" value = "Show Details" class = "btn btn-success my-2 ">
                    </div>
                </form>
                <cfif structKeyExists(form,"submit")> 
                    <cfset local.obj = new components.calculate()>
                    <cfset local.result = local.obj.dateMonth()> 
                    <cfset local.colorSet = local.result['Day Color']>
                    <span class = "fw-bold"> 
                        <cfloop collection = "#local.result#" item = "key"> 
                            <cfif key EQ 'Day Color'>
                                <cfcontinue>
                            </cfif>
                            #key# : #local.result[key]#<br>
                        </cfloop><br>
                        <cfloop collection = #local.colorSet# item = "item">
                            <p style = "color:#local.colorSet[item]#;">#item#</p> 
                        </cfloop> 
                    </span>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>
