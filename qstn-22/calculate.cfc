<cfcomponent>
    <cffunction  name="tableDetails" returnType="array">
        <cfargument  name="data" required="true">
        <cfset local.keyList=StructKeyList(arguments.data[1])>
        <cfset local.keyList = listToArray(local.keyList)>
        <cfset local.arrayTable = ArrayNew(2)>
        <cfloop index="row" from="1" to="1">
            <cfset local.count = 1>
            <cfloop index="col" from="1" to="3">
                <cfset local.arrayTable[row][col] = "#local.keyList[local.count]#">
                <cfset local.count++>
            </cfloop>
        </cfloop>
        <cfset local.row = 2>
        <cfloop array="#arguments.data#" item="item">
            <cfset local.col = 1>
            <cfloop collection="#item#" item="key">
                <cfset local.arrayTable[row][col] = "#item[key]#">
                <cfset local.col++>
            </cfloop>
            <cfset local.row++>
        </cfloop>
        <cfreturn local.arrayTable>
    </cffunction>
</cfcomponent>