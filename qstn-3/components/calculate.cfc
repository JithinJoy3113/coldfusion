<cfcomponent>
    <cffunction  name="divisible" returnType="any">
        <cfargument  name="list" required="true">

        <cfset local.result = "">
        <cfif trim(len(arguments.list))>
           
            <cfloop list="#arguments.list#" item="item">
                <cfif item MOD 3 NEQ 0 OR item EQ 0>
                    <cfcontinue>
                </cfif>
                <cfset local.result=listAppend(local.result, item)>
            </cfloop>
            <cfif len(local.result) NEQ 0>
                <cfset local.result = "Numbers divisible by 3 : #local.result#">
            <cfelse>
            <cfset local.result = "No number divisible by 3">
        </cfif>  

        <cfelse>
                <cfset local.result = "Enter the input">
        </cfif>    
        
        <cfreturn local.result>          
    </cffunction>
</cfcomponent>