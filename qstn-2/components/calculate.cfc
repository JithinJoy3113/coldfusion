<cfcomponent>
    <cffunction  name="rating" returnType="string">
        <cfargument  name="number" type="any" required="true">      
        <cfset local.result = "">

            <cfswitch expression = #arguments.number#> 
                <cfcase  value = "5">
                    <cfset local.result = "Very Good">
                </cfcase>
                <cfcase  value = "4">
                    <cfset local.result = "Good">
                </cfcase>
                <cfcase  value = "3">
                    <cfset local.result = "Fair">
                </cfcase>
                <cfcase  value = "2,1">
                    <cfset local.result = "OK">
                </cfcase>
                <cfdefaultcase>
                    <cfset local.result = "Invalid number, Please select valid number(1 - 5)">
                </cfdefaultcase> 
            </cfswitch> 

         <cfreturn local.result>
    </cffunction>
</cfcomponent>