<cfcomponent>
    <cffunction  name="display">
        <cfargument  name="val1">
        <cfargument  name="val2">
        <cfloop collection="#session.result#" item="item">
            <cfif #item# EQ arguments.val1>
                <cfreturn "#arguments.val1# already present. Cannot add again">
            </cfif>
        </cfloop>
        <cfif len(arguments.val1) EQ 0 OR len(arguments.val2) EQ 0>
            <cfdump  var="Input the datas">
        <cfelse>
             <cfset session.result[arguments.val1]=arguments.val2> 
        </cfif> 
        <cfreturn #session.result#>
    </cffunction>
</cfcomponent>