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
    <form action="" method="POST" enctype="multipart/form-data">
        <div class="d-flex flex-column mt-3">
            <b>Birthday Baby Name:</b><input type="text" name="name" class="form-control border border-success">
            <b>His Email Id :</b><input type="email" name="mailid" class="form-control border border-success">
            <b>Subject :</b><input type="text" name="subject" class="form-control border border-success">
            <b>Birthday Wishes :</b><textarea type="text" name="wish" class="form-control border border-success"></textarea>
            <b>Greeting image :</b><input type="file" name="img" class="form-control border border-success">
            <input type="submit" value="Send Mail" class="btn btn-success my-2 ">
        </div>
    </form>
     <cfif structKeyExists(form,"name") AND structKeyExists(form, "mailid") AND structKeyExists(form,"subject") AND structKeyExists(form, "wish") AND structKeyExists(form, "img")> 
        <cfset local.function=new calculate()> 
        <cfset local.result=local.function.bdayMail(form.name,form.mailid,form.subject,form.wish,form.img)>
        <span class="fw-bold text-success">   
            #local.result#   
        </span>
    </cfif>
    </div>
</body>
</html>
</cfoutput>
