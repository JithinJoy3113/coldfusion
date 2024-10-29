<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
        <cfargument  name="number" type="any" required="true">
        <cfif not isNumeric(arguments.number)>
             <cfreturn "Enter a valid number">
        </cfif>
        <cfif len(arguments.number) GT 0>
        <cfswitch expression=#arguments.number#> 
            <cfcase  value="5">
                <cfreturn "Very Good">
            </cfcase>
            <cfcase  value="4">
                <cfreturn "Good">
            </cfcase>
            <cfcase  value="3">
                <cfreturn "Fair">
            </cfcase>
            <cfcase  value="2,1">
                <cfreturn "OK">
            </cfcase>
            <cfdefaultcase>
                <cfreturn "Invalid number, Please select valid number(1 - 5)">
            </cfdefaultcase> 
        </cfswitch>      
  <cfelse> 
      <cfreturn "Enter a valid number"> 
        </cfif>
    </cffunction>
</cfcomponent>