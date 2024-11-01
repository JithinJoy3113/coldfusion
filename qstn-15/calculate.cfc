<cfcomponent>
    <cffunction  name="multiply" returnType="any">
        <cfargument  name="numList">  
        <cfset local.product = 1>
            <cfloop list="#numList#" item="item">
                <cfset local.product = local.product*item>
            </cfloop>
        <cfreturn local.product>
    </cffunction>

    <cffunction name="multiplyInvoke" returnType="any">
    <cfargument name="val1">
    <cfargument name= "val2"> 
    <cfargument name="val3">
    <cfargument name= "val4"> 
    <cfset local.product = arguments.val1*arguments.val2*arguments.val3*arguments.val4>
    <cfreturn local.product>
</cffunction>
</cfcomponent>