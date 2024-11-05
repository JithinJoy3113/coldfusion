<cfcomponent>
    <cffunction  name="captchaValidate" returntype="any">
    <cfargument  name="email">
    <cfargument  name="captcha">
    <cfif len(arguments.email) LT 1>
        <cfreturn "Enter email:red">
    <cfelseif NOT isValid("email", arguments.email)>
        <cfreturn "Invalid email:red">
    </cfif>
    <cfset local.string = "coldfusion23">
    <cfif arguments.captcha EQ local.string>
        <cfreturn "Email Address successfully subscribe our newsletter:green">
    <cfelseif local.string EQ "" OR arguments.captcha NEQ local.string>
        <cfreturn "Invalid captcha:red">
    </cfif>
    </cffunction>
</cfcomponent>