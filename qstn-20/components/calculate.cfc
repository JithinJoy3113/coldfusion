<cfcomponent>
    <cffunction  name="captchaValidate" returntype="string">
        <cfargument  name="email">
        <cfargument  name="captcha">
        <cfset local.result = "">
        <cfif len(arguments.email) LT 1>
            <cfset local.result = "Enter email:red">
        <cfelseif NOT isValid("email", arguments.email)>
            <cfset local.result = "Invalid email:red">
        </cfif>
        <cfset local.string = "coldfusion23">
        <cfif arguments.captcha EQ local.string>
            <cfset local.result = "Email Address successfully subscribe our newsletter:green">
        <cfelseif local.string EQ "" OR arguments.captcha NEQ local.string>
            <cfset local.result = "Invalid captcha:red">
        <cfelseif len(arguments.email) LT 1 AND len(arguments.captcha) LT 1>
            <cfset local.result = "Enter the values:red">
        </cfif>    
        <cfreturn local.result>
    </cffunction>
</cfcomponent>