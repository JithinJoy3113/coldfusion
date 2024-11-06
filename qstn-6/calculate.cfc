<cfcomponent>
    <cffunction  name="display" returnType = "string">
        <cfargument  name="value1">
        <cfargument  name="value2">

        <cfset local.result = "">
        <cfif trim(len(arguments.value1)) OR trim(len(arguments.value2))>
            <cfset local.result="#arguments.value1# : #arguments.value2#">
        <cfelse>
            <cfset local.result="Input the datas">
        </cfif>

        <cfreturn local.result>
    </cffunction>
</cfcomponent>