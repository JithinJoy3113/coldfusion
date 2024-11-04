<cfcomponent>
    <cffunction  name="bdayMail" returnType="any">
        <cfargument  name="val1">
        <cfargument  name="val2">
        <cfargument  name="val3">
        <cfargument  name="val4">
        <cfargument  name="val5">
         <cfset image =ExpandPath(arguments.val5)>
         <cfdump  var="#image#">
         <cffile  action="upload" destination="#image#">
        <cfmail  from="jithinj3113@gmail.com" subject="#arguments.val3#"  to="#arguments.val2#">     
         #arguments.val2#     
        </cfmail>
    </cffunction>
</cfcomponent>            