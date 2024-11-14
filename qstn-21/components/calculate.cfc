<cfcomponent>
    <cffunction  name="bdayMail" returnType="any">
        <cfargument  name="name">
        <cfargument  name="mailid">
        <cfargument  name="subject">
        <cfargument  name="wish">
        <cfargument  name="img">       
        <cfset local.image =ExpandPath("./assets")>
        <cffile  action="upload" destination="#local.image#" nameConflict="MakeUnique">
        <cfset  local.img= cffile.clientFile> 
        <cfmail  from="jithinj3113@gmail.com" subject="#arguments.subject#"  to="#arguments.mailid#" 
            mimeattach="#local.image#/#local.img#">#arguments.wish#     
        </cfmail>
        <cfreturn "Successfully send">
    </cffunction>
</cfcomponent>            