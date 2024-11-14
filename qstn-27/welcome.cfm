<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <title>Document</title>   
        <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <cfoutput>
            <div class = "d-flex flex-column justify-content-center align-items-center mt-4">
                <form action="" method="post" id="regForm" enctype="multipart/form-data".>
                    <div class="d-flex flex-column mt-3">
                        <h1>Welcome  #session.email#</h1>
                        <button type="sumbit" name="submit" id="submitBtn" class="btn btn-success mt-2">Logout</button>
                    </div>
                </form>
            </div>
            <cfif structKeyExists(form, "submit")>
                <cfset local.obj = new components.logout()>
                <cfset local.result = local.obj.logout()>
            </cfif>
        </cfoutput>
    </body>
</html>