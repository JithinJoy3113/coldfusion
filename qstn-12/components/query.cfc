<cfcomponent>
    <cffunction  name="displayTable" returnType="query">
    <cfargument  name="number" required="true">
    <cfset local.structure = structNew()>
        <cfquery name="query" datasource="database-jithin">
            select FirstName,LastName from empDetails
        </cfquery>
    <cfset local.result = query>
    <cfreturn local.result>
    </cffunction>
</cfcomponent>