<cfcomponent>
    <cffunction  name="pattern" returnType="array">
    <cfset local.value = 1>
    <cfset local.arr = arrayNew(2)>
    <cfloop index="row" from="1" to="3">
        <cfloop index="col" from="1" to="3">
            <cfset local.arr[col][row] = local.value>
            <cfset local.value++>
        </cfloop>      
    </cfloop>
    <cfreturn local.arr>
    </cffunction>
</cfcomponent>