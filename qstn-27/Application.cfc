<cfcomponent>
    <cfset this.name='loginApp'>
    <cfset this.sessionManagement = true>

    <cffunction  name="onRequest" returnType="void">
     
        <cfargument  name="requestPage" required="true"> 
        <cfset local.excludePages = ["index.cfm"]>

        <cfif ArrayContains(local.excludePages,arguments.requestPage)>
            <cfinclude  template="#arguments.requestPage#">
        <cfelseif structKeyExists(session, "email")>
            <cfinclude  template="#arguments.requestPage#">
        <cfelse>
            <cfinclude  template="index.cfm">
        </cfif>
        
    </cffunction>
</cfcomponent>
   
 