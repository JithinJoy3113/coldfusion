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
                        <label for="name" class="label fw-bold" id="errorLabelName">Enter the String</label>
                        <input type="text" id="" name="textInput" class="form-control border border-success">
                        <button type="sumbit" name="submit" id="submitBtn" class="btn btn-success mt-2">Login</button>
                    </div>
                </form>   
                <cfif structKeyExists(form, "submit")>
                    <cfset local.obj = new components.component()>
                    <cfset local.result = local.obj.fileString(form.textInput)>
                    <cfset local.table = local.result['Table']>
                    <cfset local.size = local.result['size']>
                    <div class="d-flex flex-column">
                        <cfloop collection="#local.result#" item="item">
                            <cfif item NEQ 'Table'>
                                <span class="fw-bold">#item#</span><br>   
                                    <cfloop collection="#local.result[item]#" item="key">
                                        #key# : #local.result[item][key]#<br>
                                    </cfloop><br>   
                            </cfif>
                        </cfloop>
                    </div>
                    <span class="fw-bold">Word Size</span><br>
                    <cfloop collection="#local.size#" item="item">
                        <span class="" style="font-size:#local.size[item]#px">#item#</span>
                    </cfloop>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>