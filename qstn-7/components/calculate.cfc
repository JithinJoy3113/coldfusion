<cfcomponent>
    <cffunction  name="display" returnType="any">
        <cfargument  name="value1">
        <cfargument  name="value2">
        <cfset session.result>
        <cfif trim(len(arguments.value1))  OR trim(len(arguments.value2))>
            <cfset session.result[arguments.value1]=arguments.value2> 
        <cfelse>
             <cfset session.result="Input the datas">
        </cfif>
        <cfreturn session.result>
    </cffunction>
</cfcomponent>