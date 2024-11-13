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
                <h4 class="fw-bold">Print 1 to n</h4>
                <form action="" method="POST">
                    <div class="d-flex flex-column mt-3">
                        <input type="text" name="val1" id="number" class="form-control border border-success">
                        <button type="submit" onclick="return validate()" name="submit" class="btn btn-success my-2 ">Submit</button>
                        <span id="span" class="text-danger fw-bold"></span>
                    </div>
                </form>
                <cfif structKeyExists(form,"submit")> 
                    <cfset local.obj=new components.calculate()>
                    <cfset local.result=local.obj.numValidate(form.val1)>
                    <cfloop collection="#local.result#" item="num">
                        <p class="fw-bold" style="color:#local.result[num]#">#num#</p>
                    </cfloop>
                </cfif> 
            </div>
            <script src="js/script.js"></script>
        </cfoutput>
    </body>
</html>
