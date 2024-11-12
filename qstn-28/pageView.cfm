<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Discription</title>
    <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<cfoutput>
    <cfif structKeyExists(session, "userName")>    
        <form action="" method="post" id="loginForm">
            <div class="adminHeaderDiv d-flex justify-content-between mx-4 my-4">
                <a href="index.cfm" class="text-decoration-none fw-bold">Home</a>
                <span class="adminHead">User Page</span>
                <button type="submit" class="editBtn pageButton adminLogoutColor" name="logout">Logout</button>
            </div>     
            <div class="d-flex justify-content-center">
                <div class="d-flex flex-column">
                    <span class="pageHead fw-bold mx-auto my-4">Page Description</span>
                    <div class="pageEditDiv">
                        <cfset local.title = session.userViewData.pagename>
                        <cfset local.desc = session.userViewData.pagedesc>
                        <div class="displayEditDiv d-flex flex-column">
                            <label name="titleLabel" class="fw-bold my-3">Page Title</label>
                            <input name="titleInput" value="#local.title#">
                            <label name="descriptionLabel" class="fw-bold my-3">Page Description</label>
                            <textarea name="descriptionText">#local.desc#</textarea>
                        </div>                   
                    </div>
                </div>
            </div>
        </form>
        <cfif structKeyExists(form,"logout")>
            <cfset local.obj = new components.component()>
            <cfset local.result = local.obj.logout()>
            <cfif local.result>
                <cflocation  url="index.cfm">
            </cfif>
        </cfif>
    </cfif>
</cfoutput>
</body>
</html>