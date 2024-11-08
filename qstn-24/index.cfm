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
        <form action="" method="post" id="regForm">
             <div class="d-flex flex-column mt-3">
                <label for="name" class="label fw-bold" id="errorLabelName">Name:</label>
                <input type="text" id="nameInput" name="nameInput" class="form-control border border-success">
                <span id="nameError" class="text-danger fw-bold"></span>
                <label for="mail" class="label fw-bold" id="errorLabelMail">Email Address:</label>
                <input type="text" id="emailInput" name="emailInput" class="form-control border border-success">
                <span id="emailError" class="text-danger fw-bold"></span>
                <button type="button" name="checkMail" onclick="return checkEmail()" class="btn btn-primary mt-2">Check Email</button>
                <span id="existError" class="text-danger fw-bold"></span>
                <button type="sumbit" name="submit" id="submitBtn" class="btn btn-success mt-2" disabled>Submit</button>
            </div>
        </form>   
        <cfif structKeyExists(form, "submit")>
            <cfset local.obj = new components.component()>
            <cfset local.result = local.obj.insetRow(form.nameInput,form.emailInput)>
            <span class="text-success fw-bold">#local.result#</span>
        </cfif>
    </div>
    <script src="js/script.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    </cfoutput>
</body>
</html>