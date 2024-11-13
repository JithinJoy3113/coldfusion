<cfcomponent>

<!---     SignUp --->

    <cffunction  name="signUp" returnType="boolean">

        <cfargument  name="userName" required="true">
        <cfargument  name="userRole" required="true">
        <cfargument  name="password" required="true">
        <cfset local.encrypPass = Hash(#arguments.password#, 'SHA-512')/>
        <cfset local.result = true>

        <cfquery name="selectQuery">
            select username from loginTable where username='#arguments.userName#'
        </cfquery>

        <cfif selectQuery.username NEQ arguments.userName>
            <cfquery name="signUpQuery">
                insert into loginTable(username,userrole,password) 
                values (
                    <cfqueryparam value='#arguments.username#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.userRole#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#local.encrypPass#' cfsqltype="cf_sql_varchar">)
            </cfquery>
        <cfelse>
            <cfset local.result = false>
        </cfif>

        <cfreturn local.result>
    </cffunction>

<!---     Login --->

    <cffunction  name="validUser" access="remote">
        <cfargument  name="userName" required="true">
        <cfargument  name="password" required="true">
        <cfset local.encrypPass = Hash(#arguments.password#, 'SHA-512')/>
        <cfset local.result = true>
         <cfquery name="selectQuery">
            select username,password,userrole from loginTable where username='#arguments.userName#'
        </cfquery>
        <cfset session.userName = selectQuery.username>
        <cfset session.role = selectQuery.userrole>
        <cfset session.login = true>
        <cfif selectQuery.password  NEQ #local.encrypPass#>
            <cfset local.result=false>
        </cfif>
        <cfreturn local.result>
    </cffunction>

<!---     viewpages --->

    <cffunction  name="displayPages" returnType="query">
        <cfquery name="displayTable">
            select pagename,pagedesc,pageid from pageTable
        </cfquery>
        <cfreturn displayTable>
    </cffunction>

<!---     Admin edit rows page--->

    <cffunction  name="editRow" returnType="boolean">
        <cfargument  name="id" required="true">
        <cfquery name="editTable">
            select pageid,pagename,pagedesc from pageTable where pageid='#arguments.id#'
        </cfquery>
        <cfset session.pageDatas = editTable>
        <cfreturn true>
    </cffunction>

<!---     Admin edit page --->

    <cffunction  name="editTableRow" returnType="boolean">
        <cfargument  name="id" required="true">
        <cfargument  name="title" required="true">
        <cfargument  name="description" required="true">
         <cfquery name="editRow">
            update pageTable set pagename = '#arguments.title#', pagedesc= '#arguments.description#' where pageid = '#arguments.id#';
        </cfquery>
        <cfreturn true>
    </cffunction>

<!---     Admin delete page --->

    <cffunction  name="deleteRow">
        <cfargument  name="id" required="true">
        <cfquery name="deleteTableRow">
            delete from pageTable where pageid='#arguments.id#';
        </cfquery>
    </cffunction>

<!---     Admin add page --->

    <cffunction  name="addRow" returnType="boolean">
        <cfargument  name="title">
        <cfargument  name="desc">
        <cfif trim(len(arguments.title)) AND trim(len(arguments.desc))>
            <cfquery name="addTableRow">
            insert into pageTable (pagename,pagedesc) 
                values(<cfqueryparam value='#arguments.title#' cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value='#arguments.desc#' cfsqltype="cf_sql_varchar">);
            </cfquery> 
        </cfif>      
        <cfreturn true>
    </cffunction>

<!---     Logout --->

    <cffunction  name="logout" returnType="boolean" access="remote">
        <cfset structClear(session)>

        <cfreturn true>
    </cffunction>

<!---     User view pages --->

     <cffunction  name="userPageView" returnType="boolean">
        <cfargument  name="viewQuery">
        <cfquery name="userView">
            select pagename,pagedesc,pageid from pageTable where pageid='#arguments.viewQuery#'
        </cfquery>
        <cfset session.userViewData = userView>
        <cfreturn true>
    </cffunction>

</cfcomponent>