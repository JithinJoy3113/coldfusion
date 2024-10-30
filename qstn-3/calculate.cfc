<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
        <cfargument  name="list" required="true">
        <cfif len(arguments.list) GT 0>
        <cfset numArray = listToArray(arguments.list)>
        <cfset local.result = "">
        <cfloop array="#numArray#" item="num">
            <cfif num MOD 3 NEQ 0 OR num EQ 0>
                <cfcontinue>
            </cfif>
            <cfset local.result=listAppend(local.result, num)>
        </cfloop>
        <cfelse>
            <cfreturn "Enter the input">
        </cfif>    
        <cfif len(local.result) NEQ 0>
            <cfreturn "Numbers divisible by 3 : #local.result#">
        <cfelse>
            <cfreturn "No number divisible by 3">
        </cfif>       
    </cffunction>
</cfcomponent>