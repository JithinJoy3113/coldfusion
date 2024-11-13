<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Page</title>
        <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <div class="adminHeaderDiv d-flex justify-content-between mx-4 my-4">
                <a href="index.cfm" class="text-decoration-none fw-bold">Home</a>
                <span class="adminHead">Admin Page</span>
                <button class="editBtn pageButton adminLogoutColor">Logout</button>
            </div>     
            <div class="d-flex justify-content-center">
                <form action="add.cfm" method="post" id="loginForm">
                    <div class="d-flex flex-column">
                        <span class="pageHead fw-bold mx-auto my-4">Add Page</span>
                        <div class="pageEditDiv">
                            <div class="displayEditDiv d-flex flex-column">
                                <label name="titleLabel" class="fw-bold my-3">Page Title</label>
                                <input name="titleInput" placeholder="Add title">
                                <label name="descriptionLabel" class="fw-bold my-3">Page Description</label>
                                <textarea name="descriptionText" placeholder="Add description"></textarea>
                                <button type="submit" name="submit" class="my-4 mx-5">Sumbit</button>
                            </div>
                            
                        </div>
                    </div>
                </form>
                <cfif structKeyExists(form, "submit")>
                    <cfdump  var="var">
                    <cfset local.obj = new components.component()>
                    <cfset local.result = local.obj.addRow(form.titleInput,form.descriptionText)>
                    <cflocation  url="admin.cfm">
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>