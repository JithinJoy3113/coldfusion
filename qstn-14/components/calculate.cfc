<cfcomponent> 
    <cffunction  name="displayImage" returnType="any"> 
        <cfargument  name="name"> 
        <cfargument  name="description"> 
        <cfargument  name="img"> 
        <cfset session.name = arguments.name>
        <cfset session.description = arguments.description>
        <cfset local.type = listLast(arguments.img,".")> 
        <cfset local.image =ExpandPath("./assets")> 
        <cffile  action="upload" destination="#local.image#" nameConflict="MakeUnique"> 
        <cfset  local.img= cffile.clientFile>  
        <cfset  local.imagePath="\#local.img#">     
        <cfset session.img = local.imagePath>
        <cfreturn local.imagePath>
    </cffunction> 

    <cffunction  name="displayDetails" returnType="any">
        <cfset local.arr = arrayNew(1)>
        <cfset arrayAppend(local.arr, session.name)>
        <cfset arrayAppend(local.arr, session.description)>
        <cfset arrayAppend(local.arr, session.img)>
        <cfreturn local.arr>
    </cffunction>
    
</cfcomponent> 