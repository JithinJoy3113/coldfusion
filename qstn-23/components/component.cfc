<cfcomponent>
    <cffunction  name="insertRow">
        <cfargument  name="position">
        <cfargument  name="locate">
        <cfargument  name="start">
        <cfargument  name="portfolio">
        <cfargument  name="email">
        <cfargument  name="phone">
        <cfargument  name="resume">
        <cfargument  name="salary">
        <cfargument  name="firstName">
        <cfargument  name="lastName">
        <cfquery name="query" datasource="database-jithin"> 
            INSERT INTO joinDetails (FirtName,LastName,Phone,Email,Position,Relocate,Joining,Portfolio,Salary_Requirements,Resume)
             VALUES(<cfqueryparam value='#arguments.firstName#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.lastName#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.phone#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.email#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.position#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.locate#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.start#' cfsqltype="cf_sql_date">,
                    <cfqueryparam value='#arguments.portfolio#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.salary#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.resume#' cfsqltype="cf_sql_varchar">
                    )
        </cfquery>
        <cfreturn "Successfully added Record"> 
    </cffunction>
</cfcomponent>