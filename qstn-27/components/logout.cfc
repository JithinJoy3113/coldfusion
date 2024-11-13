<cfcomponent>
    <cffunction  name="logout">
        <cfset structClear(session)>
        <cflocation  url="index.cfm" addtoken="no">
    </cffunction>
</cfcomponent>