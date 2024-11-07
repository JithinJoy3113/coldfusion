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
    <cfargument name="value1">
    <cfargument name= "value2"> 
    <cfargument name="value3">
    <cfargument name= "value4"> 
    <cfset local.product = arguments.value1*arguments.value2*arguments.value3*arguments.value4>
    <cfreturn local.product>
</cffunction>
</cfcomponent>