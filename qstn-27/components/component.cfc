<cfcomponent>
    <cffunction name="loginPage">
        <cfargument name="email" required="true">
        <cfargument name="password" required="true">
        <cfquery name="query" datasource="database-jithin">
            select Password,Email from login where Email='#arguments.email#'
        </cfquery>
        <cfif arguments.password EQ query.Password AND query.email EQ arguments.email>
            <cfset session.email = #arguments.email#>
            <cfset session.password = #arguments.password#>
            <cflocation  url="welcome.cfm" addtoken="no">
        <cfelse>
            <cfreturn "Invalid user">
        </cfif>
    </cffunction>
</cfcomponent>