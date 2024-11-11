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
                    <label for="name" class="label fw-bold" id="errorLabelName">User Login</label>
                    <input type="email" id="" name="email" class="form-control border border-success">
                    <input type="text" id="" name="password" class="form-control border border-success">
                    <button type="sumbit" name="submit" id="submitBtn" class="btn btn-success mt-2">Login</button>
                </div>
            </form>   
            <cfif structKeyExists(form, "submit")>
                <cfset local.obj = new components.component()>
                <cfset local.result = local.obj.loginPage(form.email,form.password)>
                <span class="fw-bold text-danger">#local.result#</span>
            </cfif>
        </div>
    </cfoutput>
</body>
</html>