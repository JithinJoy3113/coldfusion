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
                    <b>Enter a number:</b><input type="text" name="value1" class="form-control border border-success">
                    <input type="submit" value="Submit" name="submit" class="btn btn-success my-2 ">
                </div>
            </form>
            <cfif structKeyExists(form,"submit")> 
                <cfset local.function=new components.query()>
                <cfset local.result=local.function.displayTable(form.value1)>
                <table>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                    </tr>
                    <cfoutput query="local.result">
                        <tr>
                            <td>#FirstName#</td>
                            <td>#LastName#</td>
                        </tr>
                    </cfoutput>
                </table>
                <cfoutput><br><br>
                    <b>Selected name : #local.result.FirstName[form.value1]#</b>
                </cfoutput>
            </cfif>
        </div>
    </body>
</html>
