<cfcomponent>
    <cffunction  name="display">
        <cfargument  name="value1">
        <cfargument  name="value2">
        <cfif trim(len(arguments.value1))  OR trim(len(arguments.value2))>
            <cfset session.result[arguments.value1]=arguments.value2> 
        <cfelse>
             <cfdump  var="Input the datas">
        </cfif>
        <cfreturn session.result>
    </cffunction>
</cfcomponent>