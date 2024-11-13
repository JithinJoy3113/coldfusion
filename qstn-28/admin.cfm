<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin</title>
        <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="adminBody">
        <cfdump var="#session#">
        <cfoutput>
            <form action="" method="post" id="loginForm">
                <div class="adminHeaderDiv d-flex justify-content-between mx-4 my-4">
                    <a href="index.cfm" class="text-decoration-none fw-bold">Home</a>
                    <span class="adminHead">Admin Page</span>
                    <button class="editBtn pageButton adminLogoutColor" type="button" name="logout" onclick="logoutValidate()">Logout</button>
                </div>       
                <div class="d-flex justify-content-center">
                    <div class="d-flex flex-column">
                        <span class="pageHead fw-bold mx-auto my-4">List of pages</span>
                        <div class="pageListDiv">
                            <cfset local.obj = new components.component()>
                            <cfset local.result = local.obj.displayPages()>
                            <div class="displayDiv d-flex flex-column">
                                <cfloop query="#local.result#" startRow = "1" endRow = "#QueryRecordCount(local.result)#" >
                                    <div class="pageDisplayDiv d-flex justify-content-between">
                                        <a href="" class="text-decoration-none text-dark">
                                            <div class="pageNameDiv d-flex">
                                                #pagename#
                                            </div>
                                        </a>
                                        <div class="pageButtonDiv d-flex">
                                                <button type="submit" class="editBtn pageButton adminEditColor" name="editBtn" value="#pageid#">Edit</button>
                                                <button type="submit" class="deleteBtn pageButton adminDeleteColor" name="deleteBtn" value="#pageid#">Delete</button>
                                        </div>
                                    </div>
                                </cfloop>
                            </div>
                            <button type="submit" class="editBtn pageButton adminEditColor mt-3" name="addBtn" value="">AddPage</button>
                        </div>
                    </div>
                </div>
                <div class="logoutConfirm" id="logoutConfirm">
                    <span class="confirmMessage">Are you sure want to logout?</span>
                    <button class="alertBtn" type="submit" name="alertBtn" id="alertBtn" onClick="return logoutAlert('yes')">Logout</button>
                    <button class="alertBtn" type="button" name="alertBtn" id="alertBtn" onClick="return logoutAlert('no')">Cancel</button>
                </div>
            </form>
            <cfif structKeyExists(form, "editBtn")>
                <cfset local.obj = new components.component()>
                <cfset local.result = local.obj.editRow(form.editBtn)>
                <cflocation  url="edit.cfm">
            </cfif>
           <cfif structKeyExists(form, "deleteBtn")>
                <cfset local.obj = new components.component()>
                <cfset local.result = local.obj.deleteRow(form.deleteBtn)>
                <cflocation  url="admin.cfm">
            </cfif> 
                <cfif structKeyExists(form, "addBtn")>
                <cflocation  url="add.cfm">
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