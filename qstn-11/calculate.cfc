<cfcomponent>
    <cffunction  name="multiply" returnType="any">
        <cfargument  name="numArray">  
        <cfset local.product = 1>
            <cfloop array="#arguments.numArray#" item="item">
                <cfset local.product = local.product*item>
            </cfloop>
        <cfreturn local.product>
    </cffunction>
</cfcomponent>