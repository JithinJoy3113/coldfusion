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
        <cfoutput>
            <form action="" method="post" id="loginForm">
                <div class="signUpHeader adminHeaderDiv d-flex justify-content-between px-4">
                    <a href="admin.cfm" class="text-decoration-none fw-bold text-white">Home</a>
                    <span class="adminHead">Admin Page</span>
                    <button class="logoutBtn fw-bold" type = "button" name="logout" onclick="logoutValidate()">Logout</button>
                </div>  
                <button type="submit" class="editButton mt-3 addButton" name="addBtn" value="">Add Page</button>   
                <div class="d-flex justify-content-center">
                    <div class="d-flex flex-column" id="displayContent">
                        <span class="pageHead fw-bold mx-auto my-4">List of pages</span>
                        <div class="pageListDiv">
                            <cfset local.obj = new components.component()>
                            <cfset local.result = local.obj.displayPages()>
                            <div class="displayDiv d-flex flex-column">
                                <cfloop query="#local.result#" startRow = "1" endRow = "#QueryRecordCount(local.result)#">
                                    <div class="pageDisplayDiv d-flex justify-content-between align-items-center">
                                        <a href="" class="text-decoration-none text-dark">
                                            <div class="pageNameDiv d-flex text-white fw-bold overflow-hidden text-truncate">
                                                #pagename#
                                            </div>
                                        </a>
                                        <div class="pageButtonDiv d-flex">
                                            <button type="submit" class="pageButton adminEditColor" name="editBtn" value="#pageid#"><img width="24" height="24" src="https://img.icons8.com/material-outlined/24/FFFFFF/create-new.png" alt="create-new"/></button>
                                            <button type="button" class="pageButton adminDeleteColor " name="deleteBtn" value="#pageid#" onClick="deleteButton(this)"><img width="26" height="26" src="https://img.icons8.com/sf-black/64/FFFFFF/filled-trash.png" alt="filled-trash"/></button>
                                        </div>
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
                    <div class="deleteConfirm" id="deleteConfirm">
                        <span class="logourtAlertHead py-2 d-flex justify-content-center fw-bold text-white">Delete Page</span>
                        <div class="logoutMesage  d-flex flex-column justify-content-center">
                            <span class="confirmMessage fw-bold">Are you sure want to Delete?</span>
                            <button class="alertBtn mt-3" type="submit" name="alertDeleteBtn" id="alertDeleteBtn" onClick="return deleteAlert('yes')">Delete</button>
                            <button class="alertCancelBtn mt-2" type="sumbit" name="alertDeleteBtn" id="alertDeleteBtn" onClick="return deleteAlert('no')">Cancel</button>
                        </div>
                    </div>
                </div>
            </form>
            <cfif structKeyExists(form, "editBtn")>
                <cfset local.obj = new components.component()>
                <cfset local.result = local.obj.editRow(form.editBtn)>
                <cflocation  url="edit.cfm">
            </cfif>
           <cfif structKeyExists(form, "alertDeleteBtn")>
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