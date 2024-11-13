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
                <form action="" method="POST" enctype="multipart/form-data">
                    <h4 class="fw-bold">Display Details</h4>
                    <div class="d-flex justify-content-center align-items-center mt-4">
                        <input type="submit" name="submit" class="btn btn-success" value="Show table">
                    </div>
                </form>
                <cfset local.data = [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},
                        {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
                <cfif structKeyExists(form, "submit")>
                    <cfset local.obj = new components.calculate()>
                    <cfset local.result = local.obj.tableDetails(local.data)>
                    <table>
                    <cfloop index="row" from="1" to="#arrayLen(local.result)#">
                        <tr class="p-1">
                        <cfloop index="col" from="1" to="#arrayLen(local.result)#">
                            <cfif row EQ 1>
                                <td class="p-2 fw-bold">
                                    #local.result[row][col]#
                                </td>
                            <cfelse>
                                <td class="p-2">
                                #local.result[row][col]#
                            </td>
                            </cfif>                    
                        </cfloop><br> 
                        </tr>     
                    </cfloop>
                    </table>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>
