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
    <cfif structKeyExists(session, "userName")>        
        <form action="" method="post" id="loginForm">
            <div class="adminHeaderDiv d-flex justify-content-between mx-4 my-4">
                <a href="index.cfm" class="text-decoration-none fw-bold">Home</a>
                <span class="adminHead">User Page</span>
                <button class="editBtn pageButton adminLogoutColor" name="logout">Logout</button>
            </div>       
            <div class="d-flex justify-content-center">
                <div class="d-flex flex-column">
                    <span class="pageHead fw-bold mx-auto my-4">List of pages</span>
                    <div class="pageListDiv">
                        <cfset local.obj = new components.component()>
                        <cfset local.result = local.obj.displayPages()>
                        <div class="displayDiv d-flex flex-column">
                            <cfloop query="#local.result#" startRow = "1" endRow = "#QueryRecordCount(local.result)#" >
                                <cfset local.title = local.result.pagename>
  
                                <div class="pageDisplayDiv d-flex justify-content-between">
                                        <div class="pageNameDiv d-flex">
                                            <button class="border-0" name="pageViewBtn" value="#local.result.pageid#">#local.title#</button>  
                                        </div>
                                    </a>
                                </div>
                            </cfloop>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <cfif structKeyExists(form,"pageViewBtn")>
            <cfset local.obj = new components.component()>
            <cfset local.result = local.obj.userPageView(form.pageViewBtn)>
            <cfif local.result>
                <cflocation  url="pageView.cfm">
            </cfif>
        </cfif>
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