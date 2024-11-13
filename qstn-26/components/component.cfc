<cfcomponent>

    <cffunction  name="fileRead" returnType="query">

        <cfargument  name="file">

        <cfset local.path =ExpandPath("./assets")> 
        <cffile  action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset  local.fileName= cffile.clientFile>
        <cffile action="read" file="#local.path#/#local.fileName#" variable="wordsList">
        <cfset local.newList = "">

        <cfloop list="#wordsList#" item="char" delimiters=" ">
            <cfif NOT listContains(local.newList, char)>
                <cfset local.newList=listAppend(local.newList, char)>
            </cfif>
        </cfloop>

       <cfloop list="#local.newList#" item="item">

            <cfquery name="queryCount" datasource="database-jithin">
                select Words from readFile where Words='#item#'
            </cfquery>

            <cfif queryCount.Words LT 1>
                <cfquery name="query" datasource="database-jithin">
                    insert into readFile(Words) values (<cfqueryparam value='#item#' cfsqltype="cf_sql_varchar">)
                </cfquery>
            </cfif> 

        </cfloop>

        <cfquery name="queryTable" datasource="database-jithin">
            select words from readFile
        </cfquery>

        <cfreturn queryTable>
    </cffunction>
    
</cfcomponent>