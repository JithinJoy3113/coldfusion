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
            <form action="" method="post" id="loginForm">
                <div class="signUpHeader adminHeaderDiv d-flex justify-content-between px-4">
                    <a href="user.cfm" class="text-decoration-none fw-bold text-white">Home</a>
                    <span class="adminHead">User Page</span>
                    <button class="editBtn pageButton adminLogoutColor" type="button" name="logout" onclick="logoutValidate()">Logout</button>
                </div>   
                <div class="d-flex justify-content-center">
                    <cfset local.title = session.userViewData.pagename>
                    <cfset local.desc = session.userViewData.pagedesc>
                    <div class="d-flex flex-column mx-auto">
                        <span class="pageHead fw-bold mx-auto my-4">#local.title#</span>
                        <div class="pageEditDiv">
                            <div class="displayEditDiv d-flex flex-column">
                                #local.desc#
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="logoutConfirm" id="logoutConfirm">
                    <span class="confirmMessage">Are you sure want to logout?</span>
                    <button class="alertBtn" type="submit" name="alertBtn" id="alertBtn" onClick="return logoutAlert('yes')">Logout</button>
                    <button class="alertBtn" type="submit" name="alertBtn" id="alertBtn" onClick="return logoutAlert('no')">Cancel</button>
                </div>
            </form>
             <cfif structKeyExists(form,"alertBtn")>
                <cflocation  url="index.cfm">
            </cfif>
        </cfoutput>
        <script src="js/script.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    </body>
</html>