<cfcomponent>
    <cffunction  name="createTable" returnType="query">
        <cfset local.columnName = "ID,Name,email">
        <cfset local.types = "INTEGER,varchar,varchar">
        <cfset local.values = [{"ID":1,"Name":"jithin","Email":"jithinj3113@gmail.com"},
                               {"ID":2,"Name":"Paari","Email":"jithin13@gmail.com"},
                               {"ID":2,"Name":"Abhjith","Email":"jithinj@gmail.com"}]>
        <cfset local.query = queryNew(local.columnName,local.types,local.values)>
        <cfreturn local.query>
    </cffunction>
</cfcomponent>
