<cfcomponent>
    <cffunction  name="pattern">
    <cfset value = 1>
    <cfset arr = arrayNew(2)>
    <cfloop index="row" from="1" to="3">
        <cfloop index="col" from="1" to="3">
            <cfset arr[col][row] = value>
            <cfset value++>
        </cfloop>      
    </cfloop>
    <cfloop index="row" from="1" to="3">
        <cfloop index="col" from="1" to="3">
            <cfoutput>#arr[row][col]#</cfoutput>
        </cfloop><br>      
    </cfloop>
    </cffunction>
</cfcomponent>