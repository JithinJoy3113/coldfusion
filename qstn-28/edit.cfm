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
                <div class="adminHeaderDiv d-flex justify-content-between mx-4 my-4">
                    <a href="index.cfm" class="text-decoration-none fw-bold">Home</a>
                    <span class="adminHead">Admin Page</span>
                    <button class="editBtn pageButton adminLogoutColor" name="logout">Logout</button>
                </div>     
                <div class="d-flex justify-content-center">
                        <div class="d-flex flex-column">
                            <span class="pageHead fw-bold mx-auto my-4">Edit page</span>
                            <div class="pageEditDiv">
                                <cfset local.title = session.pageDatas.pagename>
                                <cfset local.desc = session.pageDatas.pagedesc>
                                <div class="displayEditDiv d-flex flex-column">
                                    <label name="titleLabel" class="fw-bold my-3">Page Title</label>
                                    <input name="titleInput" value="#local.title#">
                                    <label name="descriptionLabel" class="fw-bold my-3">Page Description</label>
                                    <textarea name="descriptionText">#local.desc#</textarea>
                                    <button type="submit" name="submit" class="my-4 mx-5" value="#session.pageDatas.pageid#">Sumbit</button>
                                </div>                        
                            </div>
                        </div>
                </form>
                <cfif structKeyExists(form, "submit")>     
                    <cfset local.obj = new components.component()>
                    <cfset local.result = local.obj.editTableRow(form.submit,form.titleInput,form.descriptionText)>
                    <cfset local.obj.editRow(form.submit)>
                    <cflocation  url="admin.cfm">
                </cfif>
                <cfif structKeyExists(form,"logout")>
                    <cfset local.obj = new components.component()>
                    <cfset local.result = local.obj.logout()>
                    <cfif local.result>
                        <cflocation  url="index.cfm">
                    </cfif>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>