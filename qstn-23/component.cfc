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
        <cfdump  var="#arguments.lastName#">
        <cfquery name="query" datasource="database-jithin"> 
            INSERT INTO joinDetails (FirtName,LastName,Phone,Email,Position,Relocate,Joining,Portfolio,Salary_Requirements) VALUES 
             VALUES(<cfqueryparam value='#arguments.firstName#' cfsqltype="sf_sql_varchar">
                    <cfqueryparam value='#arguments.lastName#' cfsqltype="sf_sql_varchar">
                    <cfqueryparam value='#arguments.phone#' cfsqltype="sf_sql_varchar">
                    <cfqueryparam value='#arguments.email#' cfsqltype="sf_sql_varchar">
                    <cfqueryparam value='#arguments.locate#' cfsqltype="sf_sql_varchar">
                    <cfqueryparam value='#arguments.position#' cfsqltype="sf_sql_varchar">
                    <cfqueryparam value='#arguments.start#' cfsqltype="sf_sql_date">
                    <cfqueryparam value='#arguments.portfolio#' cfsqltype="sf_sql_varchar">
                    <cfqueryparam value='#arguments.salary#' cfsqltype="sf_sql_integer">
                    )
        </cfquery> 
    </cffunction>
</cfcomponent>