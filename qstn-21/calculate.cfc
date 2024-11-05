<cfcomponent>
    <cffunction  name="bdayMail" returnType="any">
        <cfargument  name="name">
        <cfargument  name="mailid">
        <cfargument  name="subject">
        <cfargument  name="wish">
        <cfargument  name="img">
         <cfset image =ExpandPath("./assets")>
         <cffile  action="upload" destination="#image#" nameConflict="MakeUnique">
         <cfset  img= cffile.clientFile> 
        <cfmail  from="jithinj3113@gmail.com" subject="#arguments.subject#"  to="#arguments.mailid#" 
        mimeattach="#image#/#img#">#arguments.wish#     
        </cfmail>
        <cfreturn "Successfully send">
    </cffunction>
</cfcomponent>            