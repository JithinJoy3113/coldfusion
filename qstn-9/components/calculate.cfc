<cfcomponent>
    <cffunction  name="display" returnType="any">
        <cfargument  name="value1">
        <cfargument  name="value2">
        <cfset local.result = "">
        <cfif trim(len(arguments.value1))  AND trim(len(arguments.value2))>
            <cfif structKeyExists(session, "result")>
                <cfloop collection="#session.result#" item="item">
                    <cfif item EQ arguments.value1>
                        <cfset local.result = "#arguments.value1# already present. Cannot add again">
                        <cfreturn local.result>
                    <cfelse>
                        <cfset session.result[arguments.value1] = arguments.value2> 
                    </cfif>
                </cfloop>
            <cfelse>
                <cfset session.result = {}> 
                <cfset session.result[arguments.value1] = arguments.value2> 
            </cfif>
        <cfelse>
            <cfset local.result = "Input the datas">
            <cfreturn local.result>
        </cfif> 
        <cfreturn session.result>
    </cffunction>
</cfcomponent>