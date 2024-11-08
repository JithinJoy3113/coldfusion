<cfcomponent>
    <cffunction  name="mailExist" access="remote">
        <cfargument  name="mail">

        <cfquery name="query" datasource="database-jithin">    
            select email from emailTable where email='#arguments.mail#'
        </cfquery>     
        <cfif query.recordCount GT 0>
            <cfreturn true>
        </cfif>
    </cffunction>

    <cffunction  name="insetRow">     
        <cfargument  name="name">
        <cfargument  name="mail">  
        <cfquery name="query" datasource="database-jithin"> 
            INSERT INTO emailTable (Name,email)
             VALUES(<cfqueryparam value='#arguments.name#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.mail#' cfsqltype="cf_sql_varchar">)
        </cfquery> 
        <cfreturn "Successfully added Record">
    </cffunction>
</cfcomponent>