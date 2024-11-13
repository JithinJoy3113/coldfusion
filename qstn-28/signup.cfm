<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SignUp</title>
        <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="signupBody">
        <div class="signUpHeader d-flex justify-content-center">
            Content Management System
        </div>
        <div class="d-flex flex-column justify-content-center align-items-center">
            <form action="" method="post" id="signUpForm">
                <div class="signupDiv d-flex flex-column justify-content-center">
                    <span class="signupHead fw-bold mx-auto my-4">User Sign Up</span>
                    <div class="d-flex flex-column justify-content-center inputDiv">
                        <input type="text" class="textField userNameInput" name="userName" id="userName" placeholder="Enter User Name">
                        <span class="mailError fw-bold text-danger" id="mailError"></span>
                        <select name="userRole" id="userRole" class="textField userSelect mt-3">
                            <option value="" class="textField">--Select User Type--</option>
                            <option value="user" class="textField">Public</option>
                            <option value="admin" class="textField">Admin</option>
                        </select>
                        <span class="roleError fw-bold text-danger" id="roleError"></span>
                        <input type="password" name="password" class="textField passwordInput mt-3" id="password" placeholder="Enter the password">
                        <span class="passwordError fw-bold text-danger" id="passwordError"></span>
                        <input type="password" class="textField confirmInput mt-3" id="confirmPassword" placeholder="Re-enter the password">
                        <span class="confirmpasswordError fw-bold text-danger" id="confirmpasswordError"></span>
                    </div>
                    <button type="submit" name="submit" class="fw-bold signUpButton mt-4 mx-auto" onClick="return signUpValidate()">SignUp</button>
                    <a href="login.cfm" class="text-decoration-none fw-bold mx-auto my-3 text-dark">Already have account? Login</a>
                </div>
            </form>
            <cfif structKeyExists(form, "submit")>
                <cfset local.obj = new components.component()>
                <cfset local.result = local.obj.signUp(form.userName, form.userRole, form.password)>   
                <cfif local.result>
                    <span class="text-success fw-bold">SignUp Completed</span>
                <cfelse>
                    <span class="text-danger fw-bold">User already exists</span>
                </cfif>     
            </cfif>
        </div>
        <script src="js/script.js"></script>
    </body>
</html>