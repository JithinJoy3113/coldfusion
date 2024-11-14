<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SignUp</title>
        <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="edit.cfm" method="post" id="loginForm">
                <div class="signUpHeader adminHeaderDiv d-flex justify-content-between px-4">
                    <a href="admin.cfm" class="text-decoration-none fw-bold text-white">Home</a>
                    <span class="adminHead">Admin Edit</span>
                </div>      
                <div class="d-flex justify-content-center">
                        <div class="d-flex flex-column">
                            <span class="pageHead fw-bold mx-auto my-4">Edit page</span>
                            <div class="pageEditDiv">
                                <cfset local.title = session.pageDatas.pagename>
                                <cfset local.desc = session.pageDatas.pagedesc>
                                <div class="displayEditDiv d-flex flex-column">
                                    <label name="titleLabel" class="fw-bold my-3">Page Title</label>
                                    <input name="titleInput" class="editInput" value="#local.title#">
                                    <label name="descriptionLabel" class="fw-bold my-3">Page Description</label>
                                    <textarea name="descriptionText" class="editInput">#local.desc#</textarea>
                                    <button type="submit" name="submit" class="mx-auto my-4 fw-bold editButton" value="#session.pageDatas.pageid#">Update</button>
                                </div>                        
                            </div>
                        </div>
                </form>
             </div>
            <cfif structKeyExists(form, "submit")>     
                <cfset local.obj = new components.component()>
                <cfset local.result = local.obj.editTableRow(form.submit,form.titleInput,form.descriptionText)>
                <cfif local.result>
                    <cfset local.obj.editRow(form.submit)>
                    <cflocation  url="admin.cfm">
                <cfelse>
                    <span class="fw-bold text-danger">Page Name Already Exist</span>
                </cfif>
            </cfif>
            <cfif structKeyExists(form,"logout")>
                <cfset local.obj = new components.component()>
                <cfset local.result = local.obj.logout()>
                <cfif local.result>
                    <cflocation  url="index.cfm">
                </cfif>
            </cfif>
        </cfoutput>
    </body>
</html>