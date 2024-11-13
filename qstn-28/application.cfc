
 <cfcomponent>
    
    <cfset this.name = 'this.name'>
    <cfset this.sessionManagement = true>
    <cfset this.datasource = "database-jithin">

    <cffunction  name="onRequest" returnType="void">
     
        <cfargument  name="requestPage" required="true"> 
        <cfset local.excludePages = ["/jithin/coldfusion/qstn-28/signup.cfm","/jithin/coldfusion/qstn-28/login.cfm"]> 

        <cfif ArrayContains(local.excludePages,arguments.requestPage)>
            <cfinclude  template="#arguments.requestPage#">
        <cfelseif structKeyExists(session, "login") AND session.login EQ true>
            <cfinclude  template="#arguments.requestPage#">
        <cfelse>
            <cfinclude  template="login.cfm">
        </cfif>
        
    </cffunction>

 </cfcomponent>