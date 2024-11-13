<cfcomponent>
    <cffunction  name="numValidate" returnType="any">
        <cfargument  name="num">
        <cfset values = structNew("ordered")>
        <cfloop index="i" from="1" to="#num#">
            <cfif i MOD 2 EQ 0>
                <cfset values[i] = "green">
            <cfelse>
                <cfset values[i] = "blue">
            </cfif>
        </cfloop>
        <cfreturn values>
    </cffunction>
</cfcomponent>