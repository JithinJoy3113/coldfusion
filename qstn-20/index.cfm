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
                <h4 class="fw-bold">Captcha Validation</h4>
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="d-flex flex-column mt-3">
                        <cfimage required action = "captcha" height = "40" text="coldfusion23"
                        width = "322" difficulty = "medium">  
                        <b>Email:</b><input type="text" name="mailid" class="form-control border border-success">
                        <b>Enter captcha :</b><input type="text" name="captcha" class="form-control border border-success">
                        <input type="submit" value="Send Mail" class="btn btn-success my-2 ">
                    </div>
                </form>
                <cfif structKeyExists(form,"mailid") AND structKeyExists(form, "captcha")> 
                    <cfset local.obj=new components.calculate()> 
                    <cfset local.result=local.obj.captchaValidate(form.mailid,form.captcha)>
                    <cfset myArray=listToArray(local.result,":",false,true)>
                    <span class="fw-bold" style="color:#myArray[2]#">   
                        #myArray[1]#   
                    </span>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>
