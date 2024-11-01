<cfcomponent>
    <cffunction  name="charSearch" returnType="any">
        <cfargument name="val1">
         <cfargument name="val2">
        <cfset local.count = 0>
        <cfset local.charArray = listToArray(arguments.val2," ")>
        <cfloop array="#charArray#" item="item" index="i">
            <cfif item EQ arguments.val1>
                <cfset local.count++>
            </cfif>
        </cfloop>
        <cfreturn local.count>
    </cffunction>
</cfcomponent>