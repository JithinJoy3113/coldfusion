<cfcomponent>
    <cffunction  name="logout">
        <cfset structClear(session)>
        <cflocation  url="index.cfm">
    </cffunction>
</cfcomponent>