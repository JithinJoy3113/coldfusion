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
            <form action="" method="post" id="loginForm">             
                <div class="signUpHeader adminHeaderDiv d-flex justify-content-between px-4">
                    <a href="user.cfm" class="text-decoration-none fw-bold text-white">Home</a>
                    <span class="adminHead">User Page</span>
                    <button class="logoutBtn fw-bold" type = "button" name="logout" onclick="logoutValidate()">Logout</button>
                </div>
                <div class="d-flex justify-content-center">
                    <div class="d-flex flex-column" id = "displayContent">
                        <span class="pageHead fw-bold mx-auto my-4">List of pages</span>
                        <div class="pageListDiv">
                            <cfset local.obj = new components.component()>
                            <cfset local.result = local.obj.displayUserPages()>
                            <div class="displayDiv d-flex flex-column">
                                <cfloop query="#local.result#" startRow = "1" endRow = "#QueryRecordCount(local.result)#" >
                                    <cfset local.title = local.result.pagename>
                                    <div class="d-flex justify-content-between">
                                            <div class="pageNameDiv d-flex w-100">
                                                <button class="border-0 w-100 displayBtn" name="pageViewBtn" value="#local.result.pageid#">#local.title#</button>  
                                            </div>
                                        </a>
                                    </div>
                                </cfloop>
                            </div>
                        </div>
                    </div>
                    <div class="logoutConfirm" id="logoutConfirm">
                        <span class="logourtAlertHead py-2 d-flex justify-content-center fw-bold text-white">Logout Alert</span>
                        <div class="logoutMesage  d-flex flex-column justify-content-center">
                            <span class="confirmMessage fw-bold">Are you sure want to logout?</span>
                            <button class="alertBtn mt-3" type="submit" name="alertBtn" id="alertBtn" onClick="return logoutAlert('yes')">Logout</button>
                            <button class="alertCancelBtn mt-2" type="submit" name="alertBtn" id="alertBtn" onClick="return logoutAlert('no')">Cancel</button>
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
            <cfif structKeyExists(form,"alertBtn")>
                <cflocation  url="index.cfm">
            </cfif>
        </cfoutput>
         <script src="js/script.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    </body>
</html>