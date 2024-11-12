<cfcomponent>
    <cffunction  name="signUp" returnType="boolean">
        <cfargument  name="userName" required="true">
        <cfargument  name="userRole" required="true">
        <cfargument  name="password" required="true">
        <cfset local.result = true>
        <cfquery name="selectQuery" datasource="database-jithin">
            select username from loginTable where username='#arguments.userName#'
        </cfquery>
        <cfif selectQuery.username NEQ arguments.userName>
            <cfquery name="signUpQuery" datasource="database-jithin">
            insert into loginTable(username,userrole,password) 
            values (
                <cfqueryparam value='#arguments.username#' cfsqltype="cf_sql_varchar">,
                <cfqueryparam value='#arguments.userRole#' cfsqltype="cf_sql_varchar">,
                <cfqueryparam value='#arguments.password#' cfsqltype="cf_sql_varchar">)
            </cfquery>
        <cfelse>
            <cfset local.result = false>
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="validUser" access="remote">
        <cfargument  name="userName" required="true">
        <cfargument  name="password" required="true">
        <cfset local.result = true>
         <cfquery name="selectQuery" datasource="database-jithin">
            select username,password,userrole from loginTable where username='#arguments.userName#'
        </cfquery>
        <cfset session.userName = selectQuery.username>
        <cfset session.role = selectQuery.userrole>
        <cfif selectQuery.password  NEQ #arguments.password#>
            <cfset local.result=false>         
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="displayPages" returnType="query">
        <cfquery name="displayTable" datasource="database-jithin">
            select pagename,pagedesc,pageid from pageTable
        </cfquery>
        <cfreturn displayTable>
    </cffunction>

    <cffunction  name="editRow" returnType="boolean">
        <cfargument  name="id" required="true">
        <cfquery name="editTable" datasource="database-jithin">
            select pageid,pagename,pagedesc from pageTable where pageid='#arguments.id#'
        </cfquery>
        <cfset session.pageDatas = editTable>
        <cfreturn true>
    </cffunction>

    <cffunction  name="editTableRow" returnType="boolean">
        <cfargument  name="id" required="true">
        <cfargument  name="title" required="true">
        <cfargument  name="description" required="true">
         <cfquery name="editRow" datasource="database-jithin">
            update pageTable set pagename = '#arguments.title#', pagedesc= '#arguments.description#' where pageid = '#arguments.id#';
        </cfquery>
        <cfreturn true>
    </cffunction>

    <cffunction  name="deleteRow">
        <cfargument  name="id" required="true">
        <cfquery name="deleteTableRow" datasource="database-jithin">
            delete from pageTable where pageid='#arguments.id#';
        </cfquery>
    </cffunction>

    <cffunction  name="addRow" returnType="boolean">      
        <cfargument  name="title">
        <cfargument  name="desc">      
        <cfquery name="addTableRow" datasource="database-jithin">
            insert into pageTable (pagename,pagedesc) 
                values(<cfqueryparam value='#arguments.title#' cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value='#arguments.desc#' cfsqltype="cf_sql_varchar">);
        </cfquery> 
        <cfreturn true>     
    </cffunction>

    <cffunction  name="logout" returnType="boolean">
        <cfset structClear(session)>
        <cfreturn true>
    </cffunction>

     <cffunction  name="userPageView" returnType="boolean">
        <cfargument  name="viewQuery">
        <cfquery name="userView" datasource="database-jithin">
            select pagename,pagedesc,pageid from pageTable where pageid='#arguments.viewQuery#'
        </cfquery>
        <cfset session.userViewData = userView>
        <cfreturn true>
    </cffunction>

</cfcomponent>