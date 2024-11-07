<!DOCTYPE html>
<html lang = "en">
<head>
    <meta charset = "UTF-8">
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
    <link rel = "stylesheet" href = "css/style.css">
</head>
<body>
    <div class = "d-flex justify-content-center">
        <form action="" method="post" id="regForm">
            <div class = "d-flex flex-column formDiv">
                <div class = "fromHeader">
                    <img src = "assets/images/wflogo.png">
                </div>
                <div class = "formMainDiv d-flex flex-column bg-light">
                    <div class="formHead d-flex flex-column">
                        <span class="headSpan">Employment Application</span>
                        <span class="headSpanTwo mt-1">Infinity Box Inc.</span>
                    </div>
                    <div class="inputFieldDiv">
                        <ul>
                            <li class="inputLi">
                                <label for="position" class="label" id="errorLabelPosition">Which position are you applying for?
                                    <span class="indicate text-danger">*</span>
                                </label>
                                <div class="positionInputDiv" id="positionInputDiv">
                                    <select name="position" id="positionInput" class="inputHeight">
                                        <option value="" selected="selected"></option>
                                        <option value="Interface Designer"> Interface Designer</option>
                                        <option value="Software Engineer">Software Engineer</option>
                                        <option value="System Administrator">System Administrator</option>
                                        <option value="Office Manager">Office Manager</option>
                                    </select>
                                </div>
                                <span class="positionError error" id="positionError"></span>
                            </li>
                            <li class="inputLi">
                                <label for="relocate" class="label" id="errorLabelLocate">Are you willing to relocate?
                                    <span class="indicate text-danger">*</span>
                                </label>
                                <div class="relocateInputDiv" id="relocateInputDiv">
                                    <input type="radio" id="locateRadio" name="relocate" value="yes" name="locateRadio">Yes<br>
                                    <input type="radio" id="locateRadio" name="relocate" value="no" name="locateRadio">No
                                </div>
                                <span class="locationError error" id="locationError"></span>
                            </li>
                            <li class="inputLi">
                                <label for="joinDate" class="label" id="errorLabelStart">When can you start?
                                    <span class="indicate text-danger">*</span>
                                </label>
                                <div class="d-flex joinDateDiv" id="joinInputDiv">
                                    <div class="d-flex flex-column">
                                        <input type="text" id="dateOne" name="dateOne" class="dateOne inputHeight" maxlength="2" minlength="2">
                                        <label for="dateOne" class="dateLabel">MM</label>
                                    </div>
                                    <span class="dateSymbol px-1">/</span>
                                    <div class="d-flex flex-column">
                                        <input type="text" id="dateTwo" name="dateTwo" class="dateOne" maxlength="2" minlength="2">
                                        <label for="dateOne" class="dateLabel">DD</label>
                                    </div>
                                    <span class="dateSymbol px-1">/</span>
                                    <div class="d-flex flex-column">
                                        <input type="text" id="dateThree" name="dateThree" class="dateThree" maxlength="4" minlength="4">
                                        <label for="dateOne" class="dateLabel ms-1">YYYY</label>
                                    </div>
                                </div>
                                <span class="dateError error" id="dateError"></span>
                            </li>
                            <li class="inputLi">
                                <label for="portfolio" class="label">Portfolio Web Site</label>
                                <div class="portfolioInputDiv" id="portfolioInputDiv">
                                    <input type="text" id="portfolioInput" name="portfolioInput" value="http://" class="inputHeight portfolioInput">
                                </div>
                            </li>
                            <li class="inputLi">
                                <label for="fileUpload" class="label">Attach a Copy of Your Resume</label>
                                <div class="fileInputDiv" id="fileInputDiv">
                                    <input type="file" id="fileInput" name="fileInput" value="http://" class="inputHeight fileInput">
                                </div>
                                <span class="fileNote headSpanTwo" id="fileNote">Word or PDF Documents Only</span>
                            </li>
                            <li class="inputLi">
                                <label for="salary" class="label">Salary Requirements</label>
                                <div class="d-felx salaryInputDiv" id="salaryInputDiv">
                                    <span class="salarySymbol">$</span>
                                    <input type="text" id="salaryInputOne" name="salaryInputOne" class="inputHeight salaryInputOne">
                                    <span class="salarySymbolDot">.</span>
                                    <input type="text" id="salaryInputTwo" name="salaryInputTwo" class="inputHeight salaryInputTwo dateOne">
                                </div>
                                <div class="d-flex">
                                     <span class="salaryNote headSpanTwo ms-3" id="salaryNote">Dollars</span>
                                     <span class="salaryNote headSpanTwo ms-5 ps-2" id="salaryNote">Cents</span>
                                </div>
                            </li>
                            <li class="inputLi">
                                <div class="d-felx contactDetails">
                                    Your Contact Information
                                </div>
                            </li>
                            <li class="inputLi">
                                <label for="name" class="label" id="errorLabelName">Name 
                                    <span class="indicate text-danger">*</span>
                                </label>
                                <div class="d-flex nameInputDiv" id="nameInputDiv">
                                    <input type="text" id="nameInputFisrt" name="nameInputFirst" class="inputHeight nameInputFisrt">
                                    <input type="text" id="nameInputLast" name="nameInputLast" class="ms-1 inputHeight nameInputSecond">
                                </div>
                                <div class="d-flex">
                                     <span class="nameNote headSpanTwo" id="nameNote">First</span>
                                     <span class="nameNote headSpanTwo ms-5" id="nameNote">Last</span>
                                </div>
                                <span class="nameError error" id="nameError"></span>
                            </li>
                            <li class="inputLi">
                                <label for="email" class="label" id="errorLabelEmail">Email Address
                                    <span class="indicate text-danger">*</span>
                                </label>
                                <div class="emailInputDiv" id="emailInputDiv">
                                    <input type="text" id="emailInput" name="emailInput" class="inputHeight portfolioInput">
                                </div>
                                <span class="mailError error" id="mailError"></span>
                            </li>
                            <li class="inputLi">
                                <label for="phone" class="label" id="errorLabelPhone">Phone
                                    <span class="indicate text-danger">*</span>
                                </label>
                                <div class="d-flex phoneDiv" id="phoneDiv">
                                    <div class="d-flex flex-column">
                                        <input type="text" id="phoneOne" class="phoneOne inputHeight"  maxlength="3">
                                        <label for="phoneOne" class="dateLabel">###</label>
                                    </div>
                                    <span class="dateSymbol px-1">-</span>
                                    <div class="d-flex flex-column">
                                        <input type="text" id="phoneTwo" class="phoneOne inputHeight"   maxlength="3">
                                        <label for="dateOne" class="dateLabel">###</label>
                                    </div>
                                    <span class="dateSymbol px-1">-</span>
                                    <div class="d-flex flex-column">
                                        <input type="text" id="phoneThree" class="phoneThree inputHeight"  maxlength="4">
                                        <label for="dateOne" class="dateLabel ms-1">####</label>
                                    </div>
                                </div>
                                <span class="phoneError error" id="phoneError"></span>
                            </li>
                            <li class="inputLi">
                                <button type="submit" class="submitButton" name='submit' onclick="return validate()">Submit</button>
                            </li>
                        </ul>
                    </div>
                    <div class="formFooterDiv">
                        This site is protected by reCAPTCHA Enterprise and the Google
                        <a href="" class="formFooterLink">Privacy Policy</a> and 
                        <a href="" class="formFooterLink">Terms of Service </a>apply.
                    </div>
                </div>              
            </div>         
        </form>
        <cfif structKeyExists(form, "submit")>
            <cfset local.start=form.dateThree AND '-' AND form.dateOne AND '-' AND form.dateTwo>
            <cfset local.salary = form.salaryInputOne AND form.salaryInputTwo>
            <cfset local.obj = new component()>
            <cfset local.result = local.obj.insertRow(form.position,form.relocate,local.start,form.portfolioInput,
                                    form.emailInput,form.fileInput,local.salary,form.nameInputFirst,form.nameInputLast)>
        </cfif>   
    </div>
    <script src="js/script.js"></script>
</body>
</html>