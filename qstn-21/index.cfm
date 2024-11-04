<cfapplication name="appliction1" sessionmanagement="true">
<cfoutput>
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
    <h4 class="fw-bold">Email</h4>
    <form action="" method="POST">
        <div class="d-flex flex-column mt-3">
            <b>Birthday Baby Name:</b><input type="text" name="val1" class="form-control border border-success">
            <b>His Email Id :</b><input type="email" name="val2" class="form-control border border-success">
            <b>Subject :</b><input type="text" name="val3" class="form-control border border-success">
            <b>Birthday Wishes :</b><input type="text" name="val4" class="form-control border border-success">
            <b>Greeting image :</b><input type="file" name="val5" class="form-control border border-success">
            <input type="submit" value="Send Mail" class="btn btn-success my-2 ">
        </div>
    </form>
     <cfif structKeyExists(form,"val1") AND structKeyExists(form, "val2") AND structKeyExists(form,"val3") AND structKeyExists(form, "val4") AND structKeyExists(form, "val5")> 
        <cfset local.function=new calculate()> 
        <cfset local.result=local.function.bdayMail(form.val1,form.val2,form.val3,form.val4,form.val5)>
        <span class="fw-bold">      
        </span>
    </cfif>
    </div>
</body>
</html>
</cfoutput>
