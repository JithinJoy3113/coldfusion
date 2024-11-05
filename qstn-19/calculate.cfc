<cfcomponent>
    <cffunction  name="cookiesCount" returnType="any">  
        <cfif structKeyExists(cookie, "cookieValue")>
            <cfset cookie.cookieValue=cookie.cookieValue+1>
        <cfelse>
            <cfcookie  name="cookieValue" expires=0>
            <cfset cookie.cookieValue=1>
        </cfif>
    <cfreturn #cookie.cookieValue#>
    </cffunction>
</cfcomponent>