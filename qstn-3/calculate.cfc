<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
        <cfargument  name="list" required="true">
        <cfset numArray = listToArray(arguments.list)>
        <cfset local.result = []>
        <cfloop list="#numArray#" index="num">
        <cfdump  var="var">
            <cfset num = val("num")>
            <cfdump  var=#item#>
            <cfif item MOD 3 NEQ 0>
                <cfcontinue>
            </cfif>
            <cfset arrayAppend(local.result, item)>         
        </cfloop>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>